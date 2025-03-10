# Exercise 0

## 3. Conceptual ERD to words

This is an ERD conceptual diagram that a database designer and the business stakeholders agreed upon in a car rental company called Carent.

<a href="https://youtu.be/CCqQF7LZVqI" target="_blank">
  <img src="https://github.com/kokchun/assets/blob/main/data_modeling/car_rental.png?raw=true" alt="course structure" width="500">
</a>        
                 
a) Describe the entities in this conceptual ERD.

b) Write out the relationship labels.

c) Describe the relationships between the entities (one-to-many, one-to-one and many-to-many).

d) Define the relationship statement for example: "A Customer can have one or more Rentals".

### Solution

a) entities: 
Customer: customer_id, name, contact_info   
Rental: rental_id, rental_date, return_date total_cost     
Car: car_id, brand, model, year, license_plate

b) 
Customer & Rental: "makes" 
Rental & Car: "includes" 

c)  
Customer -one to many - Rental    
Rental - many to one - Car

d) 
A Customer can have one or more Rentals.  
A Rentals can have one or zero Customer .     
A Car can have one or more Rentals.     
A Rentals can have one or zero Car.   






