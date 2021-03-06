README
---
##Overview

This repo contains the code and instructions for the course project of the Coursera Getting and Cleaning Data module of the Data Science specialization.

##Requirements

This procedure executed on Windows 7 using R version 3.1.0 (2014-04-10)

The script requires the following libraries:

* plyr
* reshape2

##Instructions

* Create a directory to work in and set the R working directory to it.
* Obtain the raw dataset from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Copy the zip file and the script run_analysis.R to the working directory.
* Extract the zip file to the working directory. The directory "UCI HAR Dataset" should now exist in the working directory containing the dataset described in the Codebook.
* Execute the script with the following command -  source("run_analysis.R")

##Data

The source data and data transformations are described in the Codebook.

In summary, the script:

* Combines training and test data sets
* Extracts specific columns of mean and standard deviation data
* Joins measurement data to subject and activity
* Applies meaningful labels to columns
* Summarize the data to show the average mean and standard deviation measurements organized by subject and activity
* Output the summarized tidy data set

##Output

The tidy data file "tidy_data.txt" will be created in the working directory.


