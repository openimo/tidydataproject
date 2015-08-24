#Codebook

Raw data can be found at:  
http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

Paper related to the study:  
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  

##Transformations to clean the data
Files from the train folder were column-binded in this order:  
* subject_train
* Y_train
* X_train

Files from the test folder were column-binded in this order:
* subject_test
* Y_test
* X_test

Last two data sets were row-binded to create a complete data set. Only the columns for the means and the standard deviations have been kept Columns of the final data set were labeled as follows.

* "tBodyAcc.mean...X" 
* "tBodyAcc.mean...Y" 
* "tBodyAcc.mean...Z" 
* "tGravityAcc.mean...X" 
* "tGravityAcc.mean...Y" 
* "tGravityAcc.mean...Z" 
* "tBodyAccJerk.mean...X" 
* "tBodyAccJerk.mean...Y" 
* "tBodyAccJerk.mean...Z" 
* "tBodyGyro.mean...X" 
* "tBodyGyro.mean...Y" 
* "tBodyGyro.mean...Z" 
* "tBodyGyroJerk.mean...X" 
* "tBodyGyroJerk.mean...Y" 
* "tBodyGyroJerk.mean...Z" 
* "fBodyAcc.mean...X" 
* "fBodyAcc.mean...Y" 
* "fBodyAcc.mean...Z" 
* "fBodyAccJerk.mean...X" 
* "fBodyAccJerk.mean...Y" 
* "fBodyAccJerk.mean...Z" 
* "fBodyGyro.mean...X" 
* "fBodyGyro.mean...Y" 
* "fBodyGyro.mean...Z" 
* "tBodyAcc.std...X" 
* "tBodyAcc.std...Y" 
* "tBodyAcc.std...Z" 
* "tGravityAcc.std...X" 
* "tGravityAcc.std...Y" 
* "tGravityAcc.std...Z" 
* "tBodyAccJerk.std...X" 
* "tBodyAccJerk.std...Y" 
* "tBodyAccJerk.std...Z" 
* "tBodyGyro.std...X" 
* "tBodyGyro.std...Y" 
* "tBodyGyro.std...Z" 
* "tBodyGyroJerk.std...X" 
* "tBodyGyroJerk.std...Y" 
* "tBodyGyroJerk.std...Z" 
* "fBodyAcc.std...X" 
* "fBodyAcc.std...Y" 
* "fBodyAcc.std...Z" 
* "fBodyAccJerk.std...X" 
* "fBodyAccJerk.std...Y" 
* "fBodyAccJerk.std...Z" 
* "fBodyGyro.std...X" 
* "fBodyGyro.std...Y" 
* "fBodyGyro.std...Z"

Tidy data set with average values  

See the README.md file in order to create this data set.  

The data set is stored in the file "final_data.txt".  

This data represents the average of the means and standard deviations of each variable for each (subject, activity) pair.

The first column is the subject, the second is the activity, the subsequent columns are the average of the means and standard deviations.

The number of subjects: 30
