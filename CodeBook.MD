---
title: "CodeBook: Avgs_by_activity_and_subject"
author: "Randolph Beck"
date: "Friday, June 19, 2015"
output: html_document
---
# Dataset Overview
This dataset comprises 180 observations of 81 variables derived from data from the internal accelerometer and gyroscope in a Samsung Galaxy S smartphone worn by 30 human subjects while performing
6 different physical activities.  Refer to http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones for a description of the experiment and pre-processing of the data.  The current files are a subset of the original pre-processed measurements selected to be 79 variables determined to contain the means and standard deviations of the measurements. The additional 2 variables express the human subject and the activity performed.  The 180 observations are averages of time sample data for each subject-activity pair.

# Variables

##activity
>Factor variable with 6 levels describing each human activity in the experiment

##subject
>Integer numeric representing the human subject performing the activities

***
**All of the following variables are real numbers representing averages of statistics of measurements for the 
specific subject and activity.  The selected statistics are all means or standard deviations of "inertial signals" from 
a smartphone, separated by frequency filtering into body motion, gravity, and jerk.  Half are as measured in time domain and
half are Fourier-transformed into frequency domain. The variable names and numbers have been carried over from the
original dataset because they are succinct and descriptive, and to facilitate relating them to the original documentation.**
	
##1 tBodyAcc-mean()-X
>time domain
>mean of X component of
>acceleration in g's of wearer, filtered by frequency

##2 tBodyAcc-mean()-Y
>time domain
>mean of Y component of
>acceleration in g's of wearer, filtered by frequency

##3 tBodyAcc-mean()-Z
>time domain
>mean of Z component of
>acceleration in g's of wearer, filtered by frequency

##4 tBodyAcc-std()-X
>time domain
>standard deviation of X component of
>acceleration in g's of wearer, filtered by frequency

##5 tBodyAcc-std()-Y
>time domain
>standard deviation of Y component of
>acceleration in g's of wearer, filtered by frequency

##6 tBodyAcc-std()-Z
>time domain
>standard deviation of Z component of
>acceleration in g's of wearer, filtered by frequency

##41 tGravityAcc-mean()-X
>time domain
>mean of X component of
>gravity component of acceleration in g's, filtered by frequency

##42 tGravityAcc-mean()-Y
>time domain
>mean of Y component of
>gravity component of acceleration in g's, filtered by frequency

##43 tGravityAcc-mean()-Z
>time domain
>mean of Z component of
>gravity component of acceleration in g's, filtered by frequency

##44 tGravityAcc-std()-X
>time domain
>standard deviation of X component of
>gravity component of acceleration in g's, filtered by frequency

##45 tGravityAcc-std()-Y
>time domain
>standard deviation of Y component of
>gravity component of acceleration in g's, filtered by frequency

##46 tGravityAcc-std()-Z
>time domain
>standard deviation of Z component of
>gravity component of acceleration in g's, filtered by frequency

##81 tBodyAccJerk-mean()-X
>time domain
>mean of X component of
>body acceleration jerk in g's, filtered by frequency

##82 tBodyAccJerk-mean()-Y
>time domain
>mean of Y component of
>body acceleration jerk in g's, filtered by frequency

##83 tBodyAccJerk-mean()-Z
>time domain
>mean of Z component of
>body acceleration jerk in g's, filtered by frequency

##84 tBodyAccJerk-std()-X
>time domain
>standard deviation of X component of
>body acceleration jerk in g's, filtered by frequency

##85 tBodyAccJerk-std()-Y
>time domain
>standard deviation of Y component of
>body acceleration jerk, in g's filtered by frequency

##86 tBodyAccJerk-std()-Z
>time domain
>standard deviation of Z component of
>body acceleration jerk in g's, filtered by frequency

##121 tBodyGyro-mean()-X
>time domain
>mean of X component of
>body angular velocity in rad/sec, filtered by frequency

##122 tBodyGyro-mean()-Y
>time domain
>mean of Y component of
>body angular velocity in rad/sec, filtered by frequency

##123 tBodyGyro-mean()-Z
>time domain
>mean of Z component of
>body angular velocity in rad/sec, filtered by frequency

##124 tBodyGyro-std()-X
>time domain
>standard deviation of X component of
>body angular velocity in rad/sec, filtered by frequency

