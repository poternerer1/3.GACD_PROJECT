library(data.table)
library(reshape2)

# Required Packages
packages <- c("data.table", "reshape2")
sapply(packages, require, character.only = TRUE)

# Setting working directory and downloading dataset
path <- getwd()
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, file.path(path, "dataFiles.zip"), method = "auto")
unzip(zipfile = "dataFiles.zip")

# Loading labels and features 
activityLabels <- fread(file.path(path, "UCI HAR Dataset/activity_labels.txt"), col.names = c("classLabels", "activityName"))
features <- fread(file.path(path, "UCI HAR Dataset/features.txt"), col.names = c("index", "featureNames"))
featuresWanted <- grep("(mean|std)\\(\\)", features$featureNames)
msrmnts <- features[featuresWanted, featureNames]
msrmnts <- gsub('[()]', '', msrmnts)

# train datasets
train <- fread(file.path(path, "UCI HAR Dataset/train/X_train.txt"))[, featuresWanted, with = FALSE]
setnames(train, colnames(train), msrmnts)
train$actvts <- fread(file.path(path, "UCI HAR Dataset/train/Y_train.txt"), col.names = "Activity")
train$sbjcts <- fread(file.path(path, "UCI HAR Dataset/train/subject_train.txt"), col.names = "SubjectNum")
train <- cbind(train$sbjcts, train$actvts, train)

# test datasets
test <- fread(file.path(path, "UCI HAR Dataset/test/X_test.txt"))[, featuresWanted, with = FALSE]
setnames(test, colnames(test), msrmnts)
test$actvts <- fread(file.path(path, "UCI HAR Dataset/test/Y_test.txt"), col.names = "Activity")
test$sbjcts <- fread(file.path(path, "UCI HAR Dataset/test/subject_test.txt"), col.names = "SubjectNum")
test <- cbind(test$sbjcts, test$actvts, test)

# Merging
combined <- rbind(train, test)

# Converting using reshape2
combined$actvts <- factor(combined$actvts, levels = activityLabels$classLabels, labels = activityLabels$activityName)

combined$sbjcts <- as.factor(combined$sbjcts)
combined <- melt(data = combined, id = c("sbjcts", "actvts"))
combined <- dcast(data = combined, sbjcts + actvts ~ variable, fun.aggregate = mean)

fwrite(x = combined, file = "tidyData.csv", quote = FALSE)
