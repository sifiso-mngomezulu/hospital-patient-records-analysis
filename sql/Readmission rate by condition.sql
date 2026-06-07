-- Readmittion Rate by Condition
SELECT
    Condition_Name,
    COUNT(*)                                         AS total_patients,
    SUM(CASE WHEN Readmission = 'Yes' THEN 1 ELSE 0 END) AS readmitted,
    ROUND(
        SUM(CASE WHEN Readmission = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*), 1
    )                                                AS readmission_rate_pct
FROM patients
GROUP BY Condition_Name
ORDER BY readmission_rate_pct DESC;
