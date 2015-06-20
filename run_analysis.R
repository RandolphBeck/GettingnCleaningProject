# Prior to running this script, user should extract the zipped file "UCI HAR Dataset.zip" and set the
# working directory to the appropriate (whether Mac OS or not) copy of the folder "UCI HAR Dataset" in the extracted
# file.


# read in test data table
rawtest<-read.table("test/X_test.txt",header=F)
#read in training data table
rawtrain<-read.table("train/X_train.txt",header=F)

# create a vector of column numbers for columns containing means and std deviations
features<-read.delim("features.txt",header=F) # read in the variable names
colselect<-sort(c(grep("mean",features[[1]]),grep("std",features[[1]])))

#pare down test and train to just the columns containing means and std deviation
rawtest<-rawtest[,colselect]
rawtrain<-rawtrain[,colselect]

# name the columns of the raw datasets 
colnames(rawtest)<-features[colselect,]
colnames(rawtrain)<-features[colselect,]

#create vectors of activity names for the test and training data
actest<-read.delim("test/y_test.txt",header=F)
actrain<-read.delim("train/y_train.txt",header=F)
actnames<-read.delim("activity_labels.txt",header=F)
actname_test<-data.frame(actnames[actest[,1],1])
actname_train<-data.frame(actnames[actrain[,1],1])
names(actname_train)<-names(actname_test)<-"activity"

# column bind the activity name vectors on to the raw test and train frames
rawtest<-cbind(rawtest,actname_test)
rawtrain<-cbind(rawtrain,actname_train)

# row bind the test and training data frames into our final, tidy, data frame
HAR_means_and_stddev<-rbind(rawtrain,rawtest)

# create a copy for summary analysis
H<-HAR_means_and_stddev

# copy in the subject data and add it as a column to the data frame
subjtest<-read.delim("test/subject_test.txt",header=F)
subjtrain<-read.delim("train/subject_train.txt",header=F)
names(subjtrain)<-names(subjtest)<-"subject"
H<-cbind(H,rbind(subjtrain,subjtest))

# Create a new data frame with means of the values grouped by activity and subject
Avgs<-aggregate(H[,1:79],list(H$activity,H$subject),mean)
colnames(Avgs)<-c("activity","subject",colnames(Avgs[,3:81]))

# write the final output as a text file with a filename descriptive of its contents
write.table(Avgs,file="Avgs_by_activity_and_subject.txt",row.name=F)

# clear the intermediate data to reduce confusion
H<-actest<-actname_test<-actname_train<-actnames<-actrain<-features<-rawtest<-rawtrain<-subjtest<-subjtrain<-colselect<-NULL


