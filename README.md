# KPI FINDING FROM GIVEN DATASET




#### BEFORE STARTING THE CALCULATIONS

> Read the dataset using read.csv()
> RemovE "NA" from the dataset so that the dataset is clean.
> Seperate month from the date provided for further use in questions.
> Extract ORDER ID, USER ID, DATE, MONTH, TEAM LEADER, COMMISSION and store it in a dataframe.
> We will be using this newly created dataframe for further analysis.


#### PART 1: To find out the number of active users who ordered in the month of May, June

> Collect the users using a for loop and an if statement
> Store the result in an array 
> Apply "UNIQUE" function on the array to remove the redundancies of the customer IDs
> Print the result

#### PART 2: To find out the number of reactive users who ordered in May, July but not in June

> Run two different sets of for loop and if statements to gather the users from may, july and then june
> Use Set difference function to get the desired output


#### PART:3 To find out number of leaders with a margin < 0 in may, june


(**I think it's a typo as the commission cannot be less than 0 therefore I have calculated margin < 1**)

> Run a for loop with an if statement to gather the commissions from the desired months
> Store the Names of the Team Leaders based on the above in an array and provide the count.
