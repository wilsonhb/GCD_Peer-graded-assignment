# Download and read file
furl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists("getdata_projectfiles_UCI HAR Dataset.zip")) {
        download.file(furl, "./getdata_projectfiles_UCI HAR Dataset.zip")
        unzip("getdata_projectfiles_UCI HAR Dataset.zip", exdir= getwd(), 
              overwrite = T)
}

# 1. Merges the training and the test sets to create one data set

# Creates table based on features of data
dbfeat <- read.csv("./features.txt", header = FALSE, sep = " ")
dbfeat <- as.character(dbfeat[,2])

# Transforming the train set
trainx <- read.table("./train/X_train.txt")
trainy <- read.csv("./train/y_train.txt", header = FALSE, sep = " ")
trainsubject <- read.csv("./train/subject_train.txt", header = FALSE, sep = " ")

# Creating the data frame for the train set and naming
dbtrain <-  data.frame(trainsubject, trainy, trainx)
names(dbtrain) <- c(c("subject", "activity"), dbfeat)

# Transforming the test set
testx <- read.table("./test/X_test.txt")
testy <- read.csv("./test/y_test.txt", header = FALSE, sep = " ")
testsubject <- read.csv("./test/subject_test.txt", header = FALSE, sep = " ")

# Creating the data frame for the test set and naming
dbtest <-  data.frame(testsubject, testy, testx)
names(dbtest) <- c(c("subject", "activity"), dbfeat)

# Creating the complete data set
db <- rbind(dbtrain, dbtest)


# 2. Extracts only the measurements on the mean and standard deviation for each measurement 

# selects variables and subsets
sub_mean_std <- grep("mean|std", dbfeat)
select_sub_mean_std <- db[,c(1,2,sub_mean_std + 2)]


# 3. Uses descriptive activity names to name the activities in the data set

# Transforms the labels
lab_activity <- read.table("./activity_labels.txt", header = FALSE)
# Apply the labels/names
lab_activity <- as.character(lab_activity[,2])
select_sub_mean_std$activity <- lab_activity[select_sub_mean_std$activity]


# 4. Appropriately labels the data set with descriptive variable names. 
name.new <- names(select_sub_mean_std)
name.new <- gsub("[(][)]", "", name.new)
name.new <- gsub("^t", "TimeDomain_", name.new)
name.new <- gsub("^f", "FrequencyDomain_", name.new)
name.new <- gsub("Acc", "Accelerometer", name.new)
name.new <- gsub("Gyro", "Gyroscope", name.new)
name.new <- gsub("Mag", "Magnitude", name.new)
name.new <- gsub("-mean-", "_Mean_", name.new)
name.new <- gsub("-std-", "_StandardDeviation_", name.new)
name.new <- gsub("-", "_", name.new)
names(select_sub_mean_std) <- name.new

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidydata <- aggregate(select_sub_mean_std[,3:81],
                      by = list(activity = select_sub_mean_std$activity, 
                          subject = select_sub_mean_std$subject),
                          FUN = mean)
write.table(x = tidydata, file = "tidydata.txt", row.names = FALSE)

