-- Basic summary stats
SELECT
    COUNT(*)                          AS total_patients,
    ROUND(AVG(Age), 1)               AS avg_age,
    ROUND(AVG(Cost), 0)              AS avg_cost,
    ROUND(AVG(Length_of_Stay), 1)    AS avg_los,
    ROUND(AVG(Satisfaction), 2)      AS avg_satisfaction,
    SUM(CASE WHEN Readmission = 'Yes'
             THEN 1 ELSE 0 END)      AS total_readmissions
FROM patients;
