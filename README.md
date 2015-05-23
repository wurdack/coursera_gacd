# Getting And Cleaning Data - Course Project

The file `import.R` will import the UCI HAR Dataset specified by the project and return it in a
variabled called 'data'. The UCI HAR Dataset includes feature vectors calculated over sets of test
and training data. These are stored in two files, respectively. The data set also includes three
legends for the data:

* A file mapping individual subjects to each feature vector: `subject_test.txt`, `subject_train.txt`
* A file enumerating each dimension of the feature vectors, by columns: `features.txt`
* A file mapping activity IDs to human readable labels: `activity_labels.txt`

The `import.R` script does the following to the feature vector data:

* It catenates the test and training data into one set
* It uses the `features.txt` file to label the dimenstions of the feature vectors
* It removes all dimensions that are not a standard deviation or mean (these are ideintified by the
  dimension names from `features.txt`)
* It uses the `subject_*.txt` files to add a new column `ccc` identifying the subject the feature
  vector came from
* It uses the `activity_labels.txt` to then map the activity used for each vector to a human readable
  label.
  
  
`run_analysis.R` additionally does the following.

* It uses `import.R` to organize the data from the UCI HAR Dataset as described above
* It groups the data by subject and activity label
* It calculates the mean of each dimension within each group
* It produces a new dplyr data table (`tidy`) and writes to `output/tidy_data.txt`
