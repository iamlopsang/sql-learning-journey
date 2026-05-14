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
