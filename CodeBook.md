---
title: "CodeBook"
output: html_document
---

## Data Codebook or dictionary
Please see [UCI HAR dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) for more information about the project and data. 

## Dataset
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

## Variables
### subject

A number representing the subject being recorded performing the activity (30 total volunteers).


### Activity

Data from each subject's activity was recording, for the following types of activities:

WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING


### Calculated Variables
### Accelerometer
These represent the mean (with **.mean** suffix) and standard deviation (with **.std** suffix) recorded for the triaxial acceleration from the accelerometer.

- tBodyAcc.mean.X
- tBodyAcc.mean.Y
- tBodyAcc.mean.Z
- tBodyAcc.std.X
- tBodyAcc.std.Y
- tBodyAcc.std.Z
- tGravityAcc.mean.X
- tGravityAcc.mean.Y
- tGravityAcc.mean.Z
- tGravityAcc.std.X
- tGravityAcc.std.Y
- tGravityAcc.std.Z
- tBodyAccJerk.mean.X
- tBodyAccJerk.mean.Y
- tBodyAccJerk.mean.Z
- tBodyAccJerk.std.X
- tBodyAccJerk.std.Y
- tBodyAccJerk.std.Z
- fBodyAcc.mean.X
- fBodyAcc.mean.Y
- fBodyAcc.mean.Z
- fBodyAcc.std.X
- fBodyAcc.std.Y
- fBodyAcc.std.Z
- fBodyAccJerk.mean.X
- fBodyAccJerk.mean.Y
- fBodyAccJerk.mean.Z
- fBodyAccJerk.std.X
- fBodyAccJerk.std.Y
- fBodyAccJerk.std.Z

### Gyroscope
These represent the mean (with **.mean** suffix) and standard deviation (with **.std** suffix) recorded for the triaxial Angular velocity from the gyroscope.

- tBodyGyro.mean.X
- tBodyGyro.mean.Y
- tBodyGyro.mean.Z
- tBodyGyro.std.X
- tBodyGyro.std.Y
- tBodyGyro.std.Z
- tBodyGyroJerk.mean.X
- tBodyGyroJerk.mean.Y
- tBodyGyroJerk.mean.Z
- tBodyGyroJerk.std.X
- tBodyGyroJerk.std.Y
- tBodyGyroJerk.std.Z
- fBodyGyro.mean.X
- fBodyGyro.mean.Y
- fBodyGyro.mean.Z
- fBodyGyro.std.X
- fBodyGyro.std.Y
- fBodyGyro.std.Z

### Acceleration for a given activity
These represent the mean (with **.mean** suffix) and standard deviation (with **.std** suffix) recorded for the estimated body acceleration while performing the activity.

- tBodyAccMag.mean
- tBodyAccMag.std
- tGravityAccMag.mean
- tGravityAccMag.std
- tBodyAccJerkMag.mean
- tBodyAccJerkMag.std
- tBodyGyroMag.mean
- tBodyGyroMag.std
- tBodyGyroJerkMag.mean
- tBodyGyroJerkMag.std
- fBodyAccMag.mean
- fBodyAccMag.std
- fBodyBodyAccJerkMag.mean
- fBodyBodyAccJerkMag.std
- fBodyBodyGyroMag.mean
- fBodyBodyGyroMag.std
- fBodyBodyGyroJerkMag.mean
- fBodyBodyGyroJerkMag.std