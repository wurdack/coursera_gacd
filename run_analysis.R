## run_analysis.R
##
## Main script for tidying Samsung data.
## Sourcing this script will:
## 
## * Import feature vector data from the training and testing sets. 
## * Import subject and activity ids for the training and testing sets.
## * Import activity labels and feature names from their respective text files.
## * Filter the vector dimensions down to features based on mean and standard deviation
## * Labels each vector with its respective subject id, label id, and label name.
## * Leave the data in a data frame named data
##

## Switch the working directory to the root of the dataset
##
setwd("UCI HAR Dataset")

## Read the feature names. These are the column headings for the data in the training and test data sets. 
##
features <- read.table("features.txt", col.names=c("feature_index", "name"))

## Read the label identifiers
##
label_names <- read.table("activity_labels.txt", col.names=c("id", "label"))

## Read and combine the training and test feature values, 
##
train_feature_vectors <- read.table("train/X_train.txt")
test_feature_vectors <- read.table("test/X_test.txt")
feature_vectors <- rbind(train_feature_vectors, test_feature_vectors)
rm("train_feature_vectors", "test_feature_vectors")

## Read and combine the labels for each dataset
##
train_label_id <- read.table("train/y_train.txt")
test_label_id <- read.table("test/y_test.txt")
label_ids <- rbind(train_label_id, test_label_id)
rm("train_label_id", "test_label_id")

## Read and combine subject ids for each dataset
##
train_subjects <- read.table("train/subject_train.txt")
test_subjects <- read.table("test/subject_test.txt")
subject_ids <- rbind(train_subjects, test_subjects)
rm("train_subjects", "test_subjects")

## Tidy up column names for each table
##
colnames(feature_vectors) <- features[,2]
colnames(subject_ids) <- "subject_id"
colnames(label_ids) <- "label_id"

## Transmogrify label_ids to actual labels.
## N.B. There has to be a better way to do this, but I haven't found it yet.
##
label <- as.factor(label_ids$label_id)
levels(label) <- levels(label_names[,2])

## Throw away any features that aren't a standard deviation or mean.
## These features will include 'std' or 'mean' in the name. This also has 
## the convenient side effect of discarding the two dozen or so columns 
## that duplicate feature names (which thankfully we don't care about).
##
feature_vectors <- feature_vectors[,grepl("std|mean", colnames(feature_vectors))]

## Aggregate feature vectors, subject ids, and label ids into a dplyr dta frame
##
data <- cbind(cbind(subject_ids, label_ids), cbind(label, feature_vectors))

## Blow away all the intermediate data
##
rm("feature_vectors", "features", "label_ids", "label_names", "subject_ids", "label")

## Restore working directory
##
setwd("..")

