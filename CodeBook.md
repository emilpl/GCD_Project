Code book for the GCD_Project

The dataset presents average values of mean (sufix Mean) and standard deviation (sufix StDev) 
values of the accelerometer and gyroscope 3-axial raw signal measurements. The measurements 
were acquired from 30 subjects during 6 different activities. Altogether there were 10299 
measurements (each subject had around 60 measurements per activity) with 561 variables for 
each measurement including raw and calculated values. However, this project is focused on 86 
variables containing mean and standard deviation values of measurements. 
The average values of the selected 86 variables in the table are listed for each activity 
of each subject. Therefore, each subject has average values distributed in six rows of the 
table (one row per activity).

The base time domain signals (prefix 'time' to denote time) used to calclulate mean, stdev and 
average values were captured at a constant rate of 50 Hz. Then they were filtered using a 
median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz 
to remove noise. The acceleration signal was separated into body and gravity acceleration 
signals (timeBodyAcc-Mean/StDev-XYZ and timeGravityAccMean-XYZ) using another low pass 
Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to 
obtain Jerk signals followed by determining their average mean and standard deviation 
(timeBodyAccJerk-Mean/StDev-XYZ and timeBodyGyroJerk-Mean/StDev-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean 
norm (timeBodyAccMag-Mean/StDev, timeGravityAccMag-Mean/StDev, timeBodyAccJerkMag-Mean/StDev, 
timeBodyGyroMag-Mean/StDev, timeBodyGyroJerkMag-Mean/StDev). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing 
frequencyBodyAcc-Mean/StDev-XYZ, frequencyBodyAccJerk-Mean/StDev-XYZ, 
frequencyBodyGyro-Mean/StDev-XYZ, frequencyBodyAccJerkMag-Mean/StDev, 
frequencyBodyGyroMag-Mean/StDev, frequencyBodyGyroJerkMag-Mean/StDev. 
(Note the 'frequency' to indicate frequency domain signals). 

Below are listed the variable names of the average values of mean and standard deviation 
of the described accelerometer and gyroscope 3-D signals for each subject for each activity. 
The first two variable names belong to activity and subject names.   
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
'angle_' denotes average of an angle value between two values named in the remaining of the 
variable name. 

 activity 
 subject  
 timeBodyAccMeanX  
 timeBodyAccMeanY                     
 timeBodyAccMeanZ                      
 timeBodyAccStDevX                    
 timeBodyAccStDevY                     
 timeBodyAccStDevZ                     
 timeGravityAccMeanX                  
 timeGravityAccMeanY                   
 timeGravityAccMeanZ                   
 timeGravityAccStDevX                 
 timeGravityAccStDevY                  
 timeGravityAccStDevZ                  
 timeBodyAccJerkMeanX                 
 timeBodyAccJerkMeanY                  
 timeBodyAccJerkMeanZ                  
 timeBodyAccJerkStDevX                
 timeBodyAccJerkStDevY                 
 timeBodyAccJerkStDevZ                 
 timeBodyGyroMeanX                    
 timeBodyGyroMeanY                     
 timeBodyGyroMeanZ                     
 timeBodyGyroStDevX                   
 timeBodyGyroStDevY                    
 timeBodyGyroStDevZ                    
 timeBodyGyroJerkMeanX                
 timeBodyGyroJerkMeanY                 
 timeBodyGyroJerkMeanZ                 
 timeBodyGyroJerkStDevX               
 timeBodyGyroJerkStDevY                
 timeBodyGyroJerkStDevZ                
 timeBodyAccMagMean                   
 timeBodyAccMagStDev                   
 timeGravityAccMagMean                 
 timeGravityAccMagStDev               
 timeBodyAccJerkMagMean                
 timeBodyAccJerkMagStDev               
 timeBodyGyroMagMean                  
 timeBodyGyroMagStDev                  
 timeBodyGyroJerkMagMean               
 timeBodyGyroJerkMagStDev             
 frequencyBodyAccMeanX                 
 frequencyBodyAccMeanY                 
 frequencyBodyAccMeanZ                
 frequencyBodyAccStDevX                
 frequencyBodyAccStDevY                
 frequencyBodyAccStDevZ               
 frequencyBodyAccMeanFreqX             
 frequencyBodyAccMeanFreqY             
 frequencyBodyAccMeanFreqZ            
 frequencyBodyAccJerkMeanX             
 frequencyBodyAccJerkMeanY             
 frequencyBodyAccJerkMeanZ            
 frequencyBodyAccJerkStDevX            
 frequencyBodyAccJerkStDevY            
 frequencyBodyAccJerkStDevZ           
 frequencyBodyAccJerkMeanFreqX         
 frequencyBodyAccJerkMeanFreqY         
 frequencyBodyAccJerkMeanFreqZ        
 frequencyBodyGyroMeanX                
 frequencyBodyGyroMeanY                
 frequencyBodyGyroMeanZ               
 frequencyBodyGyroStDevX               
 frequencyBodyGyroStDevY               
 frequencyBodyGyroStDevZ              
 frequencyBodyGyroMeanFreqX            
 frequencyBodyGyroMeanFreqY            
 frequencyBodyGyroMeanFreqZ           
 frequencyBodyAccMagMean               
 frequencyBodyAccMagStDev              
 frequencyBodyAccMagMeanFreq          
 frequencyBodyAccJerkMagMean           
 frequencyBodyAccJerkMagStDev          
 frequencyBodyAccJerkMagMeanFreq      
 frequencyBodyGyroMagMean              
 frequencyBodyGyroMagStDev             
 frequencyBodyGyroMagMeanFreq         
 frequencyBodyGyroJerkMagMean          
 frequencyBodyGyroJerkMagStDev         
 frequencyBodyGyroJerkMagMeanFreq     
 angle_timeBodyAccMeanGravity          
 angle_timeBodyAccJerkMeanGravityMean  
 angle_timeBodyGyroMeanGravityMean    
 angle_timeBodyGyroJerkMeanGravityMean 
 angle_XGravityMean                    
 angle_YGravityMean                   
 angle_ZGravityMean
