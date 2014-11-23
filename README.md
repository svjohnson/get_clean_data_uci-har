---
title: "README"
output: html_document
---

## Information and Source
This script, **run_analysis.R**, creates a tidy data set of mean and standard deviation from the [UCI HAR dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

# Data dictionary
In addition to the UCI source, please also see the **CodeBbook** file for descriptions on the data.

## Script
1. The training and test data is loaded in, as well as the column and activity labels (called "activityid" within the script)
2. Merges the training and the test sets to create one data set.
3. Extracts only the measurements on the mean and standard deviation for each measurement.
        The entire dataset is subsetted to extract only features that are a function of mean or standard deviation. 
4. Uses descriptive activity names to name the activities in the data set.
        The "activityids" are replaced with the descriptive labels loaded from the **activity_labels.txt** file.     
5. The final tidy dataset is then exported as tidy-data.txt in the working directory.
