library(tidyr)
library(stringr)

# 0. Variables
features <- read.table("./UCI HAR Dataset/features.txt", header=FALSE)
vars <- as.character(features[,2])
vars_all <- make.names(c(as.character(c("subject", "activity.id")), vars))

# 1.1. Merge the trainig set
X_train = read.table("./UCI HAR Dataset/train/X_train.txt",  header=FALSE)
y_train = read.table("./UCI HAR Dataset/train/y_train.txt",  header=FALSE)
subject_train = read.table("./UCI HAR Dataset/train/subject_train.txt",  header=FALSE)
merged_train = cbind(subject_train, y_train, X_train)
names(merged_train) <- vars_all

# 1.2. Merge the test set
X_test = read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE)
y_test = read.table("./UCI HAR Dataset/test/y_test.txt", header=FALSE)
subject_test = read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE)
merged_test = cbind(subject_test, y_test, X_test)
names(merged_test) <- vars_all

# 1.3. Create one data set 
merged_data <- rbind_list(merged_train,merged_test)
 
# 2. Extracts only the measurements on the mean and standard deviation for each measurement
regexp <- "subject|activity.id|\\.mean\\.|\\.std\\."
dat <- select(merged_data, matches(regexp))

# 3. Name the activities in the data set
activity_labels = read.table("./UCI HAR Dataset/activity_labels.txt", header=FALSE)
names(activity_labels) <- c("activity.id", "activity")
dat_m <- merge(dat, activity_labels, by.x="activity.id", by.y="activity.id", all=TRUE)

# 4. Appropriately labels the data set with descriptive variable names
# Done in 0.
names(dat_m) <- names(dat_m) %>% 
				str_replace_all("[\\.]{2,}","\\.") %>% 
				str_replace_all("BodyBody","Body")

# 5. From the data set in step 4, creates a second, independent tidy data set 
#	 with the average of each variable for each activity and each subject
result_df <- dat_m[,c(2,69,3:68)] %>%
				group_by(subject,activity) %>%
				arrange(subject,activity) %>%
				summarise_each(funs(mean)) %>%
				print
				

				

				
				
				



