CREATE OR REPLACE VIEW vw_condition_summary AS
SELECT
    Condition_Name,
    COUNT(*)                                                   AS total_patients,
    ROUND(AVG(Age), 1)                                        AS avg_age,
    ROUND(AVG(Cost), 0)                                       AS avg_cost,
    ROUND(AVG(Length_of_Stay), 1)                             AS avg_los,
    ROUND(AVG(Satisfaction), 2)                               AS avg_satisfaction,
    ROUND(SUM(CASE WHEN Readmission = 'Yes' THEN 1 ELSE 0 END)
          * 100.0 / COUNT(*), 1)                              AS readmission_rate_pct,
    SUM(CASE WHEN Outcome = 'Recovered' THEN 1 ELSE 0 END)   AS recovered_count,
    SUM(CASE WHEN Outcome = 'Stable' THEN 1 ELSE 0 END)      AS stable_count
FROM patients
GROUP BY Condition_Name;

-- Query the view:
SELECT * FROM vw_condition_summary ORDER BY avg_cost DESC;
