README
---

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
* The output file "tidy_data.txt" will be created in the working directory
