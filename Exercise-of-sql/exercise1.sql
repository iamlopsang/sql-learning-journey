## Exercise 1: Basic SQL Queries.

## Table Overview

    Table Name: cities

        Columns include:
        > city
        > country
        > population
        > latitude
        > longitude

    The table is shown below, and the queries in exercise.sql are solved based on this dataset.

        | city                | country       | population | latitude  | longitude    |
        |---------------------|---------------|------------|-----------|--------------|
        | Guadalajara         | Mexico        | 1500800    | 20.659699 | -103.349609  |
        | Toronto             | Canada        | 2795060    | 43.653226 | -79.383184   |
        | Houston             | United States | 2195914    | 29.760427 | -95.369803   |
        | New York            | United States | 8405837    | 40.712784 | -74.005941   |
        | Philadelphia        | United States | 1553165    | 39.952584 | -75.165222   |
        | Havana              | Cuba          | 2106146    | 23.05407  | -82.345189   |
        | Mexico City         | Mexico        | 8555500    | 19.432608 | -99.133208   |
        | Phoenix             | United States | 1513367    | 33.448377 | -112.074037  |
        | Los Angeles         | United States | 3884307    | 34.052234 | -118.243685  |
        | Ecatepec de Morelos | Mexico        | 1742000    | 19.601841 | -99.050674   |
        | Montreal            | Canada        | 1717767    | 45.501689 | -73.567256   |
        | Chicago             | United States | 2718782    | 41.878114 | -87.629798   |
        |-----------------------------------------------------------------------------|

