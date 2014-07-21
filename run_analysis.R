## This script is created for the project of the "Getting and Cleaning Data" MOOC. 

# Read feature names and activity labels. 
features <- read.table("./UCI HAR Dataset/features.txt", quote="\"", stringsAsFactors=FALSE)
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", quote="\"", stringsAsFactors=FALSE)

# Read the train data. 
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", quote="\"")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", quote="\"")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", quote="\"")

# Merge the train data. 
train <- cbind(subject_train, y_train, X_train)

# Assign column names. 
names(train)[3:dim(train)[2]] <- features[,2]
names(train)[1:2] <- c("subject", "activity")

# Read the test data. 
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", quote="\"")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", quote="\"")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", quote="\"")

# Merge the train data. 
test <- cbind(subject_test, y_test, X_test)

# Assign column names. 
names(test)[3:dim(test)[2]] <- features[,2]
names(test)[1:2] <- c("subject", "activity")

# Merge the train and test data. 
data <- rbind(train, test)

# Determine columns containing mean and std of measurements. 
col_index <- grep( "[Mm]ean|[Ss]td", names(data))

# Subset of mean and std values. 
data <- data[,c(1,2,col_index)]

# Create descriptive measurement names. 
names_str <- names(data)

# Remove special characters. 
names_str <- gsub("[[:punct:]]", "", names_str)

# Edit names (remove duplicates, arrange CamelCase, extract part of names)
names_str <- gsub("^t", "time", names_str)
names_str <- gsub("mean", "Mean", names_str)
names_str <- gsub("^f", "frequency", names_str)
names_str <- gsub("std", "StDev", names_str)
names_str <- gsub("gravity", "Gravity", names_str)
names_str <- gsub("BodyBody", "Body", names_str)
names_str <- gsub("anglet", "angletime", names_str)
names_str <- gsub("angle", "angle_", names_str)

names(data) <- names_str

# Replace the activity column values with appropriate labels.
labls <- gsub("[[:punct:]]u", "U", tolower(activity_labels[,2]))
labls <- gsub("[[:punct:]]d", "D", labls)
data[,2] <- factor(data[,2], labels = labls)
data[,1] <- factor(data[,1])

# Creates tidy data set with the average of each variable for each activity and each subject.
data_sum <- aggregate(data[,3:dim(data)[2]], list(data$activity, data$subject), FUN = mean)
names(data_sum)[1:2] <- c("activity", "subject")

# Writes the tidy dataset into comma separated file "tidy_data.txt".
write.table(data_sum, file = "tidy_data.txt", sep = ",", row.names = FALSE, col.names = TRUE)
