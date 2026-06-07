-- Average Cost by Condition (Ranked)
SELECT
    Condition_Name,
    COUNT(*)                      AS patient_count,
    ROUND(AVG(Cost), 0)           AS avg_cost,
    MIN(Cost)                     AS min_cost,
    MAX(Cost)                     AS max_cost,
    RANK() OVER (ORDER BY AVG(Cost) DESC) AS cost_rank
FROM patients
GROUP BY Condition_Name
ORDER BY avg_cost DESC;
