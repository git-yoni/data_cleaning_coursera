# Coursera: Getting and Cleaning Data Course Project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 
1. A tidy data set as described below, 
2. A link to a Github repository with your script for performing the analysis, and 
3. A code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This repository contains the following files:

- `README.md`: Provides an overview of the course project.
- `tidy_data.txt`: Contains the tidy data set produced by the R code
- `CodeBook.md`: Describes the contents of the data set (data, variables and transformations used to generate the data).
- `run_analysis.R`: Script create the data set. Does the following:
    1. Merges the training and the test sets to create one data set.
    2. Extracts only the measurements on the mean and standard deviation for each measurement.
    3. Uses descriptive activity names to name the activities in the data set
    4. Appropriately labels the data set with descriptive variable names.
    5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
    
This script requires the `dplyr` and `reshape2` packages. For windos users the `curl` package is also required. If any of these packages aren't available, the script will download automatically. Only an internet connection is needed and the script will do the rest.
