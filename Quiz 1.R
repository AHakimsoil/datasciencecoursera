data=read.csv(hw1_data)
library(readr)
hw1_data <- read_csv("hw1_data.csv")
View(hw1_data)
str(hw1_data)
mean(hw1_data$Solar.R)
mean(hw1_data$Ozone)
#Extract the subset of rows of the data frame where Ozone values are above 31 and Temp 
# values are above 90. What is the mean of Solar.R in this subset?
data.subO = hw1_data[hw1_data$Ozone > 31, , drop = FALSE]
data.subTO= hw1_data[hw1_data$Temp > 90, , drop = FALSE]
data.subTOO = na.omit(hw1_data)
mean(data.subTOO$Solar.R)
#What is the mean of "Temp" when "Month" is equal to 6?
hw1_data.June = hw1_data[hw1_data$Month == 6, , drop = FALSE]
mean(hw1_data.June$Temp)
#What was the maximum ozone value in the month of May (i.e. Month = 5)?
hw1_data.May = hw1_data[hw1_data$Month == 5, , drop = FALSE]
hw1_data.MayO <- na.omit(hw1_data.May)
max(hw1_data.MayO$Ozone)
