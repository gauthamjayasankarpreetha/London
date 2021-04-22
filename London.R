#Q1
# Reading the Data set 
london_crime<-read.csv("london-crime-data.csv")
# Displaying the dataset
london_crime

#. Using the paste() function created new field date in dataset
converted_date <- paste("01", london_crime$month, london_crime$year, sep ="/")

london_crime$Date <- as.Date(converted_date, "%d/%m/%Y")


london_crime




#Q2
#changing title as per given table in london_crime dataset
names(london_crime)[2] <-"Borough"
names(london_crime)[3] <-"MajorCategory"
names(london_crime)[4] <-"SubCategory"
names(london_crime)[5] <-"Value"
names(london_crime)[8] <-"CrimeDate"
london_crime

#Q3
#confirming the structure of the date variable
str(london_crime)

#Q4
#Plotted the chart to show the summary of the borough information
london_crime$Borough <-factor(london_crime$Borough)
plot(london_crime$Borough, main = "Number of Crimes in the City", xlab = "City", ylab = "No of Crimes")
summary(london_crime$Borough)

#a major category had the highest level of crimes is Croydon city(No of Crimes- 5226)
#lowest level of crimes in city of London (No of Crimes- 86)

#Q5
#Plotted the chart to show the summary of the Major Category of Crimes information
london_crime$MajorCategory <-factor(london_crime$MajorCategory)
plot(london_crime$MajorCategory, main = "Major Category of Crimes", xlab = "Major Category", ylab = "No of Crimes")
summary(london_crime$MajorCategory)

#Plotted the pie chart to show the summary of the Major Category of Crimes information
labels<-summary(london_crime$MajorCategory)
pie(labels,main = "Major Category of Crimes")


# major category had the highest level of crimes = Theft and Handling (33759)
# category had the lowest level of crimes = Sexual offenses (917)

#Q6
#Assigning Region to each Borough

attach(london_crime)
london_crime$Region[Borough =='Barking and Dagenham '] <- "East"
london_crime$Region[Borough =='Barnet'] <- "North"
london_crime$Region[Borough =='Bexley'] <- "East"
london_crime$Region[Borough =='Brent'] <- "West"
london_crime$Region[Borough =='Bromley'] <- "South"
london_crime$Region[Borough =='Camden'] <- "North"
london_crime$Region[Borough =='Croydon'] <- "South"
london_crime$Region[Borough =='Ealing'] <- "West"
london_crime$Region[Borough =='Enfield'] <- "North"
london_crime$Region[Borough =='Greenwich'] <- "East"
london_crime$Region[Borough =='Hackney'] <- "North"
london_crime$Region[Borough =='Hammersmith and Fulham'] <- "West"
london_crime$Region[Borough =='Haringey'] <- "North"
london_crime$Region[Borough =='Harrow'] <- "West"
london_crime$Region[Borough =='Havering'] <- "East"
london_crime$Region[Borough =='Hillingdon'] <- "West"
london_crime$Region[Borough =='Hounslow'] <- "West"
london_crime$Region[Borough =='Islington'] <- "Central"
london_crime$Region[Borough =='Kensington and Chelsea'] <- "Central"
london_crime$Region[Borough =='Kingston upon Thames'] <- "East"
london_crime$Region[Borough =='Lambeth'] <- "Central"
london_crime$Region[Borough =='Lewisham'] <- "Central"
london_crime$Region[Borough =='Merton'] <- "South"
london_crime$Region[Borough =='Newham'] <- "East"
london_crime$Region[Borough =='Redbridge'] <- "East"
london_crime$Region[Borough =='Richmond upon Thames'] <- "West"
london_crime$Region[Borough =='Southwark'] <- "Central"
london_crime$Region[Borough =='Sutton'] <- "South"
london_crime$Region[Borough =='Tower Hamlets'] <- "Central"
london_crime$Region[Borough =='Waltham Forest'] <- "Central"
london_crime$Region[Borough =='Wandsworth'] <- "East"
london_crime$Region[Borough =='Westminster'] <- "Central"


london_crime$Region[is.na(london_crime$Region)] = "Central"
london_crime
#Replaced "NA" Values with Central which is found is suitable

#Q7

#Plotted the chart to show the summary of the Major Category of Crimes information
london_crime$Region <-factor(london_crime$Region)
plot(london_crime$Region, main = "Region", xlab = "Region", ylab = "No of Region")
summary(london_crime$Region)

#Central region had the highest number of crimes = 28505
#South region had the lowest number of crimes = 15487




#Q8
# Viewing the summary and then extracting the subset of data having highest number of crimes And the lowest level of crimes
 
summary(london_crime$Region)
NumberOfCrimesRegionWise <- summary(london_crime$Region)
pie(NumberOfCrimesRegionWise,main = "Major Category of Crimes")

# Major category had the highest level of crime is  Theft and Handling  which is around 33759 in numbers and then the second 
# Then the second most highest crime happened is Violence Against the Person 



#Q9
#Plotting City in the X Axis of the chart and in the Y axis Plotting No of Crimes 
#Where as plotted the text on the chart vertically
summary(london_crime$Region)
plot(london_crime$Region, main = "Region", xlab = "Region", ylab = "No of Region")



#Q10
# save the modified London Crime data frame 
write.csv(london_crime, file = "london-crime-modified.csv")

