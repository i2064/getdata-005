# Required packages

if (!require("plyr")) {
  install.packages("plyr")
}

if (!require("reshape2")) {
  install.packages("reshape2")
}


# Load in all the raw data from X, y and subject files for test and train datasets

x.train <- read.table("UCI HAR Dataset/train/X_train.txt")
x.test <- read.table("UCI HAR Dataset/test/X_test.txt")
y.train <- read.table("UCI HAR Dataset/train/y_train.txt")
y.test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject.train <- read.table("UCI HAR Dataset/train/subject_train.txt")
subject.test <- read.table("UCI HAR Dataset/test/subject_test.txt")

# Combine the test and train datasets

all.x <- rbind(x.train, x.test)
all.y <- rbind(y.train, y.test)
all.subject <- rbind(subject.train, subject.test)


# Load descriptive data column names and assign

features <- read.table("UCI HAR Dataset/features.txt")[,2]
names(all.x) <- features
names(all.y) <- "activity.id"
names(all.subject) <- "subject"

# All data reconciled

all.data = cbind(all.subject, all.y, all.x)

# Get activity labels

activity.labels <- read.table("UCI HAR Dataset/activity_labels.txt")
names(activity.labels) <- c("activity.id", "activity")
#all.data.merged = join(all.data,activity.labels,by="activity.id")

# Filter columns from combined dataset ending with mean() or std()

selected.features <- grep("mean\\(\\)|std\\(\\)", features)
selected.x <- all.x[,selected.features]

# Create a combined data set with only selected columns

all.data.selected <- cbind(all.subject, all.y, selected.x)
all.data.selected <- join(all.data.selected,activity.labels,by="activity.id")

# Using package reshape2, melt and cast data to produce averages by subject and activity

melted.data = melt(all.data.selected, id.var = c("subject", "activity.id", "activity"))
tidy.data = dcast(melted.data, subject + activity.id + activity ~ variable, mean)

# Write the tidy data set to file

write.table(tidy.data, "tidy_data.txt", row.names=FALSE)

