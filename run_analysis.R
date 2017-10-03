# run_analysis.R
# Created 2 October 2017
# Created By Lee Wittschen
#
# This script was written for the "Getting and Cleaning Data Course Project" in Coursera.
#
#-------------------------------------------------------------------------------------------
# Section One
# Merges the Test and Training sets into a single data set.  This will be accomplished in a
# sequence of steps.
#
# First, download the data zip file from the designated URL and unzip
#
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if (!file.exists("DataSet.zip")){
  url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(url, destfile="DataSet.zip", mode="wb")
}
# unzip the zip file to the data directory
unzip("DataSet.zip", exdir="./data")
#
# Next, read in the data sets and assign column names
#
# Read in the features data:
features <- read.table("./data/UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])
# Read in the activity labels:
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
activity_labels[,2] <- as.character(activity_labels[,2])
colnames(activity_labels) <- c("Activity ID","Activity")
# Read in the training data:
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", sep=" ")
colnames(subject_train) <- "Subject ID"
X_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
colnames(X_train) <- features[,2]
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
colnames(y_train) <- "Activity ID"
# Read in the test data:
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", sep=" ")
colnames(subject_test) <- "Subject ID"
X_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
colnames(X_test) <- features[,2]
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt", sep=" ")
colnames(y_test) <- "Activity ID"
#
# The final step is to merge the data sets into one:
#
merge_train <- cbind(subject_train, y_train, X_train)
merge_test <- cbind(subject_test, y_test, X_test)
final_data <- rbind(merge_train, merge_test)
#
#-------------------------------------------------------------------------------------------
# Section Two
# Extract only the measurements on the mean and standard deviation for each measurement
#
# Pull out the column names of the final data set
column_names <- colnames(final_data)
# Create logical vector identifyin column names with 'mean' and 'std'
mean_std_col <- (grepl("Activity ID", column_names) | 
                   grepl("Subject ID", column_names) | 
                   grepl("mean..", column_names) | 
                   grepl("std..", column_names))
# Use logical vector to subset only the columns with mean and standard deviation
mean_std_data <- final_data[ , mean_std_col==TRUE]
#
#-------------------------------------------------------------------------------------------
# Section Three
# Use descriptive activity names to name the activities, using the activity_labels data
#
mean_std_data_2 <- merge(mean_std_data, activity_labels)[-1]
#
#-------------------------------------------------------------------------------------------
# Section Four
# Appropriately label the final data set with descriptive variable names
#
names(mean_std_data_2) <- gsub("\\()","", names(mean_std_data_2))
names(mean_std_data_2) <- gsub("^t","Time ", names(mean_std_data_2))
names(mean_std_data_2) <- gsub("^f","Frequency ", names(mean_std_data_2))
names(mean_std_data_2) <- gsub("BodyBody", "Body ", names(mean_std_data_2))
names(mean_std_data_2) <- gsub("Acc", "Accelerometer", names(mean_std_data_2))
names(mean_std_data_2) <- gsub("Gyro", "Gyroscope", names(mean_std_data_2))
names(mean_std_data_2) <- gsub("Mag", "Magnitude", names(mean_std_data_2))
names(mean_std_data_2) <- gsub("Gravity", "Gravity ", names(mean_std_data_2))
#
#-------------------------------------------------------------------------------------------
# Section Five
# Use the mean/std data set and create an independent tidy data set with the average of each
# variable for each activity for each subject
#
tidy_data <- aggregate(mean_std_data_2[,2:80], 
                  list(Subject_ID=mean_std_data_2$`Subject ID`,
                       Activity=mean_std_data_2$`Activity`), mean)
tidy_data <- tidy_data[order(tidy_data$Subject_ID, tidy_data$Activity),]
# Write the tidy data set to a flat file
write.table(tidy_data, "Tidy.txt", row.name=FALSE)


