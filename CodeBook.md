---
title: "CodeBook"
author: "Tobias"
date: "Monday, February 21, 2015"
output: html_document
---
#CODE BOOK
This is a brief description of the data set and the code to obtain this data set.

The original data se can be found on http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original data was obtained from a gyroscope of a smartphone which was attached to 30 different persons conducting 6 different activities. After preprocessing (see link provided) there was a set of 561 variables for each person and each activity.

The data which was used as an input of the script was separated in a training and a test set with two separate files for the desciption of the activitites and the variables.
The files can be found at 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

To obtain a tiny data set the activities were changed from numbers (1 to 6) to factors describing the activity. The variables obtained by the smartphone were named correctly and just the values with the means and the stanard deviation were chosen. From that data the means were taken for every subject and activity.

The final dataset consists of
* The subject
* The activity
* The mean of 79 variables


