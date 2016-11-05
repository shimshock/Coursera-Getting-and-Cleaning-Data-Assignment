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
featurenames<-features[,2]

##select activit lables
activities<- read.table("activity_labels.txt")
activitynames<-activities[,2]

##Select the data
##load features data
train<-read.table("train/X_train.txt")[featurenames]
##load activities data
trainactivities<- read.table("train/y_train.txt")
##load subject data
trainsubjects<- read.table("train/subject_train.txt")
##combine the data
traincombined<- cbind(trainsubjects,trainactivities,train)

##load the test data
test <- read.table("test/X_test.txt")[featurenames]
##load test activities
testActivities <- read.table("test/Y_test.txt")
##load test subjects
testSubjects <- read.table("test/subject_test.txt")
##combine the data
testcombined <- cbind(testSubjects, testActivities, test)


##merge the data
datamerge<-rbind(traincombined,testcombined)

##add the labels
colnames(datamerge)<-c("subject","activity",as.character(featurenames))
datamerge$activity <- factor(datamerge$activity, levels = activities[,1], labels = activitynames)
datamerge$subject <- as.factor(datamerge$subject)

##melt data together
finaldata <- melt(datamerge, id = c("subject", "activity"))
finaldata_mean_std <- dcast(finaldata, subject + activity ~ variable, mean)

##tiday data set
write.table(finaldata_mean_std, "tidy.txt", row.names = FALSE, quote = FALSE)

