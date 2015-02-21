---
title: "CodeBook"
author: "Tobias"
date: "Monday, February 21, 2015"
output: html_document
---
#CODE BOOK
This is a brief description of the data set and the code to obtain this data set.

The original data se can be found on http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original data was obtained from a gyroscope and an accelerometer of a smartphone (Samsung Galaxy S II) which was attached to 30 different persons conducting 6 different activities [1]. After preprocessing (see link provided) there were two sets (test and training set) with 561 variables for each person and each activity.

The data files which were used as an input of the script were separated into x and y variables for each of the sets and two separate files for the desciption of the activitites and the variables.
These files can be found at 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

To obtain a tiny data set activity variable was changed from numbers (1 to 6) to factors describing the activity. The columns with the measurements from the phone were named with the names supplied and the values with the means and the standard deviations were chosen. From that data the means were taken for every subject and activity.

The final tidy dataset is a matrix with the following columns
1. the activity
2. the subject
3. the mean of 79 variables 

The code for the work on the data can be found in "run_analysis.R".

-----------
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.
