library(dplyr)
library(reshape2)
library(tidyr)

datafile <- "UCI HAR Dataset"

# Read training files
train_subject <- read.table(file.path(datafile, "train", "subject_train.txt"))
train_values <- read.table(file.path(datafile, "train", "X_train.txt"))
train_activity <- read.table(file.path(datafile, "train", "Y_train.txt"))

# Read test files
test_subject <- read.table(file.path(datafile, "test", "subject_test.txt"))
test_values <- read.table(file.path(datafile, "test", "X_test.txt"))
test_activity <- read.table(file.path(datafile, "test", "Y_test.txt"))

# Read activity and features file
activity <- read.table(file.path(datafile, "activity_labels.txt"))
colnames(activity) <- c("activity_ID", "activity")
features <- read.table(file.path(datafile, "features.txt"))
colnames(features) <- c("feauture_ID", "features")

#Naming of training and test data sets
colnames(train_subject) <- "subject_ID"
colnames(train_values) <- features[,2]
colnames(train_activity) <- "activity_ID"

colnames(test_subject) <- "subject_ID"
colnames(test_values) <- features[,2]
colnames(test_activity) <- "activity_ID"

# Merge the training and test dataset into one set
totalactivity <- rbind(
  cbind(train_subject, train_values, train_activity),
  cbind(test_subject, test_values, test_activity)
)

#Extract mean and standard deviation columns
col_names <- grepl("subject_ID|activity_ID|mean|std", colnames(totalactivity))
filtered_activity <- totalactivity[,col_names]

# Descriptive activity names to name the activities in the data set
filtered_activity$activity_ID <- factor(filtered_activity$activity_ID, 
                                        levels = activity[,1], labels = activity[,2])

# Descriptive feature names
feature_colnames <- colnames(filtered_activity)
feature_colnames <- gsub("^f", "Frequency_", feature_colnames)
feature_colnames <- gsub("^t", "Time_", feature_colnames)
feature_colnames <- gsub("Acc", "Accelerometer", feature_colnames)
feature_colnames <- gsub("Gyro", "Gyroscope", feature_colnames)
feature_colnames <- gsub("Mag", "Magnitude", feature_colnames)
feature_colnames <- gsub("Freq", "Frequency", feature_colnames)
feature_colnames <- gsub("mean", "Mean", feature_colnames)
feature_colnames <- gsub("std", "StandardDeviation", feature_colnames)
feature_colnames <- gsub("BodyBody", "Body", feature_colnames)

#creates a second, independent tidy data set with the average of each variable for each activity and each subject.
summary_data <- filtered_activity %>% group_by(subject_ID, activity_ID) %>% summarise_all(mean)
