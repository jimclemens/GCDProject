# GCDProject, Jim Clemens, 2015.04.18

## Assignment
See the R code comments for a restatement of the assignment

## Source Data
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Methodology
Comments in the R code give a detailed overview of the steps undertaken. High level,
the activity and subject values are bound to their related datasets. Then the datasets
are combined using cbind to create the complete set of observations.

The variable labels provided in the original dataset do not conform to stated standards
from the course, so they are made lowercase, the superfluous "()" are removed and dashes
are changed to underscores. Columns with "std" or "mean" in the name are selected and a 
subset of the full dataset is created.

Activity names are assigned to the activity codes using factor() so they are appropriately
descriptive to the user. 

Two new datasets are then created. The first is the mean of the variable observations by
subject. The second is the mean of the variable observations by activity. A column is added
to each with NA values (the activity column for the subject observations, and the subject
column for the activity observations). This allows the two datasets to be combined using rbind
into a single tidy dataset (see Hadley Wickham's guidance on tidy data at 
http://vita.had.co.nz/papers/tidy-data.pdf. This dataset is considered tidy because
each computed mean is attached to either a subject or an activity (i.e. there are rows for each).
The alternative (not tidy) would be to create an observation_type variable with values of either
"subject" or "activity" and another column with the "subject or activity" number. This latter column
would be the issue: it could contain data of type "subject" or of type "activity". I would not 
consider this tidy.

# Code Book
Stored in the repo as CodeBook.md
