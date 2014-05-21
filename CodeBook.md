CodeBook
========
## Characteristics

 Space delimited data (default in write.table in R Language). To read this in R use read.table function. 


## Variables in generated tidy data set:
    
 - subject: subject number
 - activity: activity description    
 - tbodyaccstdxavg: average of tBodyAcc-std()-X variable
 - tbodyaccstdyavg: average of tBodyAcc-std()-Y variable
 - tbodyaccstdzavg: average of tBodyAcc-std()-Z variable
 - tgravityaccstdxavg: average of tGravityAcc-std()-X variable
 - tgravityaccstdyavg: average of tGravityAcc-std()-Y variable
 - tgravityaccstdzavg: average of tGravityAcc-std()-Z variable
 - tbodyaccjerkstdxavg: average of tBodyAccJerk-std()-X variable
 - tbodyaccjerkstdyavg: average of tBodyAccJerk-std()-Y variable
 - tbodyaccjerkstdzavg: average of tBodyAccJerk-std()-Z variable
 - tbodygyrostdxavg: average of tBodyGyro-std()-X variable
 - tbodygyrostdyavg: average of tBodyGyro-std()-Y variable
 - tbodygyrostdz: average of tBodyGyro-std()-Z variable
 - tbodygyrojerkstdxavg: average of tBodyGyroJerk-std()-X variable
 - tbodygyrojerkstdyavg: average of tBodyGyroJerk-std()-Y variable
 - tbodygyrojerkstdzavg: average of tBodyGyroJerk-std()-Z variable
 - tbodyaccmagstdavg: average of tBodyAccMag-std() variable
 - tgravityaccmagstdavg: average of tGravityAccMag-std() variable
 - tbodyaccjerkmagstdavg: average of tBodyAccJerkMag-std() variable
 - tbodygyromagstdavg: average of tBodyGyroMag-std() variable
 - tbodygyrojerkmagstdavg: average of tBodyGyroJerkMag-std() variable
 - fbodyaccstdxavg: average of fBodyAcc-std()-X variable
 - fbodyaccstdyavg: average of fBodyAcc-std()-Y variable
 - fbodyaccstdzavg: average of fBodyAcc-std()-Z variable
 - fbodyaccjerkstdxavg: average of fBodyAccJerk-std()-X variable
 - fbodyaccjerkstdyavg: average of fBodyAccJerk-std()-Y variable
 - fbodyaccjerkstdzavg: average of fBodyAccJerk-std()-Z variable
 - fbodygyrostdxavg: average of fBodyGyro-std()-X variable
 - fbodygyrostdyavg: average of fBodyGyro-std()-Y variable
 - fbodygyrostdzavg: average of fBodyGyro-std()-Z variable
 - fbodyaccmagstdavg: average of fBodyAccMag-std() variable
 - fbodybodyaccjerkmagstdavg: average of fBodyBodyAccJerkMag-std() variable
 - fbodybodygyromagstdavg: average of fBodyBodyGyroMag-std() variable
 - fbodybodygyrojerkmagstdavg: average of fBodyBodyGyroJerkMag-std() variable
 - tbodyaccmeanxavg: average of tBodyAcc-mean()-X variable
 - tbodyaccmeanyavg: average of tBodyAcc-mean()-Y variable
 - tbodyaccmeanzavg: average of tBodyAcc-mean()-Z variable
 - tgravityaccmeanxavg: average of tGravityAcc-mean()-X variable
 - tgravityaccmeanyavg: average of tGravityAcc-mean()-Y variable
 - tgravityaccmeanzavg: average of tGravityAcc-mean()-Z variable
 - tbodyaccjerkmeanxavg: average of tBodyAccJerk-mean()-X variable
 - tbodyaccjerkmeanyavg: average of tBodyAccJerk-mean()-Y variable
 - tbodyaccjerkmeanzavg: average of tBodyAccJerk-mean()-Z variable
 - tbodygyromeanxavg: average of tBodyGyro-mean()-X variable
 - tbodygyromeanyavg: average of tBodyGyro-mean()-Y variable
 - tbodygyromeanzavg: average of tBodyGyro-mean()-Z variable
 - tbodygyrojerkmeanxavg: average of tBodyGyroJerk-mean()-X variable
 - tbodygyrojerkmeanyavg: average of tBodyGyroJerk-mean()-Y variable
 - tbodygyrojerkmeanzavg: average of tBodyGyroJerk-mean()-Z variable
 - tbodyaccmagmeanavg: average of tBodyAccMag-mean() variable
 - tgravityaccmagmeanavg: average of tGravityAccMag-mean() variable
 - tbodyaccjerkmagmeanavg: average of tBodyAccJerkMag-mean() variable
 - tbodygyromagmeanavg: average of tBodyGyroMag-mean() variable
 - tbodygyrojerkmagmeanavg: average of tBodyGyroJerkMag-mean() variable
 - fbodyaccmeanxavg: average of fBodyAcc-mean()-X variable
 - fbodyaccmeanyavg: average of fBodyAcc-mean()-Y variable
 - fbodyaccmeanzavg: average of fBodyAcc-mean()-Z variable
 - fbodyaccjerkmeanxavg: average of fBodyAccJerk-mean()-X variable
 - fbodyaccjerkmeanyavg: average of fBodyAccJerk-mean()-Y variable
 - fbodyaccjerkmeanzavg: average of fBodyAccJerk-mean()-Z variable
 - fbodygyromeanxavg: average of fBodyGyro-mean()-X variable
 - fbodygyromeanyavg: average of fBodyGyro-mean()-Y variable
 - fbodygyromeanzavg: average of fBodyGyro-mean()-Z variable
 - fbodyaccmagmeanavg: average of fBodyAccMag-mean() variable
 - fbodybodyaccjerkmagmeanavg: average of fBodyBodyAccJerkMag-mean() variable
 - fbodybodygyromagmeanavg: average of fBodyBodyGyroMag-mean() variable
 - fbodybodygyrojerkmagmeanavg: average of fBodyBodyGyroJerkMag-mean() variable

 ## Transformations
  
  Script read files from original dataset, merge data and apply average function grouping by subject and activity, the original files are:
  
