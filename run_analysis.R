
## 03 Get Clean Data
## Course Project
## cleaning UCI.edu dataset HAR data

# information on the data can be found at:
# http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

library(reshape2)
library(plyr)

# where the data will be downloaded if not there
getwd()
directory = "./getdata-project-files-UCI-HAR-Dataset"
# check to see if the data is loaded, and it will download it
if(!file.exists(directory)) { 
        print("downloading and unzipping file")
        dir.create(directory)
        fileURL = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 
        file = "getdata-projectfiles-UCI HAR Dataset.zip"
        download.file(fileURL, destfile=file)
        unzip(file) 
        print("file is unzipped")
        directory = "./UCI-HAR-Dataset"
        setwd(directory)
} else {
        print("file is already unzipped")
        setwd(directory)
}

#creates a list of files in case you need to view later
files_full = list.files(path = ".", full.names=TRUE, recursive = TRUE, include.dirs=TRUE) 

activities = read.table("activity_labels.txt", col.names = c("id", "activity"), 
        as.is = TRUE)
features = read.table("features.txt", col.names = c("id", "feature"), 
        as.is = TRUE)

# this will create the test data table
test_uci_df = data.frame(
       read.table("test/subject_test.txt", col.names = "subject"), 
       read.table("test/y_test.txt", col.names = "activityid"), 
       read.table("test/X_test.txt", col.names = features$feature))

# this will create the training data table
train_uci_df = data.frame(
       read.table("train/subject_train.txt", col.names = "subject"),
       read.table("train/y_train.txt", col.names = "activityid"),
       read.table("train/X_train.txt", col.names = features$feature))

uci_df = rbind(test_uci_df, train_uci_df)
uci_df = merge(uci_df, activities, by.x = "activityid",
       by.y = "id", sort = FALSE)

# removing variables here. keeping only mean and standard deviation of each variable
uci_df = uci_df[, c("subject", "activity", colnames(uci_df)
        [grep('(mean|std)\\b', colnames(uci_df))]
        ) ]
# converting the dataset for tidy format, using reshape2 package.
uci_df_tidy <- dcast(melt(uci_df, id = c("subject", "activity")),
        subject + activity ~ variable, mean) 

# now, write a table of the output and save a file in text format
write.table(uci_df_tidy, "uci-tidy-data.txt", row.names = FALSE)

