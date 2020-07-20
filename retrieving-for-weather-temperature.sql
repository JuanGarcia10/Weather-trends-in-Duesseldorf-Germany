/* Find the closest city to Düsseldorf, Germany */

SELECT *
FROM city_list
WHERE country = 'Germany'

/* closest city is Munich

/* Download CSV for Munich temperatures */
SELECT year, city, avg_temp
FROM city_data
WHERE city = 'Munich'
ORDER BY year DESC

/* Download CSV for global temperatures */
SELECT *
FROM global_data
ORDER BY year DESC
