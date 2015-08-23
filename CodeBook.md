#Getting and Cleaning Data, Project Code-Book
##Bart Browning  08/16/2015

### A. From the provided "features_info.txt" file......

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix '__t__' to denote __time__) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the '__f__' to indicate __frequency__ domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

### B. As you can see from the column-listing provided below, the "tidy_average.txt" file created by step 5 of the "run_analysis.R" script is comprised of 68 columns. The bulk of the readings are grouped into a "family" of six readings (the mean and std-deviation in all three directions: X, Y, and Z).

--------------------------------------------------------------------
     1  Subject             The ID number of the person being monitored. (from 1 to 30)
     2  Activity            The label of the activity they were performing. (6 different activities were tested)
     
     3  tBodyAcc-Mean-X
     4  tBodyAcc-Mean-Y
     5  tBodyAcc-Mean-Z
     6  tBodyAcc-StdDev-X
     7  tBodyAcc-StdDev-Y
     8  tBodyAcc-StdDev-Z
     
     9  tGravityAcc-Mean-X
    10  tGravityAcc-Mean-Y
    11  tGravityAcc-Mean-Z
    12  tGravityAcc-StdDev-X
    13  tGravityAcc-StdDev-Y
    14  tGravityAcc-StdDev-Z
    
    15  tBodyAccJerk-Mean-X
    16  tBodyAccJerk-Mean-Y
    17  tBodyAccJerk-Mean-Z
    18  tBodyAccJerk-StdDev-X
    19  tBodyAccJerk-StdDev-Y
    20  tBodyAccJerk-StdDev-Z
    
    21  tBodyGyro-Mean-X
    22  tBodyGyro-Mean-Y
    23  tBodyGyro-Mean-Z
    24  tBodyGyro-StdDev-X
    25  tBodyGyro-StdDev-Y
    26  tBodyGyro-StdDev-Z
    
    27  tBodyGyroJerk-Mean-X
    28  tBodyGyroJerk-Mean-Y
    29  tBodyGyroJerk-Mean-Z
    30  tBodyGyroJerk-StdDev-X
    31  tBodyGyroJerk-StdDev-Y
    32  tBodyGyroJerk-StdDev-Z
    
    33  tBodyAccMag-Mean
    34  tBodyAccMag-StdDev
    
    35  tGravityAccMag-Mean
    36  tGravityAccMag-StdDev
    
    37  tBodyAccJerkMag-Mean
    38  tBodyAccJerkMag-StdDev
    
    39  tBodyGyroMag-Mean
    40  tBodyGyroMag-StdDev
    
    41  tBodyGyroJerkMag-Mean
    42  tBodyGyroJerkMag-StdDev
    
    43  fBodyAcc-Mean-X
    44  fBodyAcc-Mean-Y
    45  fBodyAcc-Mean-Z
    46  fBodyAcc-StdDev-X
    47  fBodyAcc-StdDev-Y
    48  fBodyAcc-StdDev-Z
    
    49  fBodyAccJerk-Mean-X
    50  fBodyAccJerk-Mean-Y
    51  fBodyAccJerk-Mean-Z
    52  fBodyAccJerk-StdDev-X
    53  fBodyAccJerk-StdDev-Y
    54  fBodyAccJerk-StdDev-Z
    
    55  fBodyGyro-Mean-X
    56  fBodyGyro-Mean-Y
    57  fBodyGyro-Mean-Z
    58  fBodyGyro-StdDev-X
    59  fBodyGyro-StdDev-Y
    60  fBodyGyro-StdDev-Z
    
    61  fBodyAccMag-Mean
    62  fBodyAccMag-StdDev
    
    63  fBodyBodyAccJerkMag-Mean
    64  fBodyBodyAccJerkMag-StdDev
    
    65  fBodyBodyGyroMag-Mean
    66  fBodyBodyGyroMag-StdDev
    
    67  fBodyBodyGyroJerkMag-Mean
    68  fBodyBodyGyroJerkMag-StdDev
