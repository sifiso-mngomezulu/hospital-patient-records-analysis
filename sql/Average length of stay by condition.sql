-- Average Lenght of Stay by Condition
SELECT
    Condition_Name,
    ROUND(AVG(Length_of_Stay), 1)  AS avg_days,
    MIN(Length_of_Stay)            AS min_days,
    MAX(Length_of_Stay)            AS max_days,
    RANK() OVER (ORDER BY AVG(Length_of_Stay) DESC) AS los_rank
FROM patients
GROUP BY Condition_Name
ORDER BY avg_days DESC;
