# Code Book for Getting And Cleaning Data - Course Project

Data output by the `run_analysis.R` script, and output to `tidy_data.txt` is in the following 
format:

* No row headers (it is unclear why this was explicit in the assignment)
* Columns 1 and 2 uniquely identify the subject and activity for the collected data
* Columns 3 through 81 are the _means_ of individual dimensions of the feature vectors for the
  given subject and activity.
  
Subjects are identified uniquely with an integer value in column 1.

Valid activity labels in column 2 are as follows:

* LAYING
* SITTING
* STANDING
* WALKING
* WALKING_DOWNSTAIRS
* WALKING_UPSTAIRS

The features in the remaining 79 columns are described in the original UCI HAR Dataset. Note that 
only the features calculated from the mean or standard deviation of the original signal data are 
represented in this set. 

## Original Source Data Description

The collection and calculation are fully described in the 
`features_info.txt` file from that dataset, but briefly (and mostly plagiarized from that file):

* The features selected are derived from the accelerometer and gyroscope 3-axial raw signals captured at 
  a constant rate of 50 Hz. 
* The raw signals were filtered using a median filter and a 3rd order low pass Butterworth filter with a 
  corner frequency of 20 Hz to remove noise. 
* The acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ 
  and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
* The body linear acceleration and angular velocity were then derived in time to obtain Jerk signals 
  (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
* The magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, 
  tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
* Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, 
  fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 
  (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the 
angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

## Agregated Data in this Dataset

The full list of column headers is below. Each feature value in the vector represents the _mean_ of 
calculated feature values for the original data set, grouped by subject id and activity label.

1. subject_id
2. label
3. tBodyAcc-mean()-X
4. tBodyAcc-mean()-Y
5. tBodyAcc-mean()-Z
6. tBodyAcc-std()-X
7. tBodyAcc-std()-Y
8. tBodyAcc-std()-Z
9. tGravityAcc-mean()-X
10. tGravityAcc-mean()-Y
11. tGravityAcc-mean()-Z
12. tGravityAcc-std()-X
13. tGravityAcc-std()-Y
14. tGravityAcc-std()-Z
15. tBodyAccJerk-mean()-X
16. tBodyAccJerk-mean()-Y
17. tBodyAccJerk-mean()-Z
18. tBodyAccJerk-std()-X
19. tBodyAccJerk-std()-Y
20. tBodyAccJerk-std()-Z
21. tBodyGyro-mean()-X
22. tBodyGyro-mean()-Y
23. tBodyGyro-mean()-Z
24. tBodyGyro-std()-X
25. tBodyGyro-std()-Y
26. tBodyGyro-std()-Z
27. tBodyGyroJerk-mean()-X
28. tBodyGyroJerk-mean()-Y
29. tBodyGyroJerk-mean()-Z
30. tBodyGyroJerk-std()-X
31. tBodyGyroJerk-std()-Y
32. tBodyGyroJerk-std()-Z
33. tBodyAccMag-mean()
34. tBodyAccMag-std()
35. tGravityAccMag-mean()
36. tGravityAccMag-std()
37. tBodyAccJerkMag-mean()
38. tBodyAccJerkMag-std()
39. tBodyGyroMag-mean()
40. tBodyGyroMag-std()
41. tBodyGyroJerkMag-mean()
42. tBodyGyroJerkMag-std()
43. fBodyAcc-mean()-X
44. fBodyAcc-mean()-Y
45. fBodyAcc-mean()-Z
46. fBodyAcc-std()-X
47. fBodyAcc-std()-Y
48. fBodyAcc-std()-Z
49. fBodyAcc-meanFreq()-X
50. fBodyAcc-meanFreq()-Y
51. fBodyAcc-meanFreq()-Z
52. fBodyAccJerk-mean()-X
53. fBodyAccJerk-mean()-Y
54. fBodyAccJerk-mean()-Z
55. fBodyAccJerk-std()-X
56. fBodyAccJerk-std()-Y
57. fBodyAccJerk-std()-Z
58. fBodyAccJerk-meanFreq()-X
59. fBodyAccJerk-meanFreq()-Y
60. fBodyAccJerk-meanFreq()-Z
61. fBodyGyro-mean()-X
62. fBodyGyro-mean()-Y
63. fBodyGyro-mean()-Z
64. fBodyGyro-std()-X
65. fBodyGyro-std()-Y
66. fBodyGyro-std()-Z
67. fBodyGyro-meanFreq()-X
68. fBodyGyro-meanFreq()-Y
69. fBodyGyro-meanFreq()-Z
70. fBodyAccMag-mean()
71. fBodyAccMag-std()
72. fBodyAccMag-meanFreq()
73. fBodyBodyAccJerkMag-mean()
74. fBodyBodyAccJerkMag-std()
75. fBodyBodyAccJerkMag-meanFreq()
76. fBodyBodyGyroMag-mean()
77. fBodyBodyGyroMag-std()
78. fBodyBodyGyroMag-meanFreq()
79. fBodyBodyGyroJerkMag-mean()
80. fBodyBodyGyroJerkMag-std()
81. fBodyBodyGyroJerkMag-meanFreq()