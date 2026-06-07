DELIMITER //

CREATE PROCEDURE sp_condition_report(IN p_condition VARCHAR(60))
BEGIN
    SELECT
        Condition_Name,
        COUNT(*)                     AS total_patients,
        ROUND(AVG(Cost), 0)          AS avg_cost,
        ROUND(AVG(Length_of_Stay),1) AS avg_los,
        ROUND(AVG(Satisfaction),2)   AS avg_satisfaction,
        SUM(CASE WHEN Readmission = 'Yes'
                 THEN 1 ELSE 0 END)  AS total_readmissions
    FROM patients
    WHERE Condition_Name = p_condition OR p_condition IS NULL
    GROUP BY Condition_Name;
END //

DELIMITER ;

-- Test it:
CALL sp_condition_report('Cancer');
CALL sp_condition_report(NULL);   -- returns all conditions
