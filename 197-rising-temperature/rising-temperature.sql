
SELECT id
FROM (
    SELECT id, recordDate, temperature, 
           LAG(recordDate) OVER (ORDER BY recordDate) AS prev_date,
           LAG(temperature) OVER (ORDER BY recordDate) AS prev_temperature
    FROM Weather
) AS temp_diff
WHERE temperature > prev_temperature 
  AND DATEDIFF(recordDate, prev_date) = 1;
