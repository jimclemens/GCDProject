		
##Coursera "Getting and Cleaning Data" class project Data Dictionary	
####Original dataset comes from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip	
####Refer to original dataset documentation for detailed description of data source and gathering process.	
	
>Original License:	
>	
>========	
>	
>Use of this dataset in publications must be acknowledged by referencing the following publication [1] 	
>[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 	
>Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector	
>Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012	
>This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors 	
>or their institutions for its use or misuse. Any commercial use is prohibited.	
>Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.	
		
		
###Column	Variable Name	Definition

1	activity	                Activity undertaken during measurements. 6 values; descriptive names given in values.

2	subject_num	              Subject number. Ranges from 1 to 30

3	tbodyacc_mean_x	          Mean of tBodyAcc-mean()-X from original dataset

4	tbodyacc_mean_y	          Mean of tBodyAcc-mean()-Y from original dataset

5	tbodyacc_mean_z	          Mean of tBodyAcc-mean()-Z from original dataset

6	tbodyacc_std_x	          Mean of tBodyAcc-std()-X from original dataset

7	tbodyacc_std_y	          Mean of tBodyAcc-std()-Y from original dataset

8	tbodyacc_std_z	          Mean of tBodyAcc-std()-Z from original dataset

9	tgravityacc_mean_x	      Mean of tGravityAcc-mean()-X from original dataset

10	tgravityacc_mean_y	    Mean of tGravityAcc-mean()-Y from original dataset

11	tgravityacc_mean_z	    Mean of tGravityAcc-mean()-Z from original dataset

12	tgravityacc_std_x	      Mean of tGravityAcc-std()-X from original dataset

13	tgravityacc_std_y	      Mean of tGravityAcc-std()-Y from original dataset

14	tgravityacc_std_z	      Mean of tGravityAcc-std()-Z from original dataset

15	tbodyaccjerk_mean_x	    Mean of tBodyAccJerk-mean()-X from original dataset

16	tbodyaccjerk_mean_y	    Mean of tBodyAccJerk-mean()-Y from original dataset

17	tbodyaccjerk_mean_z	    Mean of tBodyAccJerk-mean()-Z from original dataset

18	tbodyaccjerk_std_x	    Mean of tBodyAccJerk-std()-X from original dataset

19	tbodyaccjerk_std_y	    Mean of tBodyAccJerk-std()-Y from original dataset

20	tbodyaccjerk_std_z	    Mean of tBodyAccJerk-std()-Z from original dataset

21	tbodygyro_mean_x	      Mean of tBodyGyro-mean()-X from original dataset

22	tbodygyro_mean_y	      Mean of tBodyGyro-mean()-Y from original dataset

23	tbodygyro_mean_z	      Mean of tBodyGyro-mean()-Z from original dataset

24	tbodygyro_std_x	        Mean of tBodyGyro-std()-X from original dataset

25	tbodygyro_std_y	        Mean of tBodyGyro-std()-Y from original dataset

26	tbodygyro_std_z	        Mean of tBodyGyro-std()-Z from original dataset

27	tbodygyrojerk_mean_x	  Mean of tBodyGyroJerk-mean()-X from original dataset

28	tbodygyrojerk_mean_y	  Mean of tBodyGyroJerk-mean()-Y from original dataset

29	tbodygyrojerk_mean_z	  Mean of tBodyGyroJerk-mean()-Z from original dataset

30	tbodygyrojerk_std_x	    Mean of tBodyGyroJerk-std()-X from original dataset

31	tbodygyrojerk_std_y	    Mean of tBodyGyroJerk-std()-Y from original dataset

32	tbodygyrojerk_std_z	    Mean of tBodyGyroJerk-std()-Z from original dataset

33	tbodyaccmag_mean	      Mean of  tBodyAccMag-mean() from original dataset

34	tbodyaccmag_std	        Mean of tBodyAccMag-std() from original dataset

35	tgravityaccmag_mean	    Mean of tGravityAccMag-mean() from original dataset

36	tgravityaccmag_std	    Mean of tGravityAccMag-std() from original dataset

37	tbodyaccjerkmag_mean	  Mean of tBodyAccJerkMag-mean() from original dataset

38	tbodyaccjerkmag_std	    Mean of tBodyAccJerkMag-std() from original dataset

39	tbodygyromag_mean	      Mean of tBodyGyroMag-mean() from original dataset

40	tbodygyromag_std	      Mean of tBodyGyroMag-std() from original dataset

41	tbodygyrojerkmag_mean  	Mean of tBodyGyroJerkMag-mean() from original dataset

42	tbodygyrojerkmag_std  	Mean of tBodyGyroJerkMag-std() from original dataset

43	fbodyacc_mean_x	        Mean of fBodyAcc-mean()-X from original dataset

44	fbodyacc_mean_y	        Mean of fBodyAcc-mean()-Y from original dataset

45	fbodyacc_mean_z	        Mean of fBodyAcc-mean()-Z from original dataset

46	fbodyacc_std_x	        Mean of fBodyAcc-std()-X from original dataset

47	fbodyacc_std_y	        Mean of fBodyAcc-std()-X from original dataset

48	fbodyacc_std_z	        Mean of fBodyAcc-std()-X from original dataset

49	fbodyacc_meanfreq_x	    Mean of fBodyAcc-meanFreq()-X from original dataset

50	fbodyacc_meanfreq_y	    Mean of fBodyAcc-meanFreq()-Y from original dataset

51	fbodyacc_meanfreq_z	    Mean of fBodyAcc-meanFreq()-Z from original dataset

52	fbodyaccjerk_mean_x	    Mean of fBodyAccJerk-mean()-X from original dataset

53	fbodyaccjerk_mean_y	    Mean of fBodyAccJerk-mean()-Y from original dataset

54	fbodyaccjerk_mean_z	    Mean of fBodyAccJerk-mean()-Z from original dataset

55	fbodyaccjerk_std_x	    Mean of fBodyAccJerk-std()-X from original dataset

56	fbodyaccjerk_std_y	    Mean of fBodyAccJerk-std()-Y from original dataset

57	fbodyaccjerk_std_z	    Mean of fBodyAccJerk-std()-Z from original dataset

58	fbodyaccjerk_meanfreq_x	Mean of fBodyAccJerk-meanFreq()-X from original dataset

59	fbodyaccjerk_meanfreq_y	Mean of fBodyAccJerk-meanFreq()-Y from original dataset

60	fbodyaccjerk_meanfreq_z	Mean of fBodyAccJerk-meanFreq()-Z from original dataset

61	fbodygyro_mean_x	      Mean of fBodyGyro-mean()-X from original dataset

62	fbodygyro_mean_y      	Mean of fBodyGyro-mean()-Y from original dataset

63	fbodygyro_mean_z	      Mean of fBodyGyro-mean()-Z from original dataset

64	fbodygyro_std_x	        Mean of fBodyGyro-std()-X from original dataset

65	fbodygyro_std_y	        Mean of fBodyGyro-std()-Y from original dataset

66	fbodygyro_std_z	        Mean of fBodyGyro-std()-Z from original dataset

67	fbodygyro_meanfreq_x	  Mean of fBodyGyro-meanFreq()-X from original dataset

68	fbodygyro_meanfreq_y	  Mean of fBodyGyro-meanFreq()-Y from original dataset

69	fbodygyro_meanfreq_z	  Mean of fBodyGyro-meanFreq()-Z from original dataset

70	fbodyaccmag_mean      	Mean of fBodyAccMag-mean() from original dataset

71	fbodyaccmag_std	        Mean of fBodyAccMag-std() from original dataset

72	fbodyaccmag_meanfreq	  Mean of fBodyAccMag-meanFreq() from original dataset

73	fbodybodyaccjerkmag_mean      Mean of fBodyBodyAccJerkMag-mean() from original dataset

74	fbodybodyaccjerkmag_std	      Mean of fBodyBodyAccJerkMag-std() from original dataset

75	fbodybodyaccjerkmag_meanfreq	Mean of fBodyBodyAccJerkMag-meanFreq() from original dataset

76	fbodybodygyromag_mean	        Mean of fBodyBodyGyroMag-mean() from original dataset

77	fbodybodygyromag_std	        Mean of fBodyBodyGyroMag-std() from original dataset

78	fbodybodygyromag_meanfreq	    Mean of fBodyBodyGyroMag-meanFreq() from original dataset

79	fbodybodygyrojerkmag_mean	    Mean of fBodyBodyGyroJerkMag-mean() from original dataset

80	fbodybodygyrojerkmag_std	    Mean of fBodyBodyGyroJerkMag-std() from original dataset

81	fbodybodygyrojerkmag_meanfreq	Mean of fBodyBodyGyroJerkMag-meanFreq() from original dataset

82	angletbodyaccmean_gravity	    Mean of angle(tBodyAccMean,gravity) from original dataset

83	angletbodyaccjerkmean_gravitymean	    Mean of angle(tBodyAccJerkMean),gravityMean) from original dataset

84	angletbodygyromean_gravitymean	      Mean of angle(tBodyGyroMean,gravityMean) from original dataset

85	angletbodygyrojerkmean_gravitymean	  Mean of angle(tBodyGyroJerkMean,gravityMean) from original dataset

86	anglex_gravitymean	    Mean of angle(X,gravityMean) from original dataset

87	angley_gravitymean	    Mean of angle(Y,gravityMean) from original dataset

88	anglez_gravitymean	    Mean of angle(Z,gravityMean) from original dataset
