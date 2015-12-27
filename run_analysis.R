#Read and combine trainiing data set
Subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
train <- cbind(Subject_train,y_train,X_train)
#Read and combine test data set
Subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
test <- cbind(Subject_test,y_test,X_test)
#1.Merges the training and the test data sets to create one data set
smartphone1 <-rbind(train,test)
#read features
features <- read.table("./UCI HAR Dataset/features.txt")
#2.Extracts only the measurements on the mean and standard deviation for each measurement
column <-grep("mean|std",features[,2])
extractcolumn <- c(1,2,column+2)
smartphone2 <- smartphone1 [ ,extractcolumn]
#4.Appropriately labels the data set with descriptive variable names
variablenames <- c("subject","activity",as.character(features[column,2]))
colnames(smartphone2) <- variablenames
#3.Uses descriptive activity names to name the activities in the data set
smartphone2$activity <- as.character(smartphone2$activity)
smartphone2$activity <- revalue(smartphone2$activity,c("1"="WALKING","2"="WALKING_UPSTAIRS","3"="WALKING_DOWNSTAIRS","4"="SITTING","5"="STANDING","6"="LAYING"))
smartphone2$subject <- as.factor(smartphone2$subject)
smartphone2$activity <- as.factor(smartphone2$activity)
# 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidydata1<- group_by(smartphone2,subject,activity)
tidydata2 <- summarise_each(tidydata1,funs(mean))
#Creat a txt file with write.table()
write.table(tidydata2,file="tidydata.txt",row.names=FALSE)
