# Code Book
This file describes the data in the Tidy.txt file.

The data comes from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

# Input Data Sets:
All of the input data is provided in a zip file (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
The zip file contains a number of data sets used in run_analysis.R.  The input data sets are:
subject_test - contains subject ID's for the test group
X_test - contains the measured variables for the test group
y_test - contains the activity ID for the test group
subject_train - contains subject ID's for the training group
X_train - contains the measured variables for the training group
y_train - contains the activity ID's for the training group
features - contains the listing of measures included in the X files
activity_labels - contains the descriptive names for the six activities

# Script processing/transformations:
run_analysis.R reads in these data sets and combines the X_, y_ and subject_ files for both the test and train sets.  The resulting files are merged into one data set.  The features and activies data is also used to append descriptive variable names to the data set.

The mean and standard deviation measures are then extracted into a data set.

This data set is then transformed into a tidy data set with the mean of the variables by subject and by activity.

# Key fields in the result file:
Subject_ID                                     
Activity   

# Measurements in the result file:
Subject_ID                                        
Activity                                          
Time BodyAccelerometer-mean-X                     
Time BodyAccelerometer-mean-Y                     
Time BodyAccelerometer-mean-Z                     
Time BodyAccelerometer-std-X                      
Time BodyAccelerometer-std-Y                      
Time BodyAccelerometer-std-Z                      
Time Gravity Accelerometer-mean-X                 
Time Gravity Accelerometer-mean-Y                 
Time Gravity Accelerometer-mean-Z                 
Time Gravity Accelerometer-std-X                  
Time Gravity Accelerometer-std-Y                  
Time Gravity Accelerometer-std-Z                  
Time BodyAccelerometerJerk-mean-X                
Time BodyAccelerometerJerk-mean-Y                 
Time BodyAccelerometerJerk-mean-Z                 
Time BodyAccelerometerJerk-std-X                  
Time BodyAccelerometerJerk-std-Y                  
Time BodyAccelerometerJerk-std-Z                  
Time BodyGyroscope-mean-X                         
Time BodyGyroscope-mean-Y                         
Time BodyGyroscope-mean-Z                         
Time BodyGyroscope-std-X                          
Time BodyGyroscope-std-Y                          
Time BodyGyroscope-std-Z                          
Time BodyGyroscopeJerk-mean-X                     
Time BodyGyroscopeJerk-mean-Y                     
Time BodyGyroscopeJerk-mean-Z                     
Time BodyGyroscopeJerk-std-X                      
Time BodyGyroscopeJerk-std-Y                      
Time BodyGyroscopeJerk-std-Z                      
Time BodyAccelerometerMagnitude-mean              
Time BodyAccelerometerMagnitude-std              
Time Gravity AccelerometerMagnitude-mean          
Time Gravity AccelerometerMagnitude-std           
Time BodyAccelerometerJerkMagnitude-mean          
Time BodyAccelerometerJerkMagnitude-std           
Time BodyGyroscopeMagnitude-mean                  
Time BodyGyroscopeMagnitude-std                   
Time BodyGyroscopeJerkMagnitude-mean              
Time BodyGyroscopeJerkMagnitude-std               
Frequency BodyAccelerometer-mean-X                
Frequency BodyAccelerometer-mean-Y                
Frequency BodyAccelerometer-mean-Z                
Frequency BodyAccelerometer-std-X                 
Frequency BodyAccelerometer-std-Y                 
Frequency BodyAccelerometer-std-Z                 
Frequency BodyAccelerometer-meanFreq-X            
Frequency BodyAccelerometer-meanFreq-Y            
Frequency BodyAccelerometer-meanFreq-Z            
Frequency BodyAccelerometerJerk-mean-X            
Frequency BodyAccelerometerJerk-mean-Y            
Frequency BodyAccelerometerJerk-mean-Z            
Frequency BodyAccelerometerJerk-std-X             
Frequency BodyAccelerometerJerk-std-Y             
Frequency BodyAccelerometerJerk-std-Z             
Frequency BodyAccelerometerJerk-meanFreq-X        
Frequency BodyAccelerometerJerk-meanFreq-Y        
Frequency BodyAccelerometerJerk-meanFreq-Z        
Frequency BodyGyroscope-mean-X                    
Frequency BodyGyroscope-mean-Y                    
Frequency BodyGyroscope-mean-Z                    
Frequency BodyGyroscope-std-X                     
Frequency BodyGyroscope-std-Y                     
Frequency BodyGyroscope-std-Z                     
Frequency BodyGyroscope-meanFreq-X                
Frequency BodyGyroscope-meanFreq-Y                
Frequency BodyGyroscope-meanFreq-Z                
Frequency BodyAccelerometerMagnitude-mean         
Frequency BodyAccelerometerMagnitude-std         
Frequency BodyAccelerometerMagnitude-meanFreq     
Frequency Body AccelerometerJerkMagnitude-mean    
Frequency Body AccelerometerJerkMagnitude-std     
Frequency Body AccelerometerJerkMagnitude-meanFreq
Frequency Body GyroscopeMagnitude-mean            
Frequency Body GyroscopeMagnitude-std             
Frequency Body GyroscopeMagnitude-meanFreq        
Frequency Body GyroscopeJerkMagnitude-mean        
Frequency Body GyroscopeJerkMagnitude-std         
Frequency Body GyroscopeJerkMagnitude-meanFreq 