##  Questions:
    -- 1.List all the Canadian cities and their populations.

        SELECT city, population
        FROM cities
        WHERE country="Canada";
        -- Explanation: This query selects the city and population columns from the cities table where the country is "Canada". It will return a list of all Canadian cities along with their populations.

    2.Order all the cities in the United States by their latitude from north to south.

        SELECT city,latitude
        FROM cities
        WHERE country="United States"
        ORDER BY latitude DESC;
        -- Explanation: This query selects the city and latitude columns from the cities table where the country is "United States". It orders the results by latitude in descending order, which means it will list the cities from north to south.    

    3.List all the cities west of Chicago, ordered from west to east.

        SELECT city, longitude
        FROM cities
        WHERE longitude<(
            SELECT longitude 
            FROM cities
            WHERE city="Chicago"
        )
        ORDER BY logitude ASC;
        -- Explanation: This query selects the city and longitude columns from the cities table where the longitude is less than the longitude of Chicago. It uses a subquery to find the longitude of Chicago. The results are ordered by longitude in ascending order, which means it will list the cities from west to east. 

    4.List the two largest cities in Mexico (by population).

        SELECT city, population
        FROM cities
        WHERE country="Mexico"
        ORDER BY population DESC
        LIMIT 2;
        -- Explanation: This query selects the city and population columns from the cities table, orders the results by population in descending order, and limits the output to the top 2 rows. This will return the two largest cities in Mexico by population.   

    5.List the third and fourth largest cities (by population) in the United States and their population.

        SELECT country, population
        FROM cities
        WHERE country="United States"
        ORDER BY population DESC
        LIMIT 4 OFFSET 2;
        -- Explanation: This query selects the country and population columns from the cities table where the country is "United States". It orders the results by population in descending order, limits the output to 4 rows, and offsets the first 2 rows. This means it will return the third and fourth largest cities in the United States by population.     


        --    ## Easy Level ##

    -- List all cities in Mexico.

        SELECT city
        FROM cities
        WHERE country = "Mexico";
        -- Explanation: This query selects the city column from the cities table where the country is "Mexico". It will return a list of all cities in Mexico. 

    -- Show the city and population of all cities in Canada.

        SELECT city, population
        FROM cities
        WHERE country = "Canada";
        -- Explanation: This query selects the city and population columns from the cities table where the country is "Canada". It will return a list of all cities in Canada along with their populations. 
        
    -- List all cities with a population greater than 3,000,000.

        SELECT city, population
        FROM cities
        WHERE population > 3000000;
        -- Explanation: This query selects the city and population columns from the cities table where the population is greater than 3,000,000. It will return a list of all such cities.
        
    -- Show all cities ordered by population from highest to lowest.

        SELECT city, population
        FROM cities
        ORDER BY population DESC;
        -- Explanation: This query selects the city and population columns from the cities table and orders the results by population in descending order.

    -- List all cities ordered alphabetically by city name.

        SELECT city
        FROM cities
        ORDER BY city ASC;
        -- Explanation: This query selects the city column from the cities table and orders the results alphabetically by city name.

    -- Show the northernmost city (highest latitude).

        SELECT city, latitude
        FROM cities
        ORDER BY latitude DESC
        LIMIT 1;
        -- Explanation: This query selects the city and latitude columns from the cities table and orders the results by latitude in descending order, limiting the output to the top row.

    -- Show the westernmost city (smallest longitude).

        SELECT city, longitude
        FROM cities
        ORDER BY longitude ASC
        LIMIT 1;
        -- Explanation: This query selects the city and longitude columns from the cities table and orders the results by longitude in ascending order, limiting the output to the top row.

    -- List all cities in the United States.

        SELECT city
        FROM cities
        WHERE country = "United States";
        -- Explanation: This query selects the city column from the cities table where the country is "United States". It will return a list of all cities in the United States.

    -- Show all cities with population less than 2,000,000.

        SELECT city, population
        FROM cities
        WHERE population < 2000000;
        -- Explanation: This query selects the city and population columns from the cities table where the population is less than 2,000,000. It will return a list of all such cities.

    -- List the three largest cities in the table.

        SELECT city, population
        FROM cities
        ORDER BY population DESC
        LIMIT 3;
        -- Explanation: This query selects the city and population columns from the cities table and orders the results by population in descending order, limiting the output to the top 3 rows.


        -- ## Intermediate Level ##

    -- List all cities east of New York.

        SELECT city, longitude
        FROM cities
        WHERE longitude > (
            SELECT longitude
            FROM cities
            WHERE city = 'New York'
        );
        -- Explanation: This query selects the city and longitude columns from the cities table where the longitude is greater than the longitude of New York. It uses a subquery to find the longitude of New York.    

    -- Show all cities south of Toronto.

        SELECT city, latitude
        FROM cities
        WHERE latitude < (
        SELECT latitude
        FROM cities
        WHERE city = "Toronto");
        -- Explanation: This query selects the city and latitude columns from the cities table where the latitude is less than the latitude of Toronto. It uses a subquery to find the latitude of Toronto.     

    -- List all Mexican cities ordered by population descending.

        SELECT city, population
        FROM cities
        WHERE country = 'Mexico'
        ORDER BY population DESC;
        -- Explanation: This query selects the city and population columns from the cities table where the country is "Mexico". It orders the results by population in descending order.    

    -- Find the second largest city in Canada.
    
        SELECT city, population
        FROM cities
        WHERE country = 'Canada'
        ORDER BY population DESC
        LIMIT 1 OFFSET 1;
        -- Explanation: This query selects the city and population columns from the cities table where the country is "Canada". It orders the results by population in descending order, limits the output to 1 row, and offsets the first row. This means it will return the second largest city in Canada by population.  

    -- Show the fourth largest city overall.

        SELECT city, population
        FROM cities
        ORDER BY population DESC
        LIMIT 1 OFFSET 3;
        -- Explanation: This query selects the city and population columns from the cities table and orders the results by population in descending order. It limits the output to 1 row and offsets the first 3 rows, which means it will return the fourth largest city overall by population.    

    -- List cities whose longitude is smaller than Houston’s longitude.

        SELECT city, population, longitude
        FROM cities
        WHERE longitude < (
        SELECT longitude
        FROM cities
        WHERE city = "Houston");
        -- Explanation: This query selects the city, population, and longitude columns from the cities table where the longitude is less than the longitude of Houston. It uses a subquery to find the longitude of Houston.    

    -- Show all cities north of Mexico City.

    
        SELECT city, latitude
        FROM cities
        WHERE latitude > (
            SELECT latitude
            FROM cities
            WHERE city = "Mexico City"
        );
        -- Explanation: This query selects the city and latitude columns from the cities table where the latitude is greater than the latitude of Mexico City. It uses a subquery to find the latitude of Mexico City.

    -- List the two southernmost cities.

        SELECT city, latitude
        FROM cities
        ORDER BY latitude ASC
        LIMIT 2;
        -- Explanation: This query selects the city and latitude columns from the cities table and orders the results by latitude in ascending order, limiting the output to the top 2 rows. This will return the two southernmost cities.  

    -- Show all countries without duplicates.

        SELECT DISTINCT country
        FROM cities;
        -- Explanation: This query selects the distinct country values from the cities table, which will return a list of all unique countries represented in the table.    

    -- Count how many cities belong to the United States.

        SELECT COUNT(*)
        FROM cities
        WHERE country = "United States";
        -- Explanation: This query counts the number of rows in the cities table where the country is "United States". It will return the total number of cities that belong to the United States.      

        
        -- ## Challenge Questions ##

        -- Show cities whose population is between 1,500,000 and 3,000,000.

            SELECT city, population
            FROM cities
            WHERE population BETWEEN 1500000 AND 3000000
            ORDER BY population DESC;
            -- Explanation: This query selects the city and population columns from the cities table where the population is between 1,500,000 and 3,000,000. It orders the results by population in descending order.  

        -- Show the fifth largest city in the table.

            SELECT city, population
            FROM cities
            ORDER BY population DESC
            LIMIT 1 OFFSET 4;
            -- Explanation: This query selects the city and population columns from the cities table and orders the results by population in descending order. It limits the output to 1 row and offsets the first 4 rows, which means it will return the fifth largest city overall by population. 

        -- Find cities that are both west of Chicago and north of Houston.

            SELECT city, latitude, longitude
            FROM cities
            WHERE longitude < (
                SELECT longitude
                FROM cities
                WHERE city = 'Chicago'
            )
            AND latitude > (
                SELECT latitude
                FROM cities
                WHERE city = 'Houston'
            );
            -- Explanation: This query selects the city, latitude, and longitude columns from the cities table where the longitude is less than the longitude of Chicago and the latitude is greater than the latitude of Houston. It uses subqueries to find the longitude of Chicago and the latitude of Houston. This will return cities that are both west of Chicago and north of Houston.     


            -- List all cities whose longitude is greater than Havana's longitude.

            SELECT city, longitude
            FROM cities                     
            WHERE longitude > (
                SELECT longitude
                FROM cities
                WHERE city = 'Havana'
            );
            -- Explanation: This query selects the city and longitude columns from the cities table where the longitude is greater than the longitude of Havana. It uses a subquery to find the longitude of Havana. This will return a list of all cities whose longitude is greater than Havana's longitude.      

            -- List all cities whose latitude is greater than Chicago's latitude.

            SELECT city, latitude
            FROM cities
            WHERE latitude > (
                SELECT latitude
                FROM cities
                WHERE city = 'Chicago'
            );

            -- Explanation: This query selects the city and latitude columns from the cities table where the latitude is greater than the latitude of Chicago. It uses a subquery to find the latitude of Chicago. This will return a list of all cities whose latitude is greater than Chicago's latitude. 
            

            -- List the city and population of the largest city in Canada.

            SELECT city, population 
            FROM cities
            WHERE country="Canada"
            ORDER BY population DESC
            LIMIT 1;

            -- Explanation: This query selects the city and population columns from the cities table where the country is "Canada". It orders the results by population in descending order and limits the output to the top row, which will return the city and population of the largest city in Canada.    

            -- List the city and population of the second largest city in Mexico.

            SELECT city, population
            FROM cities
            WHERE country = "Mexico"
            ORDER BY population DESC
            LIMIT 1 OFFSET 1;  

            -- Explanation: This query selects the city and population columns from the cities table where the country is "Mexico". It orders the results by population in descending order, limits the output to 1 row, and offsets the first row. This means it will return the city and population of the second largest city in Mexico.     
            
                        