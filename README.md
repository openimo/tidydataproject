# tidydataproject
Repository for the Coursera - Getting and Cleaning Data - Tidy Data Project. This document explains the inner workings of the run_analysis.R script

# The Environment
## setwd("/home/openimo/R")
The script is written to be stand alone, so the specific directory that contains the "UCI HAR Dataset" folder is set as the working directory

## library(dplyr)
## library(tidyr)
The dplyr and tidyr packages are loaded

## Variables are created for Paths to the Main, Test and Train Directories
main_directory <- paste(getwd(), "/UCI HAR Dataset", sep="")  
test_directory <- paste(getwd(), "/UCI HAR Dataset/test", sep="")  
train_directory <- paste(getwd(), "/UCI HAR Dataset/train", sep="")  

## We set the working directory to the main directory and read the features.txt to a vector
setwd(main_directory)  
features <- read.table("features.txt")  

## We set the working directory to the train directory
setwd(train_directory)

## We read the (Training) Subject, X and Y files into data frames, set their column names using the names() function and then merge the dataframes
train_subject <- read.table("subject_train.txt")  
names(train_subject) <- c("Subject")  
train_x <- read.table("X_train.txt")  
names(train_x) <- as.vector(features[,2])  
train_y <- read.table("y_train.txt")  
names(train_y) <- c("Activity")  
train_merge <- cbind(train_subject, train_y, train_x)  

## We set the Working Directory to Test Path
setwd(test_directory)
  
## We read the (Test) Subject, X and Y files into data frames, set their column names using the names() function and then merge the dataframes
test_subject <- read.table("subject_test.txt")  
names(test_subject) <- c("Subject")  
test_x <- read.table("X_test.txt")  
names(test_x) <- as.vector(features[,2])  
test_y <- read.table("y_test.txt")  
names(test_y) <- c("Activity")  
test_merge <- cbind(test_subject, test_y, test_x)  

## We Create a single data frame by binding the test and training data frames row-wise
complete_file <- rbind(train_merge, test_merge)  

## We make Column Names Unique by calling the make.names() function
names(complete_file) <- make.names(names(complete_file), unique=TRUE)  

## We extract the Mean and Standard Deviation from the data frame
final_data <- select(complete_file, contains(".mean  "), contains(".std  "))  

## We set the working directory to the main directory and write the output using write.table()
setwd(main_directory)  
write.table(final_data, file="final_data.txt", row.names=FALSE)  