- features.txt
- /test/subject_test.txt
- /test/y_test.txt
- /test/X_test.txt
- /train/subject_train.txt
- /train/y_train.txt
- /train/X_train.txt
 

 ## Source variables
  
  Script uses this variables from original dataset and apply avg to make a tidy data set:
  
-	 tBodyAcc-mean()-X
-	 tBodyAcc-mean()-Y
-	 tBodyAcc-mean()-Z
-	 tBodyAcc-std()-X
-	 tBodyAcc-std()-Y
-	 tBodyAcc-std()-Z
-	 tGravityAcc-mean()-X
-	 tGravityAcc-mean()-Y
-	 tGravityAcc-mean()-Z
-	 tGravityAcc-std()-X
-	 tGravityAcc-std()-Y
-	 tGravityAcc-std()-Z
-	 tBodyAccJerk-mean()-X
-	 tBodyAccJerk-mean()-Y
-	 tBodyAccJerk-mean()-Z
-	 tBodyAccJerk-std()-X
-	 tBodyAccJerk-std()-Y
-	 tBodyAccJerk-std()-Z
-	 tBodyGyro-mean()-X
-	 tBodyGyro-mean()-Y
-	 tBodyGyro-mean()-Z
-	 tBodyGyro-std()-X
-	 tBodyGyro-std()-Y
-	 tBodyGyro-std()-Z
-	 tBodyGyroJerk-mean()-X
-	 tBodyGyroJerk-mean()-Y
-	 tBodyGyroJerk-mean()-Z
-	 tBodyGyroJerk-std()-X
-	 tBodyGyroJerk-std()-Y
-	 tBodyGyroJerk-std()-Z
-	 tBodyAccMag-mean()
-	 tBodyAccMag-std()
-	 tGravityAccMag-mean()
-	 tGravityAccMag-std()
-	 tBodyAccJerkMag-mean()
-	 tBodyAccJerkMag-std()
-	 tBodyGyroMag-mean()
-	 tBodyGyroMag-std()
-	 tBodyGyroJerkMag-mean()
-	 tBodyGyroJerkMag-std()
-	 fBodyAcc-mean()-X
-	 fBodyAcc-mean()-Y
-	 fBodyAcc-mean()-Z
-	 fBodyAcc-std()-X
-	 fBodyAcc-std()-Y
-	 fBodyAcc-std()-Z
-	 fBodyAccJerk-mean()-X
-	 fBodyAccJerk-mean()-Y
-	 fBodyAccJerk-mean()-Z
-	 fBodyAccJerk-std()-X
-	 fBodyAccJerk-std()-Y
-	 fBodyAccJerk-std()-Z
-	 fBodyGyro-mean()-X
-	 fBodyGyro-mean()-Y
-	 fBodyGyro-mean()-Z
-	 fBodyGyro-std()-X
-	 fBodyGyro-std()-Y
-	 fBodyGyro-std()-Z
-	 fBodyAccMag-mean()
-	 fBodyAccMag-std()
-	 fBodyBodyAccJerkMag-mean()
-	 fBodyBodyAccJerkMag-std()
-	 fBodyBodyGyroMag-mean()
-	 fBodyBodyGyroMag-std()
-	 fBodyBodyGyroJerkMag-mean()
-	 fBodyBodyGyroJerkMag-std()



