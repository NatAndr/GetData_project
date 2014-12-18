### Describing for the script run_analysis.R

Using tidyr and stringr libraries 

1. Create array of Variables
Read the file features.txt with read.table(), take the second column from it - features names.
Use make.names() to make syntactically valid names, add "subject" and "activity.id" names.

2. Merge initial data
2.1. Merge the trainig set 
Read X_train.txt, y_train.txt and subject_train.txt with read.table() into three separate data frames.
Bind it into one set with cbind().
Add names from the step 1 for the created set with names().

2.2. Merge the test set
Read X_test.txt, y_test.txt and subject_test.txt with read.table() into three separate data frames.
Bind it into one set with a cbind().
Add names from the step 1 for the created set with names().

2.3. Create one data set
Bind sets from step 2.1 and 2.2 into one set with rbind_list().

3. Extracts only the measurements on the mean and standard deviation for each measurement 
Use regexp "subject|activity.id|\\.mean\\.|\\.std\\." and with select(..., matches(regexp))
extract the first two columns and the measurements on the mean and standard deviation.

4. Name the activities in the data set
Read activity_labels.txt with read.table().
Merge data set from step 3 with activity labels with merge().

5. Correct names for the data set from step 4.
Replace multiple dots with one dot and "BodyBody" with "Body".

6. Create tidy data set with the average of each variable for each activity and each subject 
Take the data set from the step 5, place columns in the correct order, group it by subject and activity 
with group_by, order it with arrange by subject and activity, compute the mean value for all columns except 
grouping variables with summarise_each(funs(mean)). 
Print out the result data set.
