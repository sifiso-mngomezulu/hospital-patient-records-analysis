-- Satisfaction Score by Outcome
SELECT
    Outcome,
    COUNT(*)                        AS patient_count,
    ROUND(AVG(Satisfaction), 2)     AS avg_satisfaction,
    SUM(CASE WHEN Satisfaction >= 4
             THEN 1 ELSE 0 END)     AS high_satisfaction_count
FROM patients
GROUP BY Outcome
ORDER BY avg_satisfaction DESC;
