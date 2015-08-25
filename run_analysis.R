library(dplyr)

# function run_analysis()
# Reads the following ingfromation from the UCI HAR Dataset available at
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
# - subjects (identifier of which subject performed the test), 
# - activities (which activities were performed), 
# - feature information (information on features recorded/derived) and 
# - feature measurements (actual measurements)
#
# It then extracts only those features which are mean or standard deviation 
# data and then creates a tidy data set of the subject, activity and the 
# extracted measurements, with descriptive variable names
#
# From this dataset, it creates a new dataset which has the average of the
# extracted measurements, grouped by subject and activity
#
# Args:
#   dir: path to the directory containing the data (i.e., "UCI HAR Dataset")
#        For e.g., "C:\\Downloads\\UCI Har Dataset\\"
#        It defaults to the current directory
#
# Returns:
#   The data set with the average of the extracted measurements, 
#   grouped by subject and activity
#
# Sample Usage:
#   > write.table(run_analysis(), "tidyData.txt", row.names=FALSE)
#
# Pre-requisites:
#   dplyr package has to be installed already
#
run_analysis <- function(dir = "./") {

  # read the features measured
  f <- read.table(paste(dir,sep="", "features.txt"))
  
  # find the features which record standard deviation
  std <- f[grep("std", f$V2, ignore.case=FALSE),]
  
  # find the features which record mean
  m <- f[grep("mean", f$V2, ignore.case=FALSE),]
  
  # combine both standard deviation and mean 
  ss <- rbind(m, std)
  
  # order it by column number
  ss <- ss[order(ss$V1),]
  
  # read the test data for subject, activity and measurements
  test_s <- read.table(paste(dir,sep="", "test/subject_test.txt"))  # subject
  test_y <- read.table(paste(dir,sep="", "test/y_test.txt"))  # activity
  test_x <- read.table(paste(dir,sep="", "test/x_test.txt"))  # feature measurements
  
  # read the training data for subject, activity and measurements
  train_s <- read.table(paste(dir,sep="", "train/subject_train.txt"))  # subject
  train_y <- read.table(paste(dir,sep="", "train/y_train.txt"))  # activity
  train_x <- read.table(paste(dir,sep="", "train/x_train.txt"))  # feature measurements
  
  # extract the mean and standard deviation measurements from each record for test
  x_test_s <- test_x[,ss$V1]
  
  # extract the mean and standard deviation measurements from each record for train
  x_train_s <- train_x[,ss$V1]
  
  # combine test and training measurements
  y <- rbind(test_y, train_y)  # activity
  s <- rbind(test_s, train_s)  # subject
  x <- rbind(x_test_s, x_train_s)  # feature measurements
  
  # set the column names of the feature measurements as per the features file
  names(x) <- ss$V2
  
  # read the activity labels file
  a <- read.table(paste(dir,sep="", "activity_labels.txt"), stringsAsFactors = FALSE)
  
  # merge the activity data with the activity names file 
  # so that we get descriptive names of the activity
  y1 <- left_join(y, a, by="V1")
  
  # label the column names
  names(y1) <- c("ID", "Activity")  # activity id and activity name data
  names(s) <- "Subject_ID"  # subject data
  
  # combine the subject, activity name and measurements data
  tdf <- cbind(s, y1$Activity, x)
  
  # correct the column name for activity
  names(tdf)[2] <- "Activity"
  
  # convert to data frame tbl
  t <- tbl_df(tdf)
  
  # group the measurements by Subject and Activity and get their mean
  mt <- t %>% group_by(Subject_ID, Activity) %>% summarise_each(funs(mean))
  
  # return the tidy data set as a data frame
  as.data.frame(mt)

}
