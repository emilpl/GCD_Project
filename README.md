GCD_Project
===========

Project for the Getting and Cleaning Data Course on Coursera.org

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. 
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The data for the project can be found here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The goal is to prepare tidy data that can be used for later analysis
Required submissions are: 
1) a tidy data set as described below, 
2) a link to a Github repository with the script for performing the analysis, and 
3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 
A README.md should also be included in the repo with the scripts. This repo explains how all of the scripts work and how they are connected. 

The created R script called run_analysis.R should do the following:

1) Merge the training and the test sets to create one data set.
2) Extract only the measurements on the mean and standard deviation for each measurement. 
3) Use descriptive activity names to name the activities in the data set
4) Appropriately label the data set with descriptive variable names. 
5) Create a second, independent tidy data set with the average of each variable for each activity and each subject. 


A single R script named run_analysis.R is included in this project. 
The script begins by reading the test and training data using the read.table() command. This is followed by merging 
the train and test data using cbind. Variable (column) names for this data were selected and copied from the features.txt file. 
The variable names are edited so they don't include special characters. The CamelCase style is applied to enable 
clearer and easier comprehension of the data. 
The names editing is followed by factorizing the subject and the activity labels columns. This enables aggregation of data and 
creation of a second, independent tidy data set with the average of each variable for each activity and each subject.

