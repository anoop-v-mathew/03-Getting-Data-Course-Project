# 03-Getting-Data-Course-Project
Course project of Getting and Cleaning Data course in Coursera

## function run_analysis()

Reads the following information from the [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "Samsung UCI HAR Dataset")

- subjects (identifier of which subject performed the test), 
- activities (which activities were performed), 
- feature information (information on features recorded/derived) and 
- feature measurements (actual measurements)

It then extracts only those features which are mean or standard deviation 
data and then creates a tidy data set of the subject, activity and the 
extracted measurements, with descriptive variable names

From this dataset, it creates a new dataset which has the average of the
extracted measurements, grouped by subject and activity

### Args:
  dir: path to the directory containing the data (i.e., "UCI HAR Dataset"). 
  For e.g., ```"C:\\Downloads\\UCI Har Dataset\\"```  
       It defaults to the current directory  

### Returns:
  The data set with the average of the extracted measurements, grouped by subject and activity  
  See the [Codebook](Codebook.md) for more information on the returned dataset

### Sample Usage:
  ```> write.table(run_analysis(), "tidyData.txt", row.names=FALSE)```  
  ```> write.table(run_analysis("C:\\Downloads\\UCI Har Dataset\\"), "tidyData.txt", row.names=FALSE)``` 

### Pre-requisites:
  dplyr package has to be installed already  
  
### Source code
  [run_analysis()](run_analysis.R)
