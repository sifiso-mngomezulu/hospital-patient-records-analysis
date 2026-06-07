-- Patient Cost VS Condition Average 
SELECT
    Patient_ID,
    Condition_Name,
    Cost,
    ROUND(AVG(Cost) OVER (PARTITION BY Condition_Name), 0) AS condition_avg_cost,
    Cost - ROUND(AVG(Cost) OVER (PARTITION BY Condition_Name), 0) AS cost_vs_avg,
    RANK() OVER (PARTITION BY Condition_Name ORDER BY Cost DESC) AS rank_within_condition
FROM patients
ORDER BY Condition_Name, rank_within_condition;
