##load dplyr library - please install it before running the code
library(dplyr)

##Import Data from test set
y_test <- read.table("y_test.txt")
x_test <- read.table("X_test.txt")
subject_test <- read.table("subject_test.txt")

##Import Data from training set
y_train <- read.table("y_train.txt")
x_train <- read.table("X_train.txt")
subject_train <- read.table("subject_train.txt")

##Import the names of the measurements and activities
activity_labels <- read.table("activity_labels.txt")
features <- read.table("features.txt")


## Combine all data sets into one matrix
train <- cbind(subject_train, y_train, x_train)
test<- cbind(subject_test, y_test, x_test)
overall <- rbind(test, train)

##Rename columns
colnames(overall) <-  c("subject", "activity", as.character(features[,2]))

##Set activity as factor and rename the labels in according to the table in activity_labels.txt
overall$activity <- as.factor(overall$activity)
levels(overall$activity) <- as.character(activity_labels[,2])

##Select columns with std and mean
names <- colnames(overall)
tidyselect <- grepl("mean()", names[1:length(names)])|grepl("std()", names[1:length(names)])

##Add first two columns to the selection (to keep subject and activity withon the tidy set)
tidyselect[1:2]=TRUE

##Generate tidy data set
tidyset <- overall[,tidyselect]

##Group the tidy data set by subjects and activity and calculate the mean for every combination 
grouped <- group_by(tidyset, activity, subject)
finalset <- summarise_each(grouped, funs(mean))
                   
## Write the results in a textfile
write.table(finalset, file="final.txt", row.name=FALSE)

