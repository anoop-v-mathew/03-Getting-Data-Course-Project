# Codebook

##Background
This dataset is processed from the [raw dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "UCI Samsung HAR Dataset") collected during the [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) experimental study.

##Experimental design and background
From the raw dataset codebook:

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

> For each record it is provided:

> - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

##Raw Data
From the raw dataset codebook:

> The dataset includes the following files:

> - 'README.txt'

> - 'features\_info.txt': Shows information about the variables used on the feature vector.

> - 'features.txt': List of all features.

> - 'activity\_labels.txt': Links the class labels with their activity name.

> - 'train/X\_train.txt': Training set.

> - 'train/y\_train.txt': Training labels.

> - 'test/X\_test.txt': Test set.

> - 'test/y\_test.txt': Test labels.

> The following files are available for the train and test data. Their descriptions are equivalent. 

> - 'train/subject\_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

> - 'train/Inertial Signals/total\_acc\_x\_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total\_acc\_x\_train.txt' and 'total\_acc\_z\_train.txt' files for the Y and Z axis. 

> - 'train/Inertial Signals/body\_acc\_x\_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

> - 'train/Inertial Signals/body\_gyro\_x\_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

> Notes: 

> - Features are normalized and bounded within [-1,1].
> - Each feature vector is a row on the text file.

##Processed data
Processed data contains the average of the mean and standard deviation measurements grouped by the subject (identifier of the person who performed the experiment) and the activity (performed by the subject). Details of the variables are below

* Subject_ID - Identifier of the person who performed the experiment                      
* Activity - Name of activity performed by subject (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, or LAYING)        
* Averages of Mean and Standard Deviation measurements as follows (Note that measurements are normalized and bounded within [-1,1])              
  * tBodyAcc-mean()-X               
  * tBodyAcc-mean()-Y              
  * tBodyAcc-mean()-Z               
  * tBodyAcc-std()-X               
  * tBodyAcc-std()-Y                
  * tBodyAcc-std()-Z               
  * tGravityAcc-mean()-X            
  * tGravityAcc-mean()-Y           
  * tGravityAcc-mean()-Z            
  * tGravityAcc-std()-X            
  * tGravityAcc-std()-Y             
  * tGravityAcc-std()-Z            
  * tBodyAccJerk-mean()-X           
  * tBodyAccJerk-mean()-Y          
  * tBodyAccJerk-mean()-Z           
  * tBodyAccJerk-std()-X           
  * tBodyAccJerk-std()-Y            
  * tBodyAccJerk-std()-Z           
  * tBodyGyro-mean()-X              
  * tBodyGyro-mean()-Y             
  * tBodyGyro-mean()-Z              
  * tBodyGyro-std()-X              
  * tBodyGyro-std()-Y               
  * tBodyGyro-std()-Z              
  * tBodyGyroJerk-mean()-X          
  * tBodyGyroJerk-mean()-Y         
  * tBodyGyroJerk-mean()-Z          
  * tBodyGyroJerk-std()-X          
  * tBodyGyroJerk-std()-Y           
  * tBodyGyroJerk-std()-Z          
  * tBodyAccMag-mean()              
  * tBodyAccMag-std()              
  * tGravityAccMag-mean()           
  * tGravityAccMag-std()           
  * tBodyAccJerkMag-mean()          
  * tBodyAccJerkMag-std()          
  * tBodyGyroMag-mean()             
  * tBodyGyroMag-std()             
  * tBodyGyroJerkMag-mean()         
  * tBodyGyroJerkMag-std()         
  * fBodyAcc-mean()-X               
  * fBodyAcc-mean()-Y              
  * fBodyAcc-mean()-Z               
  * fBodyAcc-std()-X               
  * fBodyAcc-std()-Y                
  * fBodyAcc-std()-Z               
  * fBodyAcc-meanFreq()-X           
  * fBodyAcc-meanFreq()-Y          
  * fBodyAcc-meanFreq()-Z           
  * fBodyAccJerk-mean()-X          
  * fBodyAccJerk-mean()-Y           
  * fBodyAccJerk-mean()-Z          
  * fBodyAccJerk-std()-X            
  * fBodyAccJerk-std()-Y           
  * fBodyAccJerk-std()-Z            
  * fBodyAccJerk-meanFreq()-X      
  * fBodyAccJerk-meanFreq()-Y       
  * fBodyAccJerk-meanFreq()-Z      
  * fBodyGyro-mean()-X              
  * fBodyGyro-mean()-Y             
  * fBodyGyro-mean()-Z              
  * fBodyGyro-std()-X              
  * fBodyGyro-std()-Y               
  * fBodyGyro-std()-Z              
  * fBodyGyro-meanFreq()-X          
  * fBodyGyro-meanFreq()-Y         
  * fBodyGyro-meanFreq()-Z          
  * fBodyAccMag-mean()             
  * fBodyAccMag-std()               
  * fBodyAccMag-meanFreq()         
  * fBodyBodyAccJerkMag-mean()      
  * fBodyBodyAccJerkMag-std()      
  * fBodyBodyAccJerkMag-meanFreq()  
  * fBodyBodyGyroMag-mean()        
  * fBodyBodyGyroMag-std()          
  * fBodyBodyGyroMag-meanFreq()    
  * fBodyBodyGyroJerkMag-mean()     
  * fBodyBodyGyroJerkMag-std()     
  * fBodyBodyGyroJerkMag-meanFreq()
* In the above measurements
  * t refers to time
  * f refers to Fourier Transform
  * X,Y, Z refer to the three axes of movement
  * Acc refers to Accelerometer (acceleration)
  * Gyro refers to Gyroscope (angular velocity)
  * Mag refers to Magnitude of signals calculated using Euclidean norm
  * Jerk refers to jerk signals derived in time from acceleration and angular velocity 

##Analysis Script
Please see [run_analysis()](run_analysis.R) and [ReadMe.md](README.md) for the script and the explanation of the script respectively
