-- Cost & Length of Stay by Gender
SELECT
    Gender,
    COUNT(*)                        AS patient_count,
    ROUND(AVG(Cost), 0)             AS avg_cost,
    ROUND(AVG(Length_of_Stay), 1)   AS avg_los,
    ROUND(AVG(Satisfaction), 2)     AS avg_satisfaction
FROM patients
GROUP BY Gender;
