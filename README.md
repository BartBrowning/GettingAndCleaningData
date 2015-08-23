#Getting and Cleaning Data, Project Description
##Bart Browning  08/16/2015

## A. Purpose of the Project.
As an exercise in getting and cleaning data, use the various data files available from the Human Activity Recognition database (see: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) to create a tidy data file that meets the requirements as laid out in the project assignment.

## B. Overall Approach.
The description of each file available in the HAR data set is available here: http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.names. The steps used to create the tidy data set from those files came from the project assignment:

1. Merge the training-data and the test-data to create one data set
2. Extract only the mean and standard deviation measurements.
3. Use descriptive activity-names to name the activities in the data set
4. Appropriately label the data set with descriptive Column-names
5. From the tidy-data created in step #4, create another tidy-data set with the average of each variable, for each combination of subject and activity.

The R script used to implement these steps is called "run_analysis.R"", and running it will create a file called "tidy_average.txt" (which is the file uploaded to Coursera for analysis).

## C. Evaluating the results:
You can view the results in R by reading in the file created by the run_analysis.R script:    
  projectResults <- read.table("tidy_average.txt", header=TRUE)

## D. Explanation of each step:

__STEP-1:__ Combine seven of the provided data files in the following row+column order to get one large (and tidy!) dataset:

COLUMN-NAMES (1 row)|Subject|Activity|"features.txt" (561 columns)
------------|-------|--------|--------------
TRAINING-DATA-ROWS (7,352 rows)|"subject_train.txt"|"y_train.txt"|"X_train.txt" (561 columns)
TESTING-DATA-ROWS (2,947 rows)|"subject_test.txt"|"y_test.txt"|"X_test.txt" (561 columns)

__STEP-2:__ Use only the data from those columns with "-mean(" or -std(" in the name.

__STEP-3:__ Use the activity-names from "activity_labels.txt" to replace the activity-numbers.

__STEP-4:__ I felt that expanding the column names (removing all abbreviations) would not make them more readable, so I simply removed the parentheses-pairs, turned "mean" into "Mean", and turned "std" into "StdDev".

__STEP-5:__ This is a straighforward application of the ddply() function.
