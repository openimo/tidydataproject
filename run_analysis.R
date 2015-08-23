setwd("/home/openimo/R")
library(dplyr)
library(tidyr)

# Create the Paths to Test and Train Directories
main_directory <- paste(getwd(), "/UCI HAR Dataset", sep="")
test_directory <- paste(getwd(), "/UCI HAR Dataset/test", sep="")
train_directory <- paste(getwd(), "/UCI HAR Dataset/train", sep="")

# Set Working Directory to Main Directory
setwd(main_directory)
features <- read.table("features.txt")

# Set Working Directory to Train Path
setwd(train_directory)

# Read the Subject, X and Y files into data frames
  train_subject <- read.table("subject_train.txt")
  names(train_subject) <- c("Subject")
  
  train_x <- read.table("X_train.txt")
  names(train_x) <- as.vector(features[,2])
  
  train_y <- read.table("y_train.txt")
  names(train_y) <- c("Activity")

  # Merge the Files
  train_merge <- cbind(train_subject, train_y, train_x)

# Set Working Directory to Test Path
setwd(test_directory)
  
  # Read the Subject, X and Y files into data frames
  test_subject <- read.table("subject_test.txt")
  names(test_subject) <- c("Subject")
  
  test_x <- read.table("X_test.txt")
  names(test_x) <- as.vector(features[,2])
  
  test_y <- read.table("y_test.txt")
  names(test_y) <- c("Activity")
  
  # Merge the Files
  test_merge <- cbind(test_subject, test_y, test_x)

# Create the complete file
complete_file <- rbind(train_merge, test_merge)

# Make Column Names Unique
names(complete_file) <- make.names(names(complete_file), unique=TRUE)

# Extract Mean and Standard Deviation
final_data <- select(complete_file, contains(".mean..."), contains(".std..."))
setwd(main_directory)
write.table(final_data, file="final_data.txt", row.names=FALSE)
