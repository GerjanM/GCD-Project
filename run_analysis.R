##reading files
setwd("D:/Users/Gerjan/R/Dataset")
features<-read.table("features.txt")
actLabels<-read.table("activity_labels.txt")

setwd("D:/Users/Gerjan/R/Dataset/test")
subject_test<-read.table("subject_test.txt")
X_test<-read.table("X_test.txt")
Y_test<-read.table("y_test.txt")

setwd("D:/Users/Gerjan/R/Dataset/train")
subject_train<-read.table("subject_train.txt")
X_train<-read.table("X_train.txt")
Y_train<-read.table("y_train.txt")

## Appropriately labels the data set with descriptive variable names
names(X_test)<-features[,2]
names(Y_test)<-"activity"
names(subject_test)<-"person"

names(X_train)<-features[,2]
names(Y_train)<-"activity"
names(subject_train)<-"person"

## Merges the training and the test sets to create one data set.
merge_test<-cbind(Y_test,subject_test,X_test)
merge_train<-cbind(Y_train,subject_train,X_train)
merge_total<-rbind(merge_test,merge_train)

## Extracts only the measurements on the mean and standard deviation for each measurement
a<-(grep("std()|mean()|person|activity",names(merge_total),value = TRUE))
merge_select<-merge_total[,a]

## Uses descriptive activity names to name the activities in the data set
merge_select$activity<-factor(merge_select$activity,labels = actLabels$V2)       

## Appropriately labels the data set with descriptive variable names. 
names(merge_select)<-sub("\\(\\)","",names(merge_select))
names(merge_select)<-sub("-","",names(merge_select))
names(merge_select)<-gsub("-mean","Mean",names(merge_select))
names(merge_select)<-gsub("-std","Std",names(merge_select))

## Create a second data set with the average of each variable for each activity and each subject
library(reshape2)
tidy_mean_melt <- melt(merge_select, id = c("activity","person"))
tidy_mean_cast <- dcast(tidy_mean_melt, activity+person ~ variable, mean)

setwd("D:/Users/Gerjan/R/GCD-Project")
write.table(tidy_mean_cast, "tidyGCDdata.txt", row.names = FALSE, quote = FALSE)

# Generate Basic for CodeBook
write.table(names(merge_select),"CodeBook.md",row.names = FALSE, quote = FALSE)
write.table(actLabels,"CodeBook.md",row.names = FALSE,col.names = FALSE, quote = FALSE,append = TRUE)

