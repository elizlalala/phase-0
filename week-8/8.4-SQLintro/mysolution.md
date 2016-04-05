<!-- Release 5 -->

1. Select all data for all states.

SELECT *
FROM states;

2. Select all data for all regions.

SELECT *
FROM regions;

3.  Select the state_name and population for all states.

SELECT state_name, population
FROM states;

4. Select the state_name and population for all states ordered by population. The state with the highest population should be at the top.

SELECT state_name, population
FROM states
ORDER BY population DESC;

5. Select the state_name for the states in region 7.

SELECT state_name, population
FROM states
WHERE region_id = 7;

6. Select the state_name and population_density for states with a population density over 50 ordered from least to most dense.

SELECT state_name, population_density
FROM states
ORDER BY population_density;

7. Select the state_name for states with a population between 1 million and 1.5 million people

SELECT state_name
FROM states
WHERE population >= 1000000 AND population <= 1500000;


8. Select the state_name and region_id for states ordered by region in ascending order.

SELECT state_name, region_id
FROM states
ORDER BY region_id;

9. Select the region_name for the regions with "Central" in the name.

SELECT region_name
FROM regions
WHERE region_name LIKE('%Central%');

10. Select the region_name and the state_name for all states and regions in ascending order by region_id. Refer to the region by name. (This will involve joining the tables).

SELECT region_name, state_name
FROM regions, states
ORDER BY region_id;

Reflections

Q: What are databases for?
A: Databases are used to organize, store, and quickly recall a collection of objects and their attributes.  

Q: What is a one-to-many relationship?
A: A one to many relationship exists when two an object can only have one value of an attribute, but the attribute value can exist among many objects.  For example - a human's blood type.  An individual can only have one  bood type, but that blood type is had by many people.

Q: What is a primary key? What is a foreign key? How can you determine which is which?
A: A primary key is a unique ID to a row in a specific data table. A key is "foreign" when it is referenced in a table where it is not the primary key.

