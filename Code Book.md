#Code Book

##Data Collection
Data were collected from the UCI Machine learning repository found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Data Transformation
+ The data were transfarmed running the run_analysis.R script.
+ The features labels were extracted for only those items that involved mean and standard deviation (meanFrequency was omitted)
+ The activity labels were extracted.
+ The training and test data sets were extracted.
+ The subject and activity columns were added to the training data set.
+ The subject and activity columns were added to the test data set.
+ All data was merged using rbind.
+ Labels were added to the mergeddata.
+ Data was metled 
+ Final tidy data set was produced.

##Identifiers
- `subject` - The ID of the subject
- `activity` - the activiity performed by the subject and coorespdoning measurement

##Measurements
+ `tBodyAcc-mean()-X`
+ `tBodyAcc-mean()-Y`
+ `tBodyAcc-mean()-Z`
+ `tBodyAcc-std()-X`
+ `tBodyAcc-std()-Y`
+ `tBodyAcc-std()-Z`
+ `tGravityAcc-mean()-X`
+ `tGravityAcc-mean()-Y`
+ `tGravityAcc-mean()-Z`
+ `tGravityAcc-std()-X`
+ `tGravityAcc-std()-Y`
+ `tGravityAcc-std()-Z`
+ `tBodyAccJerk-mean()-X`
+ `tBodyAccJerk-mean()-Y`
+ `tBodyAccJerk-mean()-Z`
+ `tBodyAccJerk-std()-X`
+ `tBodyAccJerk-std()-Y`
+ `tBodyAccJerk-std()-Z`
+ `tBodyGyro-mean()-X`
+ `tBodyGyro-mean()-Y`
+ `tBodyGyro-mean()-Z`
+ `tBodyGyro-std()-X`
+ `tBodyGyro-std()-Y`
+ `tBodyGyro-std()-Z`
+ `tBodyGyroJerk-mean()-X`
+ `tBodyGyroJerk-mean()-Y`
+ `tBodyGyroJerk-mean()-Z`
+ `tBodyGyroJerk-std()-X`
+ `tBodyGyroJerk-std()-Y`
+ `tBodyGyroJerk-std()-Z`
+ `tBodyAccMag-mean()`
+ `tBodyAccMag-std()`
+ `tGravityAccMag-mean()`
+ `tGravityAccMag-std()`
+ `tBodyAccJerkMag-mean()`
+ `tBodyAccJerkMag-std()`
+ `tBodyGyroMag-mean()`
+ `tBodyGyroMag-std()`
+ `tBodyGyroJerkMag-mean()`
+ `tBodyGyroJerkMag-std()`
+ `fBodyAcc-mean()-X`
+ `fBodyAcc-mean()-Y`
+ `fBodyAcc-mean()-Z`
+ `fBodyAcc-std()-X`
+ `fBodyAcc-std()-Y`
+ `fBodyAcc-std()-Z`
+ `fBodyAccJerk-mean()-X`
+ `fBodyAccJerk-mean()-Y`
+ `fBodyAccJerk-mean()-Z`
+ `fBodyAccJerk-std()-X`
+ `fBodyAccJerk-std()-Y`
+ `fBodyAccJerk-std()-Z`
+ `fBodyGyro-mean()-X`
+ `fBodyGyro-mean()-Y`
+ `fBodyGyro-mean()-Z`
+ `fBodyGyro-std()-X`
+ `fBodyGyro-std()-Y`
+ `fBodyGyro-std()-Z`
+ `fBodyAccMag-mean()`
+ `fBodyAccMag-std()`
+ `fBodyBodyAccJerkMag-mean()`
+ `fBodyBodyAccJerkMag-std()`
+ `fBodyBodyGyroMag-mean()`
+ `fBodyBodyGyroMag-std()`
+ `fBodyBodyGyroJerkMag-mean()`
+ `fBodyBodyGyroJerkMag-std()`

##Activity Labels
+ `WALKING` (value 1) - subject was walking 
+ `WALKING_UPSTAIRS`(value 2) - subject was walking up a staircase 
+ `WALKING_DOWNSTAIRS` (value 3) - subject was walking down a staircase
+ `SITTING` (value 4) - subject was sitting 
+ `STANDING` (value 5) - subject was standing 
+ `LAYING` (value 6) - subject was laying down 
