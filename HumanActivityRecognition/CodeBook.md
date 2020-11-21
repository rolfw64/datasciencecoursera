
## Summary
Human Activity Recognition Using Smartphones Dataset  
Transformation of originanl data set by Rolf Widmer  
for original data sources see www.smartlab.ws  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


## DataSet1
Rows:
    Each row represents a measurement; measurements are taken from both training and 
    test data sets.

Variables:
    Subject: An identifier of the subject who carried out the experiment
    Activity: Activity label (one out of set: 
        STANDING, SITTING, LAYING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS)
    Features (66):
        Feature variables reflect mean and standard deviations (std) for these features:
        (details see file "features_info.txt" in the original data set)
        tBodyAcc-XYZ
        tGravityAcc-XYZ
        tBodyAccJerk-XYZ
        tBodyGyro-XYZ
        tBodyGyroJerk-XYZ
        tBodyAccMag
        tGravityAccMag
        tBodyAccJerkMag
        tBodyGyroMag
        tBodyGyroJerkMag
        fBodyAcc-XYZ
        fBodyAccJerk-XYZ
        fBodyGyro-XYZ
        fBodyAccMag
        fBodyAccJerkMag
        fBodyGyroMag
        fBodyGyroJerkMag

## DataSet2

DataSet2 has the same variables as DataSet1. While DataSet1 contains 1 row per measurement, DataSet2 aggregates DataSet1 by showing a mean measurement per subject and activity.

