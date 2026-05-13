List all directors of Pixar movies (alphabetically), without duplicates

SELECT DISTINCT director
FROM movies
WHERE studio = 'Pixar'
ORDER BY director ASC;