##125 tBodyGyro-std()-Y
>time domain
>standard deviation of Y component of
>body angular velocity in rad/sec, filtered by frequency

##126 tBodyGyro-std()-Z
>time domain
>standard deviation of Z component of
>body angular velocity in rad/sec, filtered by frequency

##161 tBodyGyroJerk-mean()-X
>time domain
>mean of X component of
>body angular velocity jerk in rad/sec, filtered by frequency

##162 tBodyGyroJerk-mean()-Y
>time domain
>mean of Y component of
>body angular velocity jerk in rad/sec, filtered by frequency

##163 tBodyGyroJerk-mean()-Z
>time domain
>mean of Z component of
>body angular velocity jerk in rad/sec, filtered by frequency

##164 tBodyGyroJerk-std()-X
>time domain
>standard deviation of X component of
>body angular velocity jerk in rad/sec, filtered by frequency

##165 tBodyGyroJerk-std()-Y
>time domain
>standard deviation of Y component of
>body angular velocity jerk in rad/sec, filtered by frequency

##166 tBodyGyroJerk-std()-Z
>time domain
>standard deviation of Z component of
>body angular velocity jerk in rad/sec, filtered by frequency

##201 tBodyAccMag-mean()
>time domain
>mean of
>vector magnitude of body acceleration in g's , filtered by frequency

##202 tBodyAccMag-std()
>time domain
>standard deviation of
>vector magnitude of body acceleration in g's , filtered by frequency

##214 tGravityAccMag-mean()
>time domain
>mean of
>vector magnitude of gravity acceleration in g's , filtered by frequency

##215 tGravityAccMag-std()
>time domain
>standard deviation of
>vector magnitude of gravity acceleration in g's , filtered by frequency

##227 tBodyAccJerkMag-mean()
>time domain
>mean of
>vector magnitude of body acceleration jerk in g's , filtered by frequency

##228 tBodyAccJerkMag-std()
>time domain
>standard deviation of
>vector magnitude of body acceleration jerk in g's , filtered by frequency

##240 tBodyGyroMag-mean()
>time domain
>mean of
>vector magnitude of angular velocity in rad/sec , filtered by frequency

##241 tBodyGyroMag-std()
>time domain
>standard deviation of
>vector magnitude of angular velocity in rad/sec , filtered by frequency

##253 tBodyGyroJerkMag-mean()
>time domain
>mean of
>vector magnitude of angular velocity jerk in rad/sec , filtered by frequency

##254 tBodyGyroJerkMag-std()
>time domain
>standard deviation of
>vector magnitude of angular velocity jerk in rad/sec , filtered by frequency

##266 fBodyAcc-mean()-X
>frequency domain
>mean of X component of
>acceleration of wearer, filtered by frequency

##267 fBodyAcc-mean()-Y
>frequency domain
>mean of Y component of
>acceleration of wearer, filtered by frequency

##268 fBodyAcc-mean()-Z
>frequency domain
>mean of Z component of
>acceleration of wearer, filtered by frequency

##269 fBodyAcc-std()-X
>frequency domain
>standard deviation of X component of
>acceleration of wearer, filtered by frequency

##270 fBodyAcc-std()-Y
>frequency domain
>standard deviation of Y component of
>acceleration of wearer, filtered by frequency

##271 fBodyAcc-std()-Z
>frequency domain
>standard deviation of Z component of
>acceleration of wearer, filtered by frequency

##294 fBodyAcc-meanFreq()-X
>frequency domain
>mean of X component of
>acceleration of wearer, filtered by frequency

##295 fBodyAcc-meanFreq()-Y
>frequency domain
>mean of Y component of
>acceleration of wearer, filtered by frequency

##296 fBodyAcc-meanFreq()-Z
>frequency domain
>mean of Z component of
>acceleration of wearer, filtered by frequency

##345 fBodyAccJerk-mean()-X
>frequency domain
>mean of X component of
>acceleration of wearer jerk, filtered by frequency

##346 fBodyAccJerk-mean()-Y
>frequency domain
>mean of Y component of
>acceleration of wearer jerk, filtered by frequency

##347 fBodyAccJerk-mean()-Z
>frequency domain
>mean of Z component of
>acceleration of wearer jerk, filtered by frequency

##348 fBodyAccJerk-std()-X
>frequency domain
>standard deviation of X component of
>acceleration of wearer jerk, filtered by frequency

