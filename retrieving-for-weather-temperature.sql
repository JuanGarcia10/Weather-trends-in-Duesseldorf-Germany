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

/* Download both information in one file joined by the year */
SELECT m.year AS munich_year,
       g.year AS global_year,
       m.city,
       m.avg_temp AS munich_avg_temp,
       g.avg_temp AS global_avg_temp
FROM city_data m
JOIN global_data g
ON m.year = g.year
WHERE m.city = 'Munich'
ORDER BY g.year 
