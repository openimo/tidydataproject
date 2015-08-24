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
  *subject
  *activity
  *"BodyAccX_Mean"
  *"BodyAccY_Mean"
  *"BodyAccZ_Mean"
  *"BodyAccX_Std"
  *"BodyAccY_Std"
  *"BodyAccZ_Std"
  *"GravityAccX_Mean"
  *"GravityAccY_Mean"
  *"GravityAccZ_Mean"
  *"GravityAccX_Std"
  *"GravityAccY_Std"
  *"GravityAccZ_Std"
  *"BodyAccJerkX_Mean"
  *"BodyAccJerkY_Mean"
  *"BodyAccJerkZ_Mean"
  *"BodyAccJerkX_Std"
  *"BodyAccJerkY_Std"
  *"BodyAccJerkZ_Std"
  *"BodyGyroX_Mean"
  *"BodyGyroY_Mean"
  *"BodyGyroZ_Mean"
  *"BodyGyroX_Std"
  *"BodyGyroY_Std"
  *"BodyGyroZ_Std"
  *"BodyGyroJerkX_Mean"
  *"BodyGyroJerkY_Mean"
  *"BodyGyroJerkZ_Mean"
  *"BodyGyroJerkX_Std"
  *"BodyGyroJerkY_Std"
  *"BodyGyroJerkZ_Std"
  *"BodyAccMag_Mean"
  *"BodyAccMag_Std"
  *"GravityAccMag_Mean"
  *"GravityAccMag_Std"
  *"BodyAccJerkMag_Mean"
  *"BodyAccJerkMag_Std"
  *"BodyGyroMag_Mean"
  *"BodyGyroMag_Std"
  *"BodyGyroJerkMag_Mean"
  *"BodyGyroJerkMag_Std"
  *"BodyAccX_Mean"
  *"BodyAccY_Mean"
  *"BodyAccZ_Mean"
  *"BodyAccX_Std"
  *"BodyAccY_Std"
  *"BodyAccZ_Std"
  *"BodyAccJerkX_Mean"
  *"BodyAccJerkY_Mean"
  *"BodyAccJerkZ_Mean"
  *"BodyAccJerkX_Std"
  *"BodyAccJerkY_Std"
  *"BodyAccJerkZ_Std"
  *"BodyGyroX_Mean"
  *"BodyGyroY_Mean"
  *"BodyGyroZ_Mean"
  *"BodyGyroX_Std"
  *"BodyGyroY_Std"
  *"BodyGyroZ_Std"
  *"BodyAccMag_Mean"
  *"BodyAccMag_Std"
  *"BodyAccJerkMag_Mean"
  *"BodyAccJerkMag_Std"
  *"BodyGyroMag_Mean"
  *"BodyGyroMag_Std"
  *"BodyGyroJerkMag_Mean"
  *"BodyGyroJerkMag_Std"

Tidy data set with average values  

See the README.md file in order to create this data set.  

The data set is stored in the file "final_data.txt".  

This data represents the average of the means and standard deviations of each variable for each (subject, activity) pair.

The first column is the subject, the second is the activity, the subsequent columns are the average of the means and standard deviations.

The number of subject is 30