##349 fBodyAccJerk-std()-Y
>frequency domain
>standard deviation of Y component of
>acceleration of wearer jerk, filtered by frequency

##350 fBodyAccJerk-std()-Z
>frequency domain
>standard deviation of Z component of
>acceleration of wearer jerk, filtered by frequency

##373 fBodyAccJerk-meanFreq()-X
>frequency domain
>mean frequency of X component of
>acceleration of wearer jerk, filtered by frequency

##374 fBodyAccJerk-meanFreq()-Y
>frequency domain
>mean frequency of Y component of
>acceleration of wearer jerk, filtered by frequency

##375 fBodyAccJerk-meanFreq()-Z
>frequency domain
>mean frequency of Z component of
>acceleration of wearer jerk, filtered by frequency

##424 fBodyGyro-mean()-X
>frequency domain
>mean of X component of
>angular momentum of wearer, filtered by frequency

##425 fBodyGyro-mean()-Y
>frequency domain
>mean of Y component of
>angular momentum of wearer, filtered by frequency

##426 fBodyGyro-mean()-Z
>frequency domain
>mean of Z component of
>angular momentum of wearer, filtered by frequency

##427 fBodyGyro-std()-X
>frequency domain
>standard deviation of X component of
>angular momentum of wearer, filtered by frequency

##428 fBodyGyro-std()-Y
>frequency domain
>standard deviation of Y component of
>angular momentum of wearer, filtered by frequency

##429 fBodyGyro-std()-Z
>frequency domain
>standard deviation of Z component of
>angular momentum of wearer, filtered by frequency

##452 fBodyGyro-meanFreq()-X
>frequency domain
>mean frequency of X component of
>angular momentum of wearer, filtered by frequency

##453 fBodyGyro-meanFreq()-Y
>frequency domain
>mean frequency of Y component of
>angular momentum of wearer, filtered by frequency

##454 fBodyGyro-meanFreq()-Z
>frequency domain
>mean frequency of Z component of
>angular momentum of wearer, filtered by frequency

##503 fBodyAccMag-mean()
>frequency domain
>mean of vector magnitude of 
>acceleration of wearer, filtered by frequency

##504 fBodyAccMag-std()
>frequency domain
>standard deviation of vector magnitude of 
>acceleration of wearer, filtered by frequency

##513 fBodyAccMag-meanFreq()
>frequency domain
>mean frequency of vector magnitude of 
>acceleration of wearer, filtered by frequency

##516 fBodyBodyAccJerkMag-mean()
>frequency domain
>mean of vector magnitude of 
>acceleration jerk of wearer, filtered by frequency

##517 fBodyBodyAccJerkMag-std()
>frequency domain
>standard deviation of vector magnitude of 
>acceleration jerk of wearer, filtered by frequency

##526 fBodyBodyAccJerkMag-meanFreq()
>frequency domain
>mean frequency of vector magnitude of 
>acceleration jerk of wearer, filtered by frequency

##529 fBodyBodyGyroMag-mean()
>frequency domain
>mean of vector magnitude of 
>angular momentum of wearer, filtered by frequency

##530 fBodyBodyGyroMag-std()
>frequency domain
>standard deviation of vector magnitude of 
>angular momentum of wearer, filtered by frequency

##539 fBodyBodyGyroMag-meanFreq()
>frequency domain
>mean frequency of vector magnitude of 
>angular momentum of wearer, filtered by frequency

##542 fBodyBodyGyroJerkMag-mean()
>frequency domain
>mean of vector magnitude of 
>angular momentum jerk of wearer, filtered by frequency

##543 fBodyBodyGyroJerkMag-std()
>frequency domain
>standard deviation of vector magnitude of 
>angular momentum jerk of wearer, filtered by frequency

##552 fBodyBodyGyroJerkMag-meanFreq()
>frequency domain
>mean frequency of vector magnitude of 
>angular momentum jerk of wearer, filtered by frequency

# Processing Steps
An R script, run_analysis.R, was written to perform the transformation of the raw data provided by the experimenters.  The steps are

* detect which variables relate to means and standard deviations and eliminate those which do not

* set column names from a separate vector of variable names

* create two additional columns to reflect human subject and activity from separate vectors

* unify tables from training and testing sets into a single table

* group by subject and activity and compute average values for each variable so grouped

Refer to the README.MD file and to comments in the script itself for finer levels of details of processing.
