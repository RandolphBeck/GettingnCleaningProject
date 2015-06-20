---
title: "README"
author: "Randolph Beck"
date: "Friday, June 19, 2015"
output: html_document
---

***
# Analysis and Reduction of the Human Activity Recognition Using Smartphones Dataset
Performed in Partial Fulfilment of the "Getting and Cleaning Data" Course in Coursera
June 22, 2015

***
This file describes the input, processing and output of datasets recorded to study measurements
of human activity using accelerometers and gyroscopes in a Samsung Galaxy SII smartphone.  Processing
is done by the attached R language script run_analysis.R.

More details on the experimental procedures and the datasets may be found at the following site:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

***
# Setup
The datasets are obtained by downloading a .zip file from the following url:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
The zip file will extract into a folder named UCI HAR Dataset with two subfolders named _MACOSX and
UCI HAR Dataset, for Mac users and Windows users respectively.

Load the run_analysis.R script into the appropriate lower "UCI HAR Dataset" folder, which
can be identified by its two subfolders "test" and "train". Start R program or RSuite and set the
working directory to the "UCI HAR Dataset" folder.  To initiate processing, source the
script "run_analysis.R".

***
# Input Files
The input files for this script were pre-processed by the experimenters from the raw smartphone data stored
in subfolders called "Inertial Signals" which are accelerometer and gyroscope data.
As the purpose of the measurements was to produce data which could be used for creating and testing machine-
learning models, the raw data was split into a training set, for training a model,
and a test set for testing the accuracy of a model.  These split datasets are stored in the /test and /train subfolders
which have the same file structures. 

## x_test.txt and x_train.txt
This data consists of tables with one row per experimental measurement corresponding to a sample time window and 561
columns corresponding to various statistics describing the sample data, such as mean, standard deviation, median, etc. 
Refer to "features.txt" and "features_info.txt" for details.

## y_test.txt and y_train.txt
These files are vectors of length equal to the rows in x_test.txt and x_train.txt which contain a numeric key identifying
the activity the subject was performing during that time sample (eg walking, standing, etc).

## activity_labels.txt
This file contains a vector of word descriptions of activities defining the numeric codes in y_test.txt and y_train.txt.

## features.txt and features_info.txt
These files contain a list of the variable names and how they were derived from the raw data.  They apply to both test and train.

## subject_test.txt and subject_train.txt
These files are vectors of length equal to the rows in x_test.txt and x_train.txt which contain a numeric key identifying the
human subject being measured during that time sample.

***
# Processing Steps
1. read in the main data tables x_train.txt and x_test.txt into separate data tables
2. using features.txt, eliminate all columns of the data tables with names that do not refer to means or standard deviations
3. set the column names for the remaining columns to the corresponding variable names from features.txt
4. using y_test.txt and y_train.txt and activity_labels.txt, create a new column with text descriptions of the activity for that row
5. append the rows of the test data to the rows of the training data
6. using subject_train.txt and subject_test.txt, create a new column of human subject numbers matching the rows of the activity data
7. aggregate the data table by activity and subject, computing the means of the grouped values 
8. output the resulting table to "Avgs_by_activity_and subject.txt"

***
# Output File
The resulting output table is simplified to one row per subject per activity and average values for 79 parameters reflecting means
and standard deviations of motion variables.  Each column is named with its original variable name and number, which were kept because they are 
succinct and descriptive and facilitate tracing the flow of data from the original measurements. Each row has a field with a text description of 
the activity performed and the subject performing it, grouped by subject and sorted by activity to ease comparison of an individual's performance on multiple tasks.

# Extensions
An alternate presentation would be a series of crosstabs, one per variable, showing variable means in a table with activity vs subject.
