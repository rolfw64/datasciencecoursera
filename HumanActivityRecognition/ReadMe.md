# READ ME
Human Activity Recognition Using Smartphones Dataset
Transformation of originanl data set by Rolf Widmer
for original data sources see www.smartlab.ws
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# SCRIPTS
## run_analysis.R: reads original training and test data sets and transforms them as follows:

1. Reads the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Replaces activity codes with descriptive activity labels to name the activities 
4. Replaces variable names with feature names
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
6. save data sets to files dataset1.csv and dataset2.csv
7. Remove temporary variables
