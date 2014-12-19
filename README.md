## Describing for the script run_analysis.R

### Initial dataset

The initial dataset includes the following files:
 * README.txt'
 * features_info.txt - Shows information about the variables used on the feature vector.
 * features.txt - List of all features.
 * activity_labels.txt - Links the class labels with their activity name.
 * train/X_train.txt - Training set.
 * train/y_train.txt - Training labels.
 * test/X_test.txt - Test set.
 * test/y_test.txt - Test labels.
 
### Script description

The goal is to prepare tidy data that can be used for later analysis. 

Using tidyr and stringr libraries. 

1. Create array of Variables.
Read the file features.txt with read.table(), take the second column from it - features names.
Use make.names() to make syntactically valid names, add "subject" and "activity.id" names.

2. Merge the trainig set. 
Read X_train.txt, y_train.txt and subject_train.txt with read.table() into three separate data frames.
Bind it into one set with cbind().
Add names from the step 1 for the created set with names().

3. Merge the test set.
Read X_test.txt, y_test.txt and subject_test.txt with read.table() into three separate data frames.
Bind it into one set with a cbind().
Add names from the step 1 for the created set with names().

4. Create one data set.
Bind sets from step 2 and 3 into one set with rbind_list().

5. Extracts only the measurements on the mean and standard deviation for each measurement. 
Use regexp "subject|activity.id|\\.mean\\.|\\.std\\." and with select(..., matches(regexp))
extract the first two columns and the measurements on the mean and standard deviation.

6. Name the activities in the data set.
Read activity_labels.txt with read.table().
Merge data set from step 5 with activity labels with merge().

7. Correct names for the data set from step 6.
Replace multiple dots with one dot and "BodyBody" with "Body".

8. Create tidy data set with the average of each variable for each activity and each subject. 
Take the data set from the step 7, place columns in the correct order, group it by subject and activity. 
with group_by, order it with arrange by subject and activity, compute the mean value for all columns except. 
grouping variables with summarise_each(funs(mean)). 
Print out the result data set.
