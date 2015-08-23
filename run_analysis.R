##################################################################
#
# Getting and Cleaning Data
# Coursera course project, August 2015, Bart Browning
#
##################################################################
# STEP 1: Merge the training-data and the test-data to create one data set

# Determine the 561 DATA column-names, and add 2 on the end....
features <- read.table("Project/features.txt")
colNames <- c(as.character(features[,2]), "Subject", "Activity")

# Combine all of the TEST-data:
testData     <- read.table("Project/X_test.txt")
testSubjects <- read.table("Project/subject_test.txt")
testActivity <- read.table("Project/y_test.txt")
testSet      <- cbind(testData, testSubjects, testActivity)
colnames(testSet) <- colNames

# Combine all of the TRAIN-data:
trainData     <- read.table("Project/X_train.txt")
trainSubjects <- read.table("Project/subject_train.txt")
trainActivity <- read.table("Project/y_train.txt")
trainSet      <- cbind(trainData, trainSubjects, trainActivity)
colnames(trainSet) <- colNames

# Combine the TEST and TRAIN data, row-wise...
# Note that this results in 10,299 observations, with 563 columns each.
allData <- rbind(testSet, trainSet)

#######################################################################
# STEP 2: Extract only the mean and standard deviation for each measurement.
#         (toss all of the other measurements)

# Get all 66 of the columns with -mean( or -std( in the column-name
meanStdCols <- grep("-(mean|std)\\(", colnames(allData), value = TRUE)

# Get only the 68 columns of interest
meanStdData <- allData[, c("Subject", "Activity", meanStdCols)]

##################################################################
# STEP 3: Use descriptive activity-names to name the activities in the data set
actLabels <- read.table("Project/activity_labels.txt")
meanStdData$Activity <- factor(meanStdData$Activity, labels=actLabels$V2)

######################################################################
# STEP 4: Appropriately label the data set with descriptive Column-names
#         (am really just shooting for more readable names here, rather than removing all abreviations)
colnames(meanStdData) <- gsub("\\(\\)", "",        colnames(meanStdData))
colnames(meanStdData) <- gsub("-mean",  "-Mean",   colnames(meanStdData))
colnames(meanStdData) <- gsub("-std",   "-StdDev", colnames(meanStdData))

######################################################################
# STEP 5: From the tidy-data created in step #4, create another tidy-data set 
# with the average of each variable, for each activity, and each subject
# This gives 180 observations/rows: 30 subjects multiplied by 6 activities.
library(plyr)
avgMSD_bySubjAct <- ddply(meanStdData, .(Subject, Activity), function(x) colMeans(x[, 3:68]))

###########################################################################################
# Save the data from steps 4+5 (tidy-mean-std-subset and tidy-average-by-subj-and-activity)
write.table(meanStdData, file = "tidy.txt", row.names = FALSE, quote = FALSE)
write.table(avgMSD_bySubjAct, file = "tidy_average.txt", row.names = FALSE, quote = FALSE)

###########################################################################################
# Save the column-names for inclusion into the Code book
write.table(colnames(meanStdData), file = "column_names.txt", row.names = FALSE, quote = FALSE)
