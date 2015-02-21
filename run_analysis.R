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


## Combine all data set into one matrix
train <- cbind(subject_train, y_train, x_train)
test<- cbind(subject_test, y_test, x_test)
overall <- rbind(test, train)

##Rename columns
colnames(overall) <-  c("subject", "activity", as.character(features[,2]))

##Set activity as factor in rename the labels in accroding to the table in activity_labels
overall$activity <- as.factor(overall$activity)
levels(overall$activity) <- as.character(activity_labels[,2])

##Select columns with std and mean
names <- colnames(overall)
tidyselect <- grepl("mean", names[1:length(names)])|grepl("std", names[1:length(names)])

##Add first two columns to the selction
tidyselect[1:2]=TRUE

##Generate tidy data set

tidyset <- overall[,tidyselect]


##ddply(tidyset,~subject,summarise,mean)
##tidymelt <- melt(tidyset, id=c("subject", "activity"))
##set <- acast(tidymelt, subject~activity, mean)
##tidysplit = split(tidyset, tidyset$subject)



finalset <- tidyset


write.table(finalset, file="final.txt", row.name=FALSE)

