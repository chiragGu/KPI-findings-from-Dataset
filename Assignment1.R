#######################################
# Reading and cleaning the data
data1<-read.csv("/Users/chirag/Desktop/citymalldataanalystassignment/Assignment\ 1.csv")
month_in_words<- months(user_order_date$`Order Date`)
month_nos<- strftime(Only_Date, "%m")
month_nos<- as.numeric(month_nos)
head(month_nos)
user_order_date<- data.frame(data1$order_id, data1$user_id ,Only_Date, month_nos)
data <- data.frame(user_order_date, data1$team_leader, data1$commission)
head(data,3)
# ASSIGNMENT-1:PART1 (No. of active users (who ordered in May and June))
#######################################
# Collecting the users who were active in the month of may and june
month<-data$month_nos
counter<-0
counter1<-0
array<-c()
for(i in month){
counter=counter+1
if(i==5||i==6){
array<-append(array,data$data1.user_id[counter])
}
}
#######################################
# Removing the redundant user (if any) to get unique customer IDs who were active in may and june
unique<-unique(array)
length(unique)
# ASSIGNMENT-1:PART3 (No. of leaders where margin was < 0 in May and June)
#######################################
#Collecting the commissions of may, june along with commission <1 
# I believe margin < 0 is a typo as the commission cannot be in negative 
counter2<-0
array1<-c()

for(i in month){
  counter2=counter2+1
  if(i==5||i==6){
    if(data$data1.commission[counter2]<1){
      array1<-append(array1,data$data1.team_leader[counter2])
    }
  }
}
# Removing the redundant user using unique and telling providing the number of leaders
unique2<-unique(array1)
print(length(unique2))
# ASSIGNMENT-1:PART2 (No. of reactive users (who ordered in May and July but not in June))
#######################################
counter3<-0
counter4<-0
array2<-c()
array3<-c()
for(i in month){
  counter3=counter3+1
  if(i==5 || i==7){
    array2<-append(array2,data$data1.user_id[counter3])
  }
}

for(i in month){
  counter4=counter4+1
  if(i==6){
    array3<-append(array3,data$data1.user_id[counter4])
  }
}

# Using set difference to get people who ordered in may and july but not in june 
DIff<-setdiff(array2,array3)
print(length(DIff))


####################################END#########################################



