# Inputs: none
# Outputs: class: data.frame Columns: mean of each 
# Assumption: you've downloaded and unzip'd the data files from:
#   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#   and then set your working directory to the same directory as your zip file.
#
# NOTE: I didn't have a lot of RAM on my dev machine so I combined steps where I was able and 
#       developed a switch to allow reading in fewer lines during testing.
#
run_analysis <- function () {
  UCIdir <- "UCI HAR Dataset"  # Data Directory
  
  myrows = -1; # Change this to the number of lines to read in for testing... Default: -1
  
  # Initialize with test data 
  UCIdat <- cbind(read.table(paste(UCIdir, "test", "subject_test.txt", sep="/"), nrows=myrows), # subject
                  read.table(paste(UCIdir, "test", "y_test.txt", sep="/"), nrows=myrows),       # activity
                  read.table(paste(UCIdir, "test", "X_test.txt", sep="/"), nrows=myrows))       # readings
  
  # 1. Merge with our training data
  UCIdat <- rbind(UCIdat,
                  cbind(read.table(paste(UCIdir, "train", "subject_train.txt", sep="/"),nrows=myrows), # subject
                        read.table(paste(UCIdir, "train", "y_train.txt", sep="/"), nrows=myrows),      # activity
                        read.table(paste(UCIdir, "train", "X_train.txt", sep="/"),nrows=myrows)))      # readings

  # At this point we've read in everything: UCIdat contains, Subject, Activity, .... READINGS ....
  
  # add in Column names - we'll use them to extract the mean and standard deviation columns 
  names(UCIdat) <- c("Subject","Activity",levels(read.table(paste(UCIdir, "features.txt", sep="/"))$V2))
  
  # 2. Extract only the measurements for mean and std (keep the subject and activity columns)
  UCIdat <- UCIdat[c(TRUE,TRUE,grepl("(mean|std)\\(\\)", names(UCIdat)[3:length(UCIdat)]))]
  
  # 3. Use descriptive activity names to name the activities in the data set
  #    --- uses factors to rename the Activity column and data from 'activity_labels.txt'
  {
    activityLabels <- read.table(paste(UCIdir, "activity_labels.txt", sep="/"))
    # note: remove the _'s as we set the labels
    UCIdat$Activity <- factor(UCIdat$Activity, levels=activityLabels$V1, labels=sub("_", " ", activityLabels$V2))
  }
  
  # 4. Appropriately label the data set with descriptive column names
  # rename the column names according to the following rules
  # * begins with 't' -> Time Domain
  # * begins with 'f' -> Fast Fourier Transform
  # * Acc -> Acceleration
  # * Jerk -> Jerk Signal
  # * Mag -> Euclidean Norm
  # * -mean() -> Mean
  # * -std() -> Standard Deviation
  # * dash followed by UPPER CASE character -> remove the dash
  # * a lower case character followed by an UPPER CASE character -> insert a space between them
  # run the last rule twice to ensure "BodyBodyGuru" is separated twice to become "Body Body Guru"
  if (T) {
    renameRules <- list(from <- c("^t", "^f", "Acc", "Jerk", "Mag", "-mean\\(\\)", "-std\\(\\)", "-([A-Z])",
                                  "([a-z])([A-Z])"),
                          to <- c("Time Domain ", "Fast Fourier Transform ", " Acceleration", " Jerk Signal",
                                  " Euclidean Norm", " Mean", " Standard Deviation", "\\1", "\\1 \\2"))
    
    #BodyBodyGuru needs to be separated twice - so we rerun the last rule twice "(length(renameRules[[1]]))"
    for (i in c(1:length(renameRules[[1]]),length(renameRules[[1]]))) {
        names(UCIdat) <- sub(renameRules[[1]][i], renameRules[[2]][i], names(UCIdat))
    }
  }
  
  # 5. returns a second, independent tidy data set with the average of each variable for each activity
  #    and each subject.
  sapply(split(UCIdat[,3:length(UCIdat)], list(UCIdat$Subject, UCIdat$Activity)), colMeans)
}