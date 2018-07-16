---
title: "Code Book"
author: "Anuradha"
date: "July 16, 2018"
output: html_document
---
## Code Book for Getting and Cleaning Data Course Project
The background and context for the project is in README.md file
The actual R code for the project is in run_analysis.R
The final output can be viewed in tidy.txt

### Output data
The tidy_data.txt data file is a text file, containing space-separated values.

The first row contains the names of the variables (different features and respective IDs), which are described below in the variables section, and the following rows contain the values of each of the features.

### Variables
subject_ID: unique identifier for subject

activity_ID: unique identifier for activity
  WALKING: subject was walking
  WALKING_UPSTAIRS: subject was walking upstairs
  WALKING_DOWNSTAIRS: subject was walking downstairs
  SITTING: subject was sitting
  STANDING: subject was standing
  LAYING: subject was laying

Other variables represent average of different readings captured by various sensors (79 variables)
  There are 2 major sets of variables - Time domain and frequency domain
  It is based on the following sensors - Accelerometer and Gyroscope
  All the readings basically measure the mean and standard deviation of the sensor readings
  An exhaustive list of the different variables are at the end of the document

### Calculations
  1. Merge both train and test datasets into combined data set called 'totalactivity'
  2. Extracted the subject_ID, activity_ID and mean & standard deviation variables
  3. Replaced activity_ID with activity names from the activity table
  4. Added descriptive names to the variables by cleaning up the names using 'gsub'
  5. Created a 'summary_data' table to show the average of each variable for each activity and each subject
  6. Created 'tidy.text' with the summary_data table
  
### Exhaustive list of features
    subject_ID
    Time_BodyAccelerometer-Mean()-X
    Time_BodyAccelerometer-Mean()-Y
    Time_BodyAccelerometer-Mean()-Z
    Time_BodyAccelerometer-Std-dev()-X
    Time_BodyAccelerometer-Std-dev()-Y
    Time_BodyAccelerometer-Std-dev()-Z
    Time_GravityAccelerometer-Mean()-X
    Time_GravityAccelerometer-Mean()-Y
    Time_GravityAccelerometer-Mean()-Z
    Time_GravityAccelerometer-Std-dev()-X
    Time_GravityAccelerometer-Std-dev()-Y
    Time_GravityAccelerometer-Std-dev()-Z
    Time_BodyAccelerometerJerk-Mean()-X
    Time_BodyAccelerometerJerk-Mean()-Y
    Time_BodyAccelerometerJerk-Mean()-Z
    Time_BodyAccelerometerJerk-Std-dev()-X
    Time_BodyAccelerometerJerk-Std-dev()-Y
    Time_BodyAccelerometerJerk-Std-dev()-Z
    Time_BodyGyroscope-Mean()-X
    Time_BodyGyroscope-Mean()-Y
    Time_BodyGyroscope-Mean()-Z
    Time_BodyGyroscope-Std-dev()-X
    Time_BodyGyroscope-Std-dev()-Y
    Time_BodyGyroscope-Std-dev()-Z
    Time_BodyGyroscopeJerk-Mean()-X
    Time_BodyGyroscopeJerk-Mean()-Y
    Time_BodyGyroscopeJerk-Mean()-Z
    Time_BodyGyroscopeJerk-Std-dev()-X
    Time_BodyGyroscopeJerk-Std-dev()-Y
    Time_BodyGyroscopeJerk-Std-dev()-Z
    Time_BodyAccelerometer_Magnitude-Mean()
    Time_BodyAccelerometer_Magnitude-Std-dev()
    Time_GravityAccelerometer_Magnitude-Mean()
    Time_GravityAccelerometer_Magnitude-Std-dev()
    Time_BodyAccelerometerJerk_Magnitude-Mean()
    Time_BodyAccelerometerJerk_Magnitude-Std-dev()
    Time_BodyGyroscope_Magnitude-Mean()
    Time_BodyGyroscope_Magnitude-Std-dev()
    Time_BodyGyroscopeJerk_Magnitude-Mean()
    Time_BodyGyroscopeJerk_Magnitude-Std-dev()
    Frequency_BodyAccelerometer-Mean()-X
    Frequency_BodyAccelerometer-Mean()-Y
    Frequency_BodyAccelerometer-Mean()-Z
    Frequency_BodyAccelerometer-Std-dev()-X
    Frequency_BodyAccelerometer-Std-dev()-Y
    Frequency_BodyAccelerometer-Std-dev()-Z
    Frequency_BodyAccelerometer-MeanFrequency()-X
    Frequency_BodyAccelerometer-MeanFrequency()-Y
    Frequency_BodyAccelerometer-MeanFrequency()-Z
    Frequency_BodyAccelerometerJerk-Mean()-X
    Frequency_BodyAccelerometerJerk-Mean()-Y
    Frequency_BodyAccelerometerJerk-Mean()-Z
    Frequency_BodyAccelerometerJerk-Std-dev()-X
    Frequency_BodyAccelerometerJerk-Std-dev()-Y
    Frequency_BodyAccelerometerJerk-Std-dev()-Z
    Frequency_BodyAccelerometerJerk-MeanFrequency()-X
    Frequency_BodyAccelerometerJerk-MeanFrequency()-Y
    Frequency_BodyAccelerometerJerk-MeanFrequency()-Z
    Frequency_BodyGyroscope-Mean()-X
    Frequency_BodyGyroscope-Mean()-Y
    Frequency_BodyGyroscope-Mean()-Z
    Frequency_BodyGyroscope-Std-dev()-X
    Frequency_BodyGyroscope-Std-dev()-Y
    Frequency_BodyGyroscope-Std-dev()-Z
    Frequency_BodyGyroscope-MeanFrequency()-X
    Frequency_BodyGyroscope-MeanFrequency()-Y
    Frequency_BodyGyroscope-MeanFrequency()-Z
    Frequency_BodyAccelerometer_Magnitude-Mean()
    Frequency_BodyAccelerometer_Magnitude-Std-dev()
    Frequency_BodyAccelerometer_Magnitude-MeanFrequency()
    Frequency_BodyAccelerometerJerk_Magnitude-Mean()
    Frequency_BodyAccelerometerJerk_Magnitude-Std-dev()
    Frequency_BodyAccelerometerJerk_Magnitude-MeanFrequency()
    Frequency_BodyGyroscope_Magnitude-Mean()
    Frequency_BodyGyroscope_Magnitude-Std-dev()
    Frequency_BodyGyroscope_Magnitude-MeanFrequency()
    Frequency_BodyGyroscopeJerk_Magnitude-Mean()
    Frequency_BodyGyroscopeJerk_Magnitude-Std-dev()
    Frequency_BodyGyroscopeJerk_Magnitude-MeanFrequency()
    activity_ID
    
      
      