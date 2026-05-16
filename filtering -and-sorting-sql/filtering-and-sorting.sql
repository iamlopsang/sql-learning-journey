List all directors of Pixar movies (alphabetically), without duplicates

SELECT DISTINCT director
FROM movies
WHERE studio = 'Pixar'
ORDER BY director ASC;

List the last four Pixar movies released (ordered from most recent to least)

SELECT title, release_date
FROM movies WHERE studio = 'Pixar'
ORDER BY release_date DESC  
LIMIT 4;

List the first five Pixar movies sorted alphabetically.

SELECT title
FROM movies WHERE studio = 'Pixar'
ORDER BY title ASC
LIMIT 5;

List all Pixar movies released in the 1990s, sorted by release date (oldest to newest)  

SELECT title, release_date
FROM movies                 
WHERE studio = 'Pixar' AND release_date >= '1990-01-01' AND release_date < '2000-01-01'
ORDER BY release_date ASC;

List the next five Pixar movies sorted alphabetically

    SELECT title
    FROM movies         
    WHERE studio = 'Pixar' AND release_date > '2020-01-01'
    ORDER BY title ASC  
    LIMIT 5;

List all Pixar movies released in the 2000s, sorted by release date (oldest to newest)
SELECT title, release_date
FROM movies
WHERE studio = 'Pixar' AND release_date >= '2000-01-01' AND release_date < '2010-01-01' 
ORDER BY release_date ASC;

    


