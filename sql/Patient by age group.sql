-- Patient by Age Group
SELECT
    CASE
        WHEN Age < 30            THEN '18-29'
        WHEN Age BETWEEN 30 AND 44 THEN '30-44'
        WHEN Age BETWEEN 45 AND 59 THEN '45-59'
        WHEN Age BETWEEN 60 AND 74 THEN '60-74'
        ELSE '75+'
    END                          AS age_group,
    COUNT(*)                     AS patient_count,
    ROUND(AVG(Cost), 0)          AS avg_cost,
    ROUND(AVG(Length_of_Stay),1) AS avg_los
FROM patients
GROUP BY age_group
ORDER BY MIN(Age);
