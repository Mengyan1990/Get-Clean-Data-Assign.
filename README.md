# Purpose of the script
==========================
This script is used to transform orginal data to tidy data after the original data was downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip to the work directory. 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
6. Created the tidy dataset with write.table() using row.name=FALSE


# Use of the script
==========================
1. Download run_analysis.R.
2. Source the script in R or Rstudio.
3. Some special packages are needed to be installed before running the script: plyr, dplyr,Hmisc.
4. Run the script in R or Rstudio, a txt file with tidy data will be created.
