## You should create one R script called run_analysis.R that does the following.
##
## Merges the training and the test sets to create one data set.
## Extracts only the measurements on the mean and standard deviation for each measurement.
## Uses descriptive activity names to name the activities in the data set
## Appropriately labels the data set with descriptive variable names.
## From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

week4file<-"getfile.zip"

## Download and unzip the dataset:
if (!file.exists(week4file)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL, week4file)
}  
if (!file.exists("UCI HAR Dataset")) { 
  unzip(week4file) 
}

##Select only mean and std from the features
features<- read.table("features.txt")
features<- features[grep("(.mean.|.std.)",features$V2),]
##Remove the meanFrequency values
features<- features[grep(".meanF.",features$V2, invert=TRUE),]

