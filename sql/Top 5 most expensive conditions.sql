-- Top 5 Most Expensive Conditions
SELECT
    Condition_Name,
    ROUND(AVG(Cost), 0)   AS avg_cost
FROM patients
GROUP BY Condition_Name
ORDER BY avg_cost DESC
LIMIT 5;
