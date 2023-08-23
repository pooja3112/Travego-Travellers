# 2. (Medium) Perform read operation on the designed table created in the above task.
USE TRAVEGO_TRAVELLERS;
-- It is use to display the current database working and all the queries as to be within the current database. 

SELECT * FROM price;
-- retrive all rows and columns from the table "price" and displays all the inserted values from the table.

SELECT * FROM passenger;
-- retrive all rows and columns from the table "passenger" and displays all the inserted values from the table.

# a. How many female passengers traveled a minimum distance of 600 KMs? (1 mark)
SELECT count(gender) AS no_of_female_passenger,gender,Distance FROM passenger WHERE gender = 'f' AND Distance>=600 GROUP BY distance;

/*
this query is to select the count of gender and it alias name as no_of_female_passeneger,distance,gender from the table "passenger" 
 where gender has to be female,who have travelled minimum of 600km and group by distance column
 displays with select statements and displays the count of female passengers with distance.
 output is only 2 females travelled minimum 600 distance. 
*/

#b. Write a query to display the passenger details whose travel distance is greater than 500 and who are traveling in a sleeper bus. (2 marks)
SELECT * FROM passenger;

-- retrive all rows and columns from the table "passenger" and displays all the inserted values from the table.

SELECT * FROM passenger WHERE Distance > 500 AND Bus_Type = 'Sleeper';

/*this query selects all the passenger details where distance is greater than 500
 and bus_type is sleeper,it retrive all the columns 
 from passenger table for matching rows for the given condition
 output is only 4 person had travelled greater than 500 distance*/
 
# c. Select passenger names whose names start with the character 'S'.(2 marks)

SELECT passenger_name FROM passenger WHERE Passenger_name LIKE  's%';

/*this query selects the names whose name start with character "S" 
from "passenger" table.
it uses the 'like'operator with a pattern 's%' to matches the names with  starting charcater of 'S'
it displays all start of 'S' characters in the passenger table.
output is only one name is starting with "S" character "sejal" is executed.  
*/

# d. Calculate the price charged for each passenger, displaying the Passenger name, Boarding City,Destination City, Bus type, and Price in the output. (3 marks)

SELECT ps.Passenger_id,ps.Passenger_name,ps.Boarding_City,ps.Destination_City,Ps.Bus_Type,pr.price AS price_charged
FROM passenger ps
JOIN price pr ON ps.passenger_id = pr.id;

/*this query calculates the price charged for each passenger
by joining the "passenger"table with the " price" table based on the passenger ID.
it selects the passenger_id,name,boarding city,destination city,bus_type, and 
the corresponding price from the "price" table.
it displays the price amount alias as price_charged with all passenger from select statement mentioned.
 the output is display all "price" column from "price" table coressponding to passenger_id" from "passenger"table*/
 
# e. What are the passenger name(s) and the ticket price for those who traveled 1000 KMs Sitting in a bus? (4 marks)

SELECT ps.Passenger_name,pr.distance,pr.price AS ticket_price
FROM passenger ps
LEFT JOIN price pr ON ps.Distance = pr.Distance AND ps.Bus_Type = pr.Bus_Type
WHERE ps.Distance = 1000 AND ps.Bus_type='Sitting';

/* this query retrives the passenger_name from "passenger" table and price alias as ticket_charged
from the "price" table. so the left table is "passenger" and right table is "price", table joins towards left on the condition passenegr with distance = price with distance
passenegr with bus_type = price with bus_type where caluse is used "passenger" table with distance equal to 1000 and passenger table with bus_type are sitting
so the output is no values are found in "passenger" table. 

###############################observartion#####################################
the table doesn't have a certain values for the given condition so haven't found anymore values in "passenger" tables 
so the output has no values. 
 
# f. What will be the Sitting and Sleeper bus charge for Pallavi to travel from Bengaluru to Panaji? (5 marks)

/* this "passenger" table doesn't have sitting of palavi but distance,destination & boarding we have so i have insert a row for sitting for pallavi passenge_name from bangalore to panaji*/

INSERT INTO passenger VALUES(10, 'Pallavi', 'AC', 'F', 'Bengaluru','Panaji', 600, 'Sitting');

/* it is to insert the new values into the "passenger" table */

SELECT ps.Passenger_name,pr.Bus_Type,pr.Distance, pr.Price
FROM price AS pr
JOIN passenger AS ps ON ps.Bus_Type = pr.Bus_Type
WHERE ps.Passenger_name = 'Pallavi'
AND pr.distance = 600;

/* this query retrives the passenger_name,bus_type,distance from "passenger" and "price"
from the price table join the table passenger based on the passenger with bus_type and price with bus_type 
for the passenger named "pallavi" and price of distance of 600 kilometers
the output is it displays only the sitting and sleeper of palavi which has a distance = 600
*/

# g. Alter the column category with the value "Non-AC" where the Bus_Type is sleeper (2 marks)

UPDATE passenger
SET category = 'Non-AC'
WHERE bus_type = 'sleeper';

/*this query updates the "passenger" table alter the category column which is to update the category 
and set category is "non-ac" when bus_type is ='sleeper'.
all the bus_type sleeper has to displayed in category as non-ac it matches with "passenger" table and displays. 
 */
 
SELECT * FROM passenger;
/* retrive all rows and columns from the table "passenger" and displays all the updated values from the table.*/
-- output is displays the all sleeper bustype and the category column "non-ac" from "passenger" table

# h. Delete an entry from the table where the passenger name is Piyush and commit this change in the database. (1 mark)

DELETE FROM passenger where passenger_name ='piyush';

/*this is query which is to delete a row from "passenger" table when the passenger_name is piyush is exists */

SELECT * FROM passenger;
/* retrive all rows and columns from the table "passenger" and displays all the updated and deleted values from the table.
the output is piyush individual row got deleted*/

COMMIT;
/*this query is to commit which is the database as changes made its atomatically saves permanently .its typically used to save the database permanently is in autocommit mode and explicit commit mode is needed whenever required */

# i. Truncate the table passenger and comment on the number of rows in the table (explain if required). (1 mark)

TRUNCATE TABLE passenger;

-- this query removes all the rows from the "passenger" table,effectively emptying the table.its a faster alternative way to deleteing all the rows individually in a table.

SELECT * FROM passenger;
-- this query will retrieves all the rows and columns from the "passenger" table after thr truncation.since the table has been truncated . so the "passenger" table will be empty.

# j. Delete the table passenger from the database. (1 mark)

DROP TABLE passenger;
-- this query is to drop(delete) the "passenger" table from the database,removing the table from the database and its assosiated data. 

SHOW TABLES;
-- this query displays a list af all the tables in the current database(travego_travellers) after the "passenger" table has been dropped. so the only "price" table will be appearing in the current database(Travego_travellers). 

-- all the questions with query and explaination are given. 
