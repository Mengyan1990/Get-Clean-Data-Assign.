#Original data set
=============================
The original data for this project are from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#Works to clean up the data 
=============================
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
6. Created the tidy dataset with write.table() using row.name=FALSE


#Variables in the tidy dataset
=============================
##subject
* Identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

##activity
* The six activitys that the subject performed wearing a smartphone on the waist: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

##Other variables
* All other vairables represent the average of each variable (mean and standard deviation(std) values of differnt signals) for each activity and each subject. For each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions:
	* tBodyAcc-mean()-XYZ
	* tBodyAcc-std()-XYZ
	* tGravityAcc-mean()-XYZ
	* tGravityAcc-std()-XYZ
	* tBodyAccJerk-mean()-XYZ
	* tBodyAccJerk-std()-XYZ
	* tBodyGyro-mean()-XYZ
	* tBodyGyro-std()-XYZ
	* tBodyGyroJerk-mean()-XYZ
	* tBodyGyroJerk-std()-XYZ
	* tBodyAccMag-mean()
	* tBodyAccMag-std()
	* tGravityAccMag-mean()
	* tGravityAccMag-std()
	* tBodyAccJerkMag-mean()
	* tBodyAccJerkMag-std()
	* tBodyGyroMag-mean()
	* tBodyGyroMag-std()
	* tBodyGyroJerkMag-mean()
	* tBodyGyroJerkMag-std()
	* fBodyAcc-mean()-XYZ
	* fBodyAcc-std()-XYZ
	* fBodyAcc-meanFreq()-XYZ
	* fBodyAccJerk-mean()-XYZ
	* fBodyAccJerk-std()-XYZ
	* fBodyAccJerk-meanFreq()-XYZ
	* fBodyGyro-mean()-XYZ
	* fBodyGyro-std()-XYZ
	* fBodyGyro-meanFreq()-XYZ
	* fBodyAccMag-mean()
	* fBodyAccMag-std()
	* fBodyAccMag-meanFreq()
	* fBodyAccJerkMag-mean()
	* fBodyAccJerkMag-std()
	* fBodyAccJerkMag-meanFreq()
	* fBodyGyroMag-mean()
	* fBodyGyroMag-std()
	* fBodyGyroMag-meanFreq()
	* fBodyGyroJerkMag-mean()
	* fBodyGyroJerkMag-std()
	* fBodyGyroJerkMag-meanFreq()





