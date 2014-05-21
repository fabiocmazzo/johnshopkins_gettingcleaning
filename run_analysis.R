#
# Coursera - Getting and Cleaning Data Project
# Fabio Covolo Mazzo - 05/19/2014
#
# This script read data from Human Activity Recognition Using Smartphones Dataset - Version 1.0
# and transform in a tidy dataset
#
# Save the files in working directory in same folders (/test and /train) and run
# the run_analysis function, that will save a tidy dataset in working directory
run_analisys <- function() {
        
       library(sqldf)
      
       features <- read.table("./features.txt") 
      
       #use only second column (features names) and convert to vector
       features <- tolower(as.vector(features[[2]]))
       
       # Read Test Data
       subjectTest <- read.table('./test/subject_test.txt')
       yTest <- read.table('./test/y_test.txt')
       xTest <- read.table('./test/X_test.txt')
       names(yTest) <- c("activity")
       names(subjectTest) <- c("subject")
       
       #replace activities
       yTest$activity[yTest$activity %in% "1"] <- "walking"
       yTest$activity[yTest$activity %in% "2"] <- "walking_upstairs"
       yTest$activity[yTest$activity %in% "3"] <- "walking_downstairs"
       yTest$activity[yTest$activity %in% "4"] <- "sitting"
       yTest$activity[yTest$activity %in% "5"] <- "standing"
       yTest$activity[yTest$activity %in% "6"] <- "laying"
   
       names(xTest) <- features
       testData <- cbind(yTest,subjectTest,xTest)
       
       
       # Read Train Data
       subjectTrain <- read.table('./train/subject_train.txt')
       yTrain <- read.table('./train/y_train.txt')
       xTrain <- read.table('./train/X_train.txt')
       names(yTrain) <- c("activity")
       names(subjectTrain) <- c("subject")
       #replace activities
       yTrain$activity[yTrain$activity %in% "1"] <- "walking"
       yTrain$activity[yTrain$activity %in% "2"] <- "walking_upstairs"
       yTrain$activity[yTrain$activity %in% "3"] <- "walking_downstairs"
       yTrain$activity[yTrain$activity %in% "4"] <- "sitting"
       yTrain$activity[yTrain$activity %in% "5"] <- "standing"
       yTrain$activity[yTrain$activity %in% "6"] <- "laying"
       
       names(xTrain) <- features
       trainData <- cbind(subjectTrain,yTrain,xTrain)
       
       fullData <- rbind(trainData,testData)
       
      
       
       columns <- c(grep("subject",names(fullData)),grep("activity",names(fullData)), grep("std()",names(fullData),fixed = TRUE),grep("mean()",names(fullData), fixed = TRUE));
       dataStdMean <-fullData[,columns]
       names(dataStdMean) <- gsub("\\(\\)","", gsub("-","", names(dataStdMean)))
       
      print(unlist(lapply(names(dataStdMean), paste, collapse=" ")))
       
       tidyData <- sqldf("select subject, 
                                 activity, 
                                 avg(tbodyaccstdx) as  tbodyaccstdxavg,         
                                 avg(tbodyaccstdy) as  tbodyaccstdyavg,
                                 avg(tbodyaccstdz) as   tbodyaccstdzavg,
                                 avg(tgravityaccstdx)  as tgravityaccstdxavg,        
                                 avg(tgravityaccstdy) as tgravityaccstdyavg,
                                 avg(tgravityaccstdz) as tgravityaccstdzavg,       
                                 avg(tbodyaccjerkstdx) as  tbodyaccjerkstdxavg,
                                 avg(tbodyaccjerkstdy) as  tbodyaccjerkstdyavg,
                                 avg(tbodyaccjerkstdz) as  tbodyaccjerkstdzavg,
                                 avg(tbodygyrostdx) as tbodygyrostdxavg,
                                 avg(tbodygyrostdy) as tbodygyrostdyavg,
                                 avg(tbodygyrostdz) as tbodygyrostdz,
                                 avg(tbodygyrojerkstdx) as tbodygyrojerkstdxavg,       
                                 avg(tbodygyrojerkstdy) as tbodygyrojerkstdyavg,
                                 avg(tbodygyrojerkstdz) as tbodygyrojerkstdzavg,
                                 avg(tbodyaccmagstd) as tbodyaccmagstdavg,         
                                 avg(tgravityaccmagstd) as tgravityaccmagstdavg,
                                 avg(tbodyaccjerkmagstd) as tbodyaccjerkmagstdavg,
                                 avg(tbodygyromagstd) as tbodygyromagstdavg,         
                                 avg(tbodygyrojerkmagstd) as tbodygyrojerkmagstdavg,
                                 avg(fbodyaccstdx) as fbodyaccstdxavg,
                                 avg(fbodyaccstdy) as fbodyaccstdyavg,
                                 avg(fbodyaccstdz) as fbodyaccstdzavg,
                                 avg(fbodyaccjerkstdx) as fbodyaccjerkstdxavg,
                                 avg(fbodyaccjerkstdy) as fbodyaccjerkstdyavg,        
                                 avg(fbodyaccjerkstdz) as fbodyaccjerkstdzavg,
                                 avg(fbodygyrostdx) as fbodygyrostdxavg,
                                 avg(fbodygyrostdy) as fbodygyrostdyavg,           
                                 avg(fbodygyrostdz) as fbodygyrostdzavg,
                                 avg(fbodyaccmagstd) as fbodyaccmagstdavg,
                                 avg(fbodybodyaccjerkmagstd) as fbodybodyaccjerkmagstdavg,  
                                 avg(fbodybodygyromagstd) as fbodybodygyromagstdavg,
                                 avg(fbodybodygyrojerkmagstd) as fbodybodygyrojerkmagstdavg,
                                 avg(tbodyaccmeanx) as tbodyaccmeanxavg,
                                 avg(tbodyaccmeany) as tbodyaccmeanyavg,
                                 avg(tbodyaccmeanz) as tbodyaccmeanzavg,
                                 avg(tgravityaccmeanx) as tgravityaccmeanxavg,        
                                 avg(tgravityaccmeany) as tgravityaccmeanyavg,
                                 avg(tgravityaccmeanz) as tgravityaccmeanzavg,
                                 avg(tbodyaccjerkmeanx) as tbodyaccjerkmeanxavg,      
                                 avg(tbodyaccjerkmeany) as tbodyaccjerkmeanyavg,
                                 avg(tbodyaccjerkmeanz) as tbodyaccjerkmeanzavg,
                                 avg(tbodygyromeanx) as tbodygyromeanxavg,
                                 avg(tbodygyromeany) as tbodygyromeanyavg,
                                 avg(tbodygyromeanz) as tbodygyromeanzavg,
                                 avg(tbodygyrojerkmeanx) as tbodygyrojerkmeanxavg,      
                                 avg(tbodygyrojerkmeany) as tbodygyrojerkmeanyavg,
                                 avg(tbodygyrojerkmeanz) as tbodygyrojerkmeanzavg,
                                 avg(tbodyaccmagmean) as tbodyaccmagmeanavg,         
                                 avg(tgravityaccmagmean) as tgravityaccmagmeanavg,
                                 avg(tbodyaccjerkmagmean) as tbodyaccjerkmagmeanavg,
                                 avg(tbodygyromagmean) as tbodygyromagmeanavg,       
                                 avg(tbodygyrojerkmagmean) as tbodygyrojerkmagmeanavg,
                                 avg(fbodyaccmeanx) as fbodyaccmeanxavg,
                                 avg(fbodyaccmeany) as fbodyaccmeanyavg,           
                                 avg(fbodyaccmeanz) as fbodyaccmeanzavg,
                                 avg(fbodyaccjerkmeanx) as fbodyaccjerkmeanxavg,
                                 avg(fbodyaccjerkmeany) as fbodyaccjerkmeanyavg,
                                 avg(fbodyaccjerkmeanz) as fbodyaccjerkmeanzavg,
                                 avg(fbodygyromeanx) as fbodygyromeanxavg, 
                                 avg(fbodygyromeany) as fbodygyromeanyavg,         
                                 avg(fbodygyromeanz) as fbodygyromeanzavg,
                                 avg(fbodyaccmagmean) as fbodyaccmagmeanavg,
                                 avg(fbodybodyaccjerkmagmean) as fbodybodyaccjerkmagmeanavg, 
                                 avg(fbodybodygyromagmean) as fbodybodygyromagmeanavg,
                                 avg(fbodybodygyrojerkmagmean) as fbodybodygyrojerkmagmeanavg
                        from dataStdMean group by subject, activity")
       
       write.table(tidyData, file="tidyDataSet.txt")
        
}