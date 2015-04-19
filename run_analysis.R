##
## Coursera "Getting and Cleaning Data" Course Project
## Jim Clemens, 2015.04.17
##
## Project Instructions
##
## Using these datasets:
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
##
## You should create one R script called run_analysis.R that does the following. 
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set 
##    with the average of each variable for each activity and each subject.
##
## The assignment assumes that the datafiles are dowloaded to the working directory, which
## has already been done in this case.
##
library(dplyr)
library(reshape2)
## Read in the training and test datasets
traindata <- read.table("./train/X_train.txt")
trainsub <- read.table("./train/subject_train.txt")
trainact <- read.table("./train/y_train.txt")
testdata <- read.table("./test/X_test.txt")
testsub <- read.table("./test/subject_test.txt")
testact <- read.table("./test/y_test.txt")
##
## Add the subjectd numbers and activities to the dataframes
traindata <- cbind(trainact, traindata)
traindata <- cbind(trainsub, traindata)
testdata <- cbind(testact, testdata)
testdata <- cbind(testsub, testdata)
##
## Now merge the two datasets into a single frame
alldata <- rbind(traindata, testdata)
##
## The variable labels are in "features.txt". Remove the parantheses, convert names
## to lowercase and replace "-" with "_" to meet variable name standards. These new
## variable labels (for the columns that remain after selection below) are documented
## in the codebook which accompanies this script.
varnames <- read.table("./features.txt")
varnames <- as.vector(varnames[,2])
varnames <- tolower(varnames)
varnames <- gsub("\\(","",varnames)
varnames <- gsub("\\)","",varnames)
varnames <- gsub("-","_",varnames)
varnames <- gsub("\\,","_",varnames)
colnames(alldata) <- c("subject_num", "activity", varnames)
##
## Select the columns that contain "mean" or "std" along with the subject and activity
meanstd <- alldata[,c(1,2,grep("mean|std", colnames(alldata)))]
##
## Convert the activities to a descriptive name by assigning factors
activities <- c("Walking", "Walking_Upstairs", "Walking_Downstairs", "Sitting", "Standing", "Laying")
alldata$activity <- factor(alldata$activity, levels = 1:6, labels = activities)
##
## Create a new dataset with just the means of each variable by activity and subject.
## This dataset conforms to Hadley Wickham's definition of tidy data
## (http://vita.had.co.nz/papers/tidy-data.pdf) as a wide dataset with subject
## and activity as variables (columns). The dataset could also be cast as a narrow dataset
## (see David Hood discussion at https://class.coursera.org/getdata-013/forum/thread?thread_id=31).
##
## First melt the dataset by both the subject and activity so both are available for summary
meltset <- melt(meanstd, c(1,2))
subjsum <- dcast(meltset,subject_num ~ variable,mean)
actsum <- dcast(meltset,activity ~ variable, mean)
## add an activity column to subjsum[1] with value NA. Add a subject column to actsum[2]
## with value NA. Then the dataframes can be bound as a tidy dataset
subjsum <- cbind(NA, subjsum)
names(subjsum)[1] <- "activity"
actsum <- cbind(actsum[1],NA,actsum[2:87])
names(actsum)[2] <- "subject_num"
sumset <- rbind(subjsum, actsum)
## Create an output file using write.table and row.name = FALSE
write.table(sumset, file = "./summarytable.txt",row.names = FALSE)
sumset
