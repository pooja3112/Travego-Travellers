######################### TRAVEGO_TRAVELLERS GRADED PROJECT ###############################
CREATE DATABASE IF NOT EXISTS TRAVEGO_TRAVELLERS;
/* this query is to create a database named as TRAVEGO_TRAVELLERS,IF NOT EXISTS is a clause which is to 
says that the database not exists only create the database.
*/

USE TRAVEGO_TRAVELLERS;
/* this query is to use the current database and the all queries as to be excuted in this database itself*/

CREATE TABLE price(id INT PRIMARY KEY,
                   Bus_Type VARCHAR(20),
                   Distance INT,
                   price INT
                   );
/*this query is to create a table name as "price" it has 4 column which is of
 id specified as (integer) with (primary key),bus_type as (string),distance as (integer),price as (integer) */

DESCRIBE price;
-- this query is to display the structure of the "price" table by providing column "names","datatypes","constraints"

CREATE TABLE passenger(Passenger_id INT PRIMARY KEY,
                       Passenger_name VARCHAR(20),
                       Category VARCHAR(20),
                       Gender VARCHAR(20),
					   Boarding_City VARCHAR(20),
					   Destination_City VARCHAR(20),
                       Distance INT,
                       Bus_Type VARCHAR(20),
					  FOREIGN KEY(passenger_id) REFERENCES price(id));
                      
 /*this query is to create a table name as "passenger" it has 8 column which is of
 passenger_id specified as (integer) with primary key,passenger_name as (string),category as (string),gender as (string),boarding_city as (string),
 destination as (string),bus_type as (string),distance as (integer),
 the passenger_id column also specified as (foreign key) with references of the "price" table price(id) */                     

DESCRIBE passenger;
/* this query is to display the structure of the "passenger" table by providing column "names","datatypes","constraints"*/

INSERT INTO price VALUES(1, 'Sleeper', 350, 770),
                        (2, 'Sleeper', 500, 1100),
                        (3, 'Sleeper', 600, 1320),
                        (4 ,'Sleeper' ,700 ,1540),
                        (5, 'Sleeper', 1000, 2200),
                        (6 ,'Sleeper' ,1200 ,2640),
					    (7, 'Sleeper', 1500, 2700),
                        (8, 'Sitting' ,500 ,620),
                        (9, 'Sitting', 600, 744),
						(10 ,'Sitting' ,700 ,868),
                        (11,'Sitting', 1000, 1240),
						(12, 'Sitting' ,1200, 1488),
					    (13, 'Sitting', 1500, 1860);
/* this query is to insert multiple rows data into the "price" table which is already created table as "price"
 in each row contains specified values are entered with parentheses and sepearated by commas.
 */ 

SELECT * FROM price;
-- retrive all rows and columns from the table "price" and displays all the inserted values from the table.

INSERT INTO passenger VALUES(1, 'Sejal', 'AC', 'F', 'Bengaluru', 'Chennai', 350, 'Sleeper'),
							(2, 'Anmol', 'Non-AC', 'M', 'Mumbai', 'Hyderabad', 700, 'Sitting'),
							(3, 'Pallavi', 'AC', 'F', 'Panaji', 'Bengaluru', 600, 'Sleeper'),
							(4, 'Khusboo', 'AC', 'F', 'Chennai', 'Mumbai', 1500, 'Sleeper'),
                            (5, 'Udit', 'Non-AC', 'M', 'Trivandrum', 'Panaji', 1000, 'Sleeper'),
                            (6, 'Ankur', 'AC', 'M', 'Nagpur', 'Hyderabad', 500, 'Sitting'),
                            (7, 'Hemant', 'Non-AC', 'M', 'Panaji', 'Mumbai', 700, 'Sleeper'),
                            (8, 'Manish', 'Non-AC', 'M', 'Hyderabad', 'Bengaluru', 500, 'Sitting'),
                            (9, 'Piyush', 'AC', 'M', 'Pune', 'Nagpur', 700, 'Sitting'); 

/* this query is to insert multiple rows data into the "passengers" table which is already created table as "passenger"
 in each row contains specified values are entered with parentheses and sepearated by commas.
 */ 

SELECT * FROM passenger;
-- retrive all rows and columns from the table "passenger" and displays all the inserted values from the table.


