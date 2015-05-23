##
## run_analysis.R
##
## Imports the UCI HAR Dataset in a more useable form, then produces a tidy data set that
## summarizes the averages of 'mean' and 'standart deviation' based features for each subject and activity.
##
library(dplyr)
source("import.R")

tidy <- data %>% group_by(subject_id, label) %>% summarise_each(funs(mean), matches("std|mean"))
if (!file.exists("output")) {
        dir.create("output")
}

write.table(tidy, "output/tidy_data.txt", row.names = FALSE)