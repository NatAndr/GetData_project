## CodeBook

### Experimental design and background
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 
we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. The obtained dataset has been 
randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data 
and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then 
sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
The sensor acceleration signal, which has gravitational and body motion components, was separated using 
a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have 
only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, 
a vector of features was obtained by calculating variables from the time and frequency domain.

### Raw data
For each record it is provided:
 * Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
 * Triaxial Angular velocity from the gyroscope. 
 * A 561-feature vector with time and frequency domain variables. Features are normalized and bounded within [-1,1]
 * Its activity label. 
 * An identifier of the subject who carried out the experiment.

### Data dictionary
For the tidy data set with the average of each variable for each activity and each subject.
 * subject - The identifier of the subject who performed the activity for each window sample. Its range is from 1 to 30. Grouped on it
 * activity - Activity name: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING. Grouped on it
 * tBodyAcc.mean.X - the average time of the mean value of the body acceleration signal in the X direction from the accelerometer
 * tBodyAcc.mean.Y - the average time of the mean value of the body acceleration signal in the Y direction from the accelerometer
 * tBodyAcc.mean.Z - the average time of the mean value of the body acceleration signal in the Z direction from the accelerometer
 * tBodyAcc.std.X - the average time of the standard deviation of the body acceleration signal in the X direction from the accelerometer
 * tBodyAcc.std.Y - the average time of the standard deviation of the body acceleration signal in the Y direction from the accelerometer
 * tBodyAcc.std.Z - the average time of the standard deviation of the body acceleration signal in the Z direction from the accelerometer
 * tGravityAcc.mean.X - the average time of the mean value of the gravity acceleration signal in the X direction from the accelerometer
 * tGravityAcc.mean.Y - the average time of the mean value of the gravity acceleration signal in the Y direction from the accelerometer
 * tGravityAcc.mean.Z - the average time of the mean value of the gravity acceleration signal in the Z direction from the accelerometer
 * tGravityAcc.std.X - the average time of the standard deviation of the body acceleration signal in the X direction from the accelerometer
 * tGravityAcc.std.Y - the average time of the standard deviation of the body acceleration signal in the Y direction from the accelerometer
 * tGravityAcc.std.Z - the average time of the standard deviation of the body acceleration signal in the Z direction from the accelerometer
 * tBodyAccJerk.mean.X - the average time of the mean value of the body acceleration Jerk signal in the X direction from the accelerometer
 * tBodyAccJerk.mean.Y - the average time of the mean value of the body acceleration Jerk signal in the Y direction from the accelerometer
 * tBodyAccJerk.mean.Z - the average time of the mean value of the body acceleration Jerk signal in the Z direction from the accelerometer
 * tBodyAccJerk.std.X - the average time of the standard deviation of the body acceleration Jerk signal in the X direction from the accelerometer
 * tBodyAccJerk.std.Y - the average time of the standard deviation of the body acceleration Jerk signal in the Y direction from the accelerometer
 * tBodyAccJerk.std.Z - the average time of the standard deviation of the body acceleration Jerk signal in the Z direction from the accelerometer
 * tBodyGyro.mean.X - the average time of the mean value of the body acceleration signal in the X direction from the gyroscope
 * tBodyGyro.mean.Y - the average time of the mean value of the body acceleration signal in the Y direction from the gyroscope
 * tBodyGyro.mean.Z - the average time of the mean value of the body acceleration signal in the Z direction from the gyroscope
 * tBodyGyro.std.X - the average time of the standard deviation of the body acceleration signal in the X direction from the gyroscope
 * tBodyGyro.std.Y - the average time of the standard deviation of the body acceleration signal in the Y direction from the gyroscope
 * tBodyGyro.std.Z - the average time of the standard deviation of the body acceleration signal in the Z direction from the gyroscope
 * tBodyGyroJerk.mean.X - the average time of the mean value of the angular velocity Jerk signal in the X direction from the gyroscope
 * tBodyGyroJerk.mean.Y - the average time of the mean value of the angular velocity Jerk signal in the Y direction from the gyroscope
 * tBodyGyroJerk.mean.Z - the average time of the mean value of the angular velocity Jerk signal in the Z direction from the gyroscope
 * tBodyGyroJerk.std.X - the average time of the standard deviation of the angular velocity Jerk signal in the X direction from the gyroscope
 * tBodyGyroJerk.std.Y - the average time of the standard deviation of the angular velocity Jerk signal in the Y direction from the gyroscope
 * tBodyGyroJerk.std.Z - the average time of the standard deviation of the angular velocity Jerk signal in the Z direction from the gyroscope
 * tBodyAccMag.mean. - the average time of the mean value of the magnitude signal from the accelerometer
 * tBodyAccMag.std. - the average time of the standard deviation of the magnitude signal from the accelerometer
 * tGravityAccMag.mean. - the average time of the mean value of the gravity signal from the accelerometer
 * tGravityAccMag.std. - the average time of the standard deviation of the gravity signal from the accelerometer
 * tBodyAccJerkMag.mean. - the average time of the mean value of the magnitude Jerk signal from the accelerometer
 * tBodyAccJerkMag.std. - the average time of the standard deviation of the magnitude Jerk signal from the accelerometer
 * tBodyGyroMag.mean. - the average time of the mean value of the angular velocity magnitude signal from the gyroscope
 * tBodyGyroMag.std. - the average time of the standard deviation of the angular velocity magnitude signal from the gyroscope
 * tBodyGyroJerkMag.mean. - the average the average time of the mean value of the angular velocity magnitude Jerk signal from the gyroscope
 * tBodyGyroJerkMag.std. - the average the average time of the standard deviation of the angular velocity magnitude Jerk signal from the gyroscope
 * fBodyAcc.mean.X - the average frequency of the mean value of the body acceleration signal in the X direction from the accelerometer
 * fBodyAcc.mean.Y - the average frequency of the mean value of the body acceleration signal in the Y direction from the accelerometer
 * fBodyAcc.mean.Z - the average frequency of the mean value of the body acceleration signal in the Z direction from the accelerometer
 * fBodyAcc.std.X - the average frequency of the standard deviation of the body acceleration signal in the X direction from the accelerometer
 * fBodyAcc.std.Y - the average frequency of the standard deviation of the body acceleration signal in the Y direction from the accelerometer
 * fBodyAcc.std.Z - the average frequency of the standard deviation of the body acceleration signal in the Z direction from the accelerometer
 * fBodyAccJerk.mean.X - the average frequency of the mean value of the body acceleration Jerk signal in the X direction from the accelerometer
 * fBodyAccJerk.mean.Y - the average frequency of the mean value of the body acceleration Jerk signal in the Y direction from the accelerometer
 * fBodyAccJerk.mean.Z - the average frequency of the mean value of the body acceleration Jerk signal in the Z direction from the accelerometer
 * fBodyAccJerk.std.X - the average frequency of the standard deviation of the body acceleration Jerk signal in the X direction from the accelerometer
 * fBodyAccJerk.std.Y - the average frequency of the standard deviation of the body acceleration Jerk signal in the Y direction from the accelerometer
 * fBodyAccJerk.std.Z - the average frequency of the standard deviation of the body acceleration Jerk signal in the Z direction from the accelerometer
 * fBodyGyro.mean.X - the average frequency of the mean value of the angular velocity signal in the X direction from the gyroscope
 * fBodyGyro.mean.Y - the average frequency of the mean value of the angular velocity signal in the Y direction from the gyroscope
 * fBodyGyro.mean.Z - the average frequency of the mean value of the angular velocity signal in the Z direction from the gyroscope
 * fBodyGyro.std.X - the average frequency of the standard deviation of the angular velocity signal in the X direction from the gyroscope
 * fBodyGyro.std.Y - the average frequency of the standard deviation of the angular velocity signal in the Y direction from the gyroscope
 * fBodyGyro.std.Z - the average frequency of the standard deviation of the angular velocity signal in the Z direction from the gyroscope
 * fBodyAccMag.mean. - the average frequency of the mean value of the magnitude signal from the accelerometer
 * fBodyAccMag.std. - the average frequency of the standard deviation of the magnitude signal from the accelerometer
 * fBodyAccJerkMag.mean. - the average frequency of the mean value of the magnitude Jerk signal from the accelerometer
 * fBodyAccJerkMag.std. - the average frequency of the standard deviation of the magnitude Jerk signal from the accelerometer
 * fBodyGyroMag.mean. - the average frequency of the mean value of the angular velocity magnitude signal from the gyroscope
 * fBodyGyroMag.std. - the average frequency of the standard deviation of the angular velocity magnitude signal from the gyroscope
 * fBodyGyroJerkMag.mean. - the average frequency of the mean value of the angular velocity magnitude Jerk signal from the gyroscope
 * fBodyGyroJerkMag.std. - the average frequency of the standard deviation of the angular velocity magnitude Jerk signal from the gyroscope
