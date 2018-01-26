############################################
##
##  Coursera Programming Assignment
##  Getting and Cleaning Data
##  
##  Submission by: Mykhal Gideoni Mangada
##  January 2018
#############################################


## Load the potential libraries to be used
## Download if not yet available
LoadPkg <- function(pkg) {
    if (!require(pkg,character.only=TRUE)) {
        install.packages(pkg)
      require(pkg,character.only=TRUE)  
  }
}
LoadPkg ("curl")
LoadPkg ("reshape2")
LoadPkg ("dplyr")

#############################################
##      Download and prepare dataset
#############################################

fname <- "data.zip"
furl  <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
datadir = "UCI HAR Dataset"

if (!file.exists(fname)){
  download.file (furl, fname, method="curl")
  unzip (fname)
}  

## Initialize directories
path <- function(file) {
  paste(datadir,"/",file,sep="")
}
xtest       	<- path ("test/X_test.txt")
xtrain      	<- path ("train/X_train.txt")
features	<- path ("features.txt")
actlabels   	<- path ("activity_labels.txt")
ytest       	<- path ("test/y_test.txt")
ytrain      	<- path ("train/y_train.txt")
subtest     	<- path ("test/subject_test.txt")
subtrain    	<- path ("train/subject_train.txt")

## Read training data
trainsub <- read.table(subtrain)
trainval <- read.table(xtrain)      ##this will take a few seconds more
trainact <- read.table(ytrain)

## Read test data
testsub <- read.table(subtest)
testval <- read.table(xtest)        ##this will take a few seconds more
testact <- read.table(ytest)

## Read features and activity labels
feats	<- read.table(features, as.is=TRUE)
acts	<- read.table(actlabels)

################# ( 1 ) #####################
##  Merge traning and test set to one
#############################################

rbind(trainval, testval) -> mergedat

################# ( 2 ) #####################
##  Extract only the measurement, mean,
##  and standard deviation for each
#############################################

grepl( "subject|activity|mean()|std()", feats [ ,2]) -> extractdat
mergedat [ ,extractdat] -> mergedat

################# ( 3 ) #####################
##  Use descriptive activity names to
##  name the activities in the data set
#############################################

## expand abbreviations and clean up names
## nu  = frequency component
## sigma = standard deviation
rename <- sapply(
    feats[ ,2], function(x) {
        gsub("[()]", "",x)
	}
)

rename [extractdat] -> names(mergedat)

names(mergedat) <- 	gsub("[()]", "", names(mergedat))
names(mergedat) <-	gsub("^f", "Nu-", names(mergedat))
names(mergedat) <-	gsub("^t", "Time-", names(mergedat))
names(mergedat) <-	gsub("mean", "Mean-", names(mergedat))
names(mergedat) <-	gsub("std", "Sigma", names(mergedat))
names(mergedat) <-	gsub("BodyBody", "Body", names(mergedat))
names(mergedat) <-	gsub("Body", "Body-", names(mergedat))
names(mergedat) <-	gsub("Gyro", "Gyro-", names(mergedat))
names(mergedat) <-	gsub("Grvity", "Grvity-", names(mergedat))
names(mergedat) <-	gsub("Mag", "Mag-", names(mergedat))

## Merge test and train data
rbind(trainsub, testsub) -> subdat
rbind(trainact, testact) -> actdat

## Remove independent sets
#rm(trainsub, trainval, trainact, testsub, testval, testact)

################# ( 4 ) #####################
##  Appropriately label data set with 
##  descriptive variable names
#############################################
'subject' 	-> names(subdat)
'activity' 	-> names(actdat) 

## Create one dataset 
cbind(subdat, actdat, mergedat) -> mergedat

factor(mergedat$act)	-> group
acts[,2] 				-> levels(group)
group					-> mergedat$activity

################# ( 5 ) #####################
## Create an independent tidy data set
## with the average of each variable for 
## each activity and each subject
#############################################
molten <- melt(mergedat,(id.vars=c("subject","activity")))
tidydat <- dcast(molten, subject + activity ~ variable, mean)
write.table(tidydat, "tidy_data.txt", sep = ",")
