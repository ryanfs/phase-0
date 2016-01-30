select * from states;

select * from regions;

select state_name, population from states;

select state_name, population from states
order by population desc;

select state_name, population_density from states
   where population_density > 50
   order by population_density asc;

select state_name from states
   where population between 1000000 and 1500000;

select state_name, region_id from states
   order by region_id asc;

select region_name from regions
   where region_name like '%central%';

select region_name, state_name
   from states
   left join regions on
   states.region_id = regions.id
   order by region_name asc;

# Database Schema
![My Clueless Database Schema](databse.png)


 - What are databases for?
- Storing information about objects in an organized set of tables. They are indexed and can be queried to serve up the information.

 - What is a one-to-many relationship?
- Each row in one table is related to all rows in another table.

 - What is a primary key? What is a foreign key? How can you determine which is which?
- Primary key is the ID for an item (or row) in a table. The foreign key is the reference to a primary key in another table. You can determine which is which because the primary key is usually called 'id' and the foreign key is 'name_of_object_id'

 - How can you select information out of a SQL database? What are some general guidelines for that?
- You can query for the information with an SQL query. The guidelines are to select a column from the database and y