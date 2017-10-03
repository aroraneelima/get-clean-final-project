# Code Book
This file describes the data in the Tidy.txt file.

The data comes from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The features selected for this dataset come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
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

The data set, Tidy.txt, includes these variables with the following, which were estimated from these signals are: 
mean(): Mean value
std(): Standard deviation

# Key fields in the file:
Subject_ID                                     
Activity   

# Measurements in the file:
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
