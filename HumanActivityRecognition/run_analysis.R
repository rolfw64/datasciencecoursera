library(dplyr)

n <- 561

#------------------------------------------------------------------------------------------------
# task 1: Merges the training and the test sets to create one data set
#------------------------------------------------------------------------------------------------

# test set 
test <- data.frame(matrix(data=scan("test/X_test.txt"), ncol=n))
train <- data.frame(matrix(data=scan("train/X_train.txt"), ncol=n))
x <- rbind(test, train)

#------------------------------------------------------------------------------------------------
# task 2: Extracts only the measurements on the mean and standard deviation for each measurement
#------------------------------------------------------------------------------------------------
# Read features
features <- read.csv("features.txt", sep=" ", header=F)
colnames(features) <- c("ID", "Feature")

# filter
selectedFeatures <- c(grep("mean\\(", features$Feature), grep("std\\(", features$Feature))
x <- x[, selectedFeatures]

#------------------------------------------------------------------------------------------------
# task 3: Uses descriptive activity names to name the activities in the data set
#------------------------------------------------------------------------------------------------
labels <- rbind(read.csv("test/Y_test.txt", sep=" ", header=F), read.csv("train/Y_train.txt", sep=" ", header=F))
colnames(labels) <- "ID"

activities <- read.csv("activity_labels.txt", sep=" ", header=F)
colnames(activities) <- c("ID", "Activity")

trans <- activities$Activity
names(trans) <- activities$ID

labels$Activity <- trans[ as.character(labels$ID) ]
x <- cbind(labels$Activity, x)

#------------------------------------------------------------------------------------------------
# task 4: Appropriately labels the data set with descriptive variable names
#------------------------------------------------------------------------------------------------
colnames(x) <- c("Activity", as.character(features[selectedFeatures, "Feature"]))

#------------------------------------------------------------------------------------------------
# task 5: creates independent tidy data set with the average of each variable for each activity and each subject.
#------------------------------------------------------------------------------------------------
# read subjects
subjects <- rbind(read.csv("test/subject_test.txt", header=F), read.csv("train/subject_train.txt", header=F))
x <- cbind(subjects, x)
colnames(x)[1] <- "Subject"

y <- group_by(x, Subject, Activity) %>%
    summarise_all(mean)


#------------------------------------------------------------------------------------------------
# Save files
#------------------------------------------------------------------------------------------------
write.table(x, "DataSet1.txt", row.name=FALSE)
write.table(y, "DataSet2.txt", row.name=FALSE)

#------------------------------------------------------------------------------------------------
# Housekeeping
#------------------------------------------------------------------------------------------------
remove(activities, features, labels, subjects, test, train, n, selectedFeatures, trans)
