## Getting and Cleaning Data Project

### Description
Additional information about the variables, data and transformations used in the course project for the Johns Hopkins Getting and Cleaning Data course.

### Source Data
[UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

### Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


| Variable                                      | Description                                                      | Data.format | Notes                   |
|:----------------------------------------------|:-----------------------------------------------------------------|:------------|:------------------------|
| Subject                                       | 30 subjects, each labelled from 1-30                             | Integer     | NA                      |
| Activity                                      | Activity performed by subject during measurement                 | Character   | NA                      |
| TimeBodyAccelerometer.mean().X                | Mean body acceleration (X-axis)                                  | Numeric     | Time domain signal      |
| TimeBodyAccelerometer.mean().Y                | Mean body acceleration (Y-axis)                                  | Numeric     | Time domain signal      |
| TimeBodyAccelerometer.mean().Z                | Mean body acceleration (Z-axis)                                  | Numeric     | Time domain signal      |
| TimeBodyAccelerometer.std().X                 | Standard deviation of body acceleration (X-axis)                 | Numeric     | Time domain signal      |
| TimeBodyAccelerometer.std().Y                 | Standard deviation of body acceleration (Y-axis)                 | Numeric     | Time domain signal      |
| TimeBodyAccelerometer.std().Z                 | Standard deviation of body acceleration (Z-axis)                 | Numeric     | Time domain signal      |
| TimeGravityAccelerometer.mean().X             | Mean gravity acceleration (X-axis)                               | Numeric     | Time domain signal      |
| TimeGravityAccelerometer.mean().Y             | Mean gravity acceleration (Y-axis)                               | Numeric     | Time domain signal      |
| TimeGravityAccelerometer.mean().Z             | Mean gravity acceleration (Z-axis)                               | Numeric     | Time domain signal      |
| TimeGravityAccelerometer.std().X              | Standard deviation of gravity acceleration (X-axis)              | Numeric     | Time domain signal      |
| TimeGravityAccelerometer.std().Y              | Standard deviation of gravity acceleration (Y-axis)              | Numeric     | Time domain signal      |
| TimeGravityAccelerometer.std().Z              | Standard deviation of gravity acceleration (Z-axis)              | Numeric     | Time domain signal      |
| TimeBodyAccelerometerJerk.mean().X            | Mean jerk of body acceleration (X-axis)                          | Numeric     | Time domain signal      |
| TimeBodyAccelerometerJerk.mean().Y            | Mean jerk of body acceleration (Y-axis)                          | Numeric     | Time domain signal      |
| TimeBodyAccelerometerJerk.mean().Z            | Mean jerk of body acceleration (Z-axis)                          | Numeric     | Time domain signal      |
| TimeBodyAccelerometerJerk.std().X             | Standard deviation of jerk of body acceleration (X-axis)         | Numeric     | Time domain signal      |
| TimeBodyAccelerometerJerk.std().Y             | Standard deviation of jerk of body acceleration (Y-axis)         | Numeric     | Time domain signal      |
| TimeBodyAccelerometerJerk.std().Z             | Standard deviation of jerk of body acceleration (Z-axis)         | Numeric     | Time domain signal      |
| TimeBodyGyroscope.mean().X                    | Mean body angular velocity (X-axis)                              | Numeric     | Time domain signal      |
| TimeBodyGyroscope.mean().Y                    | Mean body angular velocity (Y-axis)                              | Numeric     | Time domain signal      |
| TimeBodyGyroscope.mean().Z                    | Mean body angular velocity (Z-axis)                              | Numeric     | Time domain signal      |
| TimeBodyGyroscope.std().X                     | Standard deviation of body angular velocity (X-axis)             | Numeric     | Time domain signal      |
| TimeBodyGyroscope.std().Y                     | Standard deviation of body angular velocity (Y-axis)             | Numeric     | Time domain signal      |
| TimeBodyGyroscope.std().Z                     | Standard deviation of body angular velocity (Z-axis)             | Numeric     | Time domain signal      |
| TimeBodyGyroscopeJerk.mean().X                | Mean jerk of body angular velocity (X-axis)                      | Numeric     | Time domain signal      |
| TimeBodyGyroscopeJerk.mean().Y                | Mean jerk of body angular velocity (Y-axis)                      | Numeric     | Time domain signal      |
| TimeBodyGyroscopeJerk.mean().Z                | Mean jerk of body angular velocity (Z-axis)                      | Numeric     | Time domain signal      |
| TimeBodyGyroscopeJerk.std().X                 | Standard deviation of jerk of body angular velocity (X-axis)     | Numeric     | Time domain signal      |
| TimeBodyGyroscopeJerk.std().Y                 | Standard deviation of jerk of body angular velocity (Y-axis)     | Numeric     | Time domain signal      |
| TimeBodyGyroscopeJerk.std().Z                 | Standard deviation of jerk of body angular velocity (Z-axis)     | Numeric     | Time domain signal      |
| TimeBodyAccelerometerMagnitude.mean()         | Mean magnitude of body acceleration                              | Numeric     | Time domain signal      |
| TimeBodyAccelerometerMagnitude.std()          | Standard deviation of magnitude of body acceleration             | Numeric     | Time domain signal      |
| TimeGravityAccelerometerMagnitude.mean()      | Mean magnitude of gravity acceleration                           | Numeric     | Time domain signal      |
| TimeGravityAccelerometerMagnitude.std()       | Standard deviation of magnitude of gravity acceleration          | Numeric     | Time domain signal      |
| TimeBodyAccelerometerJerkMagnitude.mean()     | Mean jerk of magnitude of body acceleration                      | Numeric     | Time domain signal      |
| TimeBodyAccelerometerJerkMagnitude.std()      | Standard deviation of jerk of magnitude of body acceleration     | Numeric     | Time domain signal      |
| TimeBodyGyroscopeMagnitude.mean()             | Mean magnitude of body angular velocity                          | Numeric     | Time domain signal      |
| TimeBodyGyroscopeMagnitude.std()              | Standard deviation of magnitude of body angular velocity         | Numeric     | Time domain signal      |
| TimeBodyGyroscopeJerkMagnitude.mean()         | Mean jerk of magnitude of body angular velocity                  | Numeric     | Time domain signal      |
| TimeBodyGyroscopeJerkMagnitude.std()          | Standard deviation of jerk of magnitude of body angular velocity | Numeric     | Time domain signal      |
| FreqBodyAccelerometer.mean().X                | Mean body acceleration (X-axis)                                  | Numeric     | Frequency domain signal |
| FreqBodyAccelerometer.mean().Y                | Mean body acceleration (Y-axis)                                  | Numeric     | Frequency domain signal |
| FreqBodyAccelerometer.mean().Z                | Mean body acceleration (Z-axis)                                  | Numeric     | Frequency domain signal |
| FreqBodyAccelerometer.std().X                 | Standard deviation of body acceleration (X-axis)                 | Numeric     | Frequency domain signal |
| FreqBodyAccelerometer.std().Y                 | Standard deviation of body acceleration (Y-axis)                 | Numeric     | Frequency domain signal |
| FreqBodyAccelerometer.std().Z                 | Standard deviation of body acceleration (Z-axis)                 | Numeric     | Frequency domain signal |
| FreqBodyAccelerometerJerk.mean().X            | Mean jerk of body acceleration (X-axis)                          | Numeric     | Frequency domain signal |
| FreqBodyAccelerometerJerk.mean().Y            | Mean jerk of body acceleration (Y-axis)                          | Numeric     | Frequency domain signal |
| FreqBodyAccelerometerJerk.mean().Z            | Mean jerk of body acceleration (Z-axis)                          | Numeric     | Frequency domain signal |
| FreqBodyAccelerometerJerk.std().X             | Standard deviation of jerk of body acceleration (X-axis)         | Numeric     | Frequency domain signal |
| FreqBodyAccelerometerJerk.std().Y             | Standard deviation of jerk of body acceleration (Y-axis)         | Numeric     | Frequency domain signal |
| FreqBodyAccelerometerJerk.std().Z             | Standard deviation of jerk of body acceleration (Z-axis)         | Numeric     | Frequency domain signal |
| FreqBodyGyroscope.mean().X                    | Mean body angular velocity (X-axis)                              | Numeric     | Frequency domain signal |
| FreqBodyGyroscope.mean().Y                    | Mean body angular velocity (Y-axis)                              | Numeric     | Frequency domain signal |
| FreqBodyGyroscope.mean().Z                    | Mean body angular velocity (Z-axis)                              | Numeric     | Frequency domain signal |
| FreqBodyGyroscope.std().X                     | Standard deviation of body angular velocity (X-axis)             | Numeric     | Frequency domain signal |
| FreqBodyGyroscope.std().Y                     | Standard deviation of body angular velocity (Y-axis)             | Numeric     | Frequency domain signal |
| FreqBodyGyroscope.std().Z                     | Standard deviation of body angular velocity (Z-axis)             | Numeric     | Frequency domain signal |
| FreqBodyAccelerometerMagnitude.mean()         | Mean magnitude of body acceleration                              | Numeric     | Frequency domain signal |
| FreqBodyAccelerometerMagnitude.std()          | Standard deviation of magnitude of body acceleration             | Numeric     | Frequency domain signal |
| FreqBodyBodyAccelerometerJerkMagnitude.mean() | Mean jerk of magnitude of body acceleration                      | Numeric     | Frequency domain signal |
| FreqBodyBodyAccelerometerJerkMagnitude.std()  | Standard deviation of jerk of magnitude of body acceleration     | Numeric     | Frequency domain signal |
| FreqBodyBodyGyroscopeMagnitude.mean()         | Mean magnitude of body angular velocity                          | Numeric     | Frequency domain signal |
| FreqBodyBodyGyroscopeMagnitude.std()          | Standard deviation of magnitude of body angular velocity         | Numeric     | Frequency domain signal |
| FreqBodyBodyGyroscopeJerkMagnitude.mean()     | Mean jerk of magnitude of body angular velocity                  | Numeric     | Frequency domain signal |
| FreqBodyBodyGyroscopeJerkMagnitude.std()      | Standard deviation of jerk of magnitude of body angular velocity | Numeric     | Frequency domain signal |
