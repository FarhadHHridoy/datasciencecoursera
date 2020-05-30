x<-read.csv("hw1_data.csv")
head(x)

#What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
a<-x
d<-a["Ozone"]
s<-is.na(d)
NROW(d[s])#How many missing values are in the Ozone column of this data frame?
mean(d[!s])

#Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?

c<-x
subsetofc<-c["Ozone"]>31 & c["Temp"]>90
g<-c["Solar.R"]
h<-g[subsetofc]
mean(h[!is.na(h)])

#What is the mean of "Temp" when "Month" is equal to 6?

head(c)
mon<-c["Month"]==6
tem<-c["Temp"]
mean(tem[mon])

#What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?

head(c)
mon<-c["Month"]==5
ozon<-c["Ozone"]
j<-ozon[mon]
k<-is.na(j)
max(j[!k])

