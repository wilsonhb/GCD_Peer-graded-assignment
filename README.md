# GCD_Peer-graded-assignment
Peer graded assignment for the Getting and Cleaning Data Course

# Peer-graded Assignment:

## Getting and Cleaning Data Course Project

This repository is made for the purpose of the course "Getting and Cleaning Data Course Project". It contains all the necessary information to run the asked instructions.

## Used data set:
Human Activity Recognition Using Smartphones


## run_analysis.R
Prepares data and follows the 5-points instruction:
Before, the code downloads the data and unzips it.
1. Merges the training and the test sets to create one data set.
First, objects are created based on the data sets downloaded. They are properly transformed into txt files. The train and test datasets area finally merged using rbind.

2. Extracts only the measurements on the mean and standard deviation for each measurement. 
First, I select the correct variables using grep and then create the required subset.
Data sets used:
features.txt
X_train.txt
y_train.txt
subject_train.txt
X_test.txt
y_test.txt
subject_test.txt

3. Uses descriptive activity names to name the activities in the data set
I name the activities using the additional file specified.

4. Appropriately labels the data set with descriptive variable names. 
I rename variables using text keys.

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Finall, I collapse data using the dplyr package to produce a txt file.


## Files:
Codebook.md. Contains the information on all variables and modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.

## Tidyset.txt
Contains the final tidy data asked in former point 5.

The run_analysis.R file performs all the 5 required steps as described above.

The tidydata has the following column names (units):
Column Heading (units)
timeBodyAccelerometer-mean()-X (radians per sec)
timeBodyAccelerometer-mean()-Y (radians per sec)
timeBodyAccelerometer-mean()-Z (radians per sec)
timeBodyAccelerometer-std()-X (radians per sec)
timeBodyAccelerometer-std()-Y (radians per sec)
timeBodyAccelerometer-std()-Z (radians per sec)
timeGravityAccelerometer-mean()-X (radians per sec)
timeGravityAccelerometer-mean()-Y (radians per sec)
timeGravityAccelerometer-mean()-Z (radians per sec)
timeGravityAccelerometer-std()-X (radians per sec)
timeGravityAccelerometer-std()-Y (radians per sec)
timeGravityAccelerometer-std()-Z (radians per sec)
timeBodyAccelerometerJerk-mean()-X (radians per sec)
timeBodyAccelerometerJerk-mean()-Y (radians per sec)
timeBodyAccelerometerJerk-mean()-Z (radians per sec)
timeBodyAccelerometerJerk-std()-X (radians per sec)
timeBodyAccelerometerJerk-std()-Y (radians per sec)
timeBodyAccelerometerJerk-std()-Z (radians per sec)
timeBodyGyroscope-mean()-X (radians per sec)
timeBodyGyroscope-mean()-Y (radians per sec)
timeBodyGyroscope-mean()-Z (radians per sec)
timeBodyGyroscope-std()-X (radians per sec)
timeBodyGyroscope-std()-Y (radians per sec)
timeBodyGyroscope-std()-Z (radians per sec)
timeBodyGyroscopeJerk-mean()-X (radians per sec)
timeBodyGyroscopeJerk-mean()-Y (radians per sec)
timeBodyGyroscopeJerk-mean()-Z (radians per sec)
timeBodyGyroscopeJerk-std()-X (radians per sec)
timeBodyGyroscopeJerk-std()-Y (radians per sec)
timeBodyGyroscopeJerk-std()-Z (radians per sec)
timeBodyAccelerometerMagnitude-mean() (radians per sec)
timeBodyAccelerometerMagnitude-std() (radians per sec)
timeGravityAccelerometerMagnitude-mean() (radians per sec)
timeGravityAccelerometerMagnitude-std() (radians per sec)
timeBodyAccelerometerJerkMagnitude-mean() (radians per sec)
timeBodyAccelerometerJerkMagnitude-std() (radians per sec)
timeBodyGyroscopeMagnitude-mean() (radians per sec)
timeBodyGyroscopeMagnitude-std() (radians per sec)
timeBodyGyroscopeJerkMagnitude-mean() (radians per sec)
timeBodyGyroscopeJerkMagnitude-std() (radians per sec)
frequencyBodyAccelerometer-mean()-X (hertz)
frequencyBodyAccelerometer-mean()-Y (hertz)
frequencyBodyAccelerometer-mean()-Z (hertz)
frequencyBodyAccelerometer-std()-X (hertz)
frequencyBodyAccelerometer-std()-Y (hertz)
frequencyBodyAccelerometer-std()-Z (hertz)
frequencyBodyAccelerometerJerk-mean()-X (hertz)
frequencyBodyAccelerometerJerk-mean()-Y (hertz)
frequencyBodyAccelerometerJerk-mean()-Z (hertz)
frequencyBodyAccelerometerJerk-std()-X (hertz)
frequencyBodyAccelerometerJerk-std()-Y (hertz)
frequencyBodyAccelerometerJerk-std()-Z (hertz)
frequencyBodyGyroscope-mean()-X (hertz)
frequencyBodyGyroscope-mean()-Y (hertz)
frequencyBodyGyroscope-mean()-Z (hertz)
frequencyBodyGyroscope-std()-X (hertz)
frequencyBodyGyroscope-std()-Y (hertz)
frequencyBodyGyroscope-std()-Z (hertz)
frequencyBodyAccelerometerMagnitude-mean() (hertz)
frequencyBodyAccelerometerMagnitude-std() (hertz)
frequencyBodyAccelerometerJerkMagnitude-mean() (hertz)
frequencyBodyAccelerometerJerkMagnitude-std() (hertz)
frequencyBodyGyroscopeMagnitude-mean() (hertz)
frequencyBodyGyroscopeMagnitude-std() (hertz)
frequencyBodyGyroscopeJerkMagnitude-mean() (hertz)
frequencyBodyGyroscopeJerkMagnitude-std() (hertz)

## License:
The data used belongs to and was created by:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
