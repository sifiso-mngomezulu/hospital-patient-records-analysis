-- Patient Count by Gender
SELECT
    Gender,
    COUNT(*)                             AS patient_count,
    ROUND(COUNT(*) * 100.0 / 984, 1)    AS pct_of_total
FROM patients
GROUP BY Gender
ORDER BY patient_count DESC;
 
