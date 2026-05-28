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