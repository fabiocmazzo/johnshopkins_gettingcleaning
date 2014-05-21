CodeBook
========
## Characteristics

 Space delimited data (default in write.table in R Language). To read this in R use read.table function. 


## Variables in generated tidy data set:
    
 - subject: subject number
 - activity: activity description    
 - tbodyaccstdxavg: Average of  variable
 - tbodyaccstdyavg: Average of  variable
 - tbodyaccstdzavg: Average of  variable
 - tgravityaccstdxavg: Average of  variable
 - tgravityaccstdyavg: Average of  variable
 - tgravityaccstdzavg: Average of  variable
 - tbodyaccjerkstdxavg: Average of  variable
 - tbodyaccjerkstdyavg: Average of  variable
 - tbodyaccjerkstdzavg: Average of  variable
 - tbodygyrostdxavg: Average of  variable
 - tbodygyrostdyavg: Average of  variable
 - tbodygyrostdz: Average of  variable
 - tbodygyrojerkstdxavg: Average of  variable
 - tbodygyrojerkstdyavg: Average of  variable
 - tbodygyrojerkstdzavg: Average of  variable
 - tbodyaccmagstdavg: Average of  variable
 - tgravityaccmagstdavg: Average of  variable
 - tbodyaccjerkmagstdavg: Average of  variable
 - tbodygyromagstdavg: Average of  variable
 - tbodygyrojerkmagstdavg: Average of  variable
 - fbodyaccstdxavg: Average of  variable
 - fbodyaccstdyavg: Average of  variable
 - fbodyaccstdzavg: Average of  variable
 - fbodyaccjerkstdxavg: Average of  variable
 - fbodyaccjerkstdyavg: Average of  variable
 - fbodyaccjerkstdzavg: Average of  variable
 - fbodygyrostdxavg: Average of  variable
 - fbodygyrostdyavg: Average of  variable
 - fbodygyrostdzavg: Average of  variable
 - fbodyaccmagstdavg: Average of  variable
 - fbodybodyaccjerkmagstdavg: Average of  variable
 - fbodybodygyromagstdavg: Average of  variable
 - fbodybodygyrojerkmagstdavg: Average of  variable
 - tbodyaccmeanxavg: Average of  variable
 - tbodyaccmeanyavg: Average of  variable
 - tbodyaccmeanzavg: Average of  variable
 - tgravityaccmeanxavg: Average of  variable
 - tgravityaccmeanyavg: Average of  variable
 - tgravityaccmeanzavg: Average of  variable
 - tbodyaccjerkmeanxavg: Average of  variable
 - tbodyaccjerkmeanyavg: Average of  variable
 - tbodyaccjerkmeanzavg: Average of  variable
 - tbodygyromeanxavg: Average of  variable
 - tbodygyromeanyavg: Average of  variable
 - tbodygyromeanzavg: Average of  variable
 - tbodygyrojerkmeanxavg: Average of  variable
 - tbodygyrojerkmeanyavg: Average of  variable
 - tbodygyrojerkmeanzavg: Average of  variable
 - tbodyaccmagmeanavg: Average of  variable
 - tgravityaccmagmeanavg: Average of  variable
 - tbodyaccjerkmagmeanavg: Average of  variable
 - tbodygyromagmeanavg: Average of  variable
 - tbodygyrojerkmagmeanavg: Average of  variable
 - fbodyaccmeanxavg: Average of  variable
 - fbodyaccmeanyavg: Average of  variable
 - fbodyaccmeanzavg: Average of  variable
 - fbodyaccjerkmeanxavg: Average of  variable
 - fbodyaccjerkmeanyavg: Average of  variable
 - fbodyaccjerkmeanzavg: Average of  variable
 - fbodygyromeanxavg: Average of  variable
 - fbodygyromeanyavg: Average of  variable
 - fbodygyromeanzavg: Average of  variable
 - fbodyaccmagmeanavg: Average of  variable
 - fbodybodyaccjerkmagmeanavg: Average of  variable
 - fbodybodygyromagmeanavg: Average of  variable
 - fbodybodygyrojerkmagmeanavg: Average of  variable

  ## Source variables
  
  Script uses this variables from original dataset to make a tidy data set:
  
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



