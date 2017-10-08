###CodeBook
CodeBook.md that describes the variables, the data, and any transformations or work that you performed to clean up the data.
The cleaned and transformed data sat is called "tidyGCDData.txt".

Cleaning and transforming activities (by the script run_analysis.R):
- Merge the training and the test sets to create one data set.
- Extract only the measurements on the mean and standard deviation for each measurement.
- Use descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names.
- Take the average of each variable for each activity and each subject (so ech measurement variable has 6*30 = 180 values)

The next variables are in the new data sat "tidyGCDData.txt":

##Variables-ID's
activity (1-6)
	1= WALKING
	2= WALKING_UPSTAIRS
	3= WALKING_DOWNSTAIRS
	4= SITTING
	5= STANDING
	6= LAYING
person (test and train persons 1-30)

## Variables measurements mean

The next variables are in the tidy set, 
tBodyAccmean-X
tBodyAccmean-Y
tBodyAccmean-Z
tBodyAccstd-X
tBodyAccstd-Y
tBodyAccstd-Z
tGravityAccmean-X
tGravityAccmean-Y
tGravityAccmean-Z
tGravityAccstd-X
tGravityAccstd-Y
tGravityAccstd-Z
tBodyAccJerkmean-X
tBodyAccJerkmean-Y
tBodyAccJerkmean-Z
tBodyAccJerkstd-X
tBodyAccJerkstd-Y
tBodyAccJerkstd-Z
tBodyGyromean-X
tBodyGyromean-Y
tBodyGyromean-Z
tBodyGyrostd-X
tBodyGyrostd-Y
tBodyGyrostd-Z
tBodyGyroJerkmean-X
tBodyGyroJerkmean-Y
tBodyGyroJerkmean-Z
tBodyGyroJerkstd-X
tBodyGyroJerkstd-Y
tBodyGyroJerkstd-Z
tBodyAccMagmean
tBodyAccMagstd
tGravityAccMagmean
tGravityAccMagstd
tBodyAccJerkMagmean
tBodyAccJerkMagstd
tBodyGyroMagmean
tBodyGyroMagstd
tBodyGyroJerkMagmean
tBodyGyroJerkMagstd
fBodyAccmean-X
fBodyAccmean-Y
fBodyAccmean-Z
fBodyAccstd-X
fBodyAccstd-Y
fBodyAccstd-Z
fBodyAccmeanFreq-X
fBodyAccmeanFreq-Y
fBodyAccmeanFreq-Z
fBodyAccJerkmean-X
fBodyAccJerkmean-Y
fBodyAccJerkmean-Z
fBodyAccJerkstd-X
fBodyAccJerkstd-Y
fBodyAccJerkstd-Z
fBodyAccJerkmeanFreq-X
fBodyAccJerkmeanFreq-Y
fBodyAccJerkmeanFreq-Z
fBodyGyromean-X
fBodyGyromean-Y
fBodyGyromean-Z
fBodyGyrostd-X
fBodyGyrostd-Y
fBodyGyrostd-Z
fBodyGyromeanFreq-X
fBodyGyromeanFreq-Y
fBodyGyromeanFreq-Z
fBodyAccMagmean
fBodyAccMagstd
fBodyAccMagmeanFreq
fBodyBodyAccJerkMagmean
fBodyBodyAccJerkMagstd
fBodyBodyAccJerkMagmeanFreq
fBodyBodyGyroMagmean
fBodyBodyGyroMagstd
fBodyBodyGyroMagmeanFreq
fBodyBodyGyroJerkMagmean
fBodyBodyGyroJerkMagstd
fBodyBodyGyroJerkMagmeanFreq

