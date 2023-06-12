WITH Rec_CTE AS ( 					-- select top level manager and define them as highest level (1) , they will be our criteria
    SELECT
        Id,
        Name,
        Manager,
        1 AS ManagementLevel,
        Name AS HighestGradeManager
    FROM Chart
    WHERE Manager IS NULL
    UNION ALL 						-- UNION two top level manager (those who their Manager = NULL) with the others
  
    SELECT							-- It retrieves the direct reports for each manager and increments the ManagementLevel by 1, based on the managerID column (recursive)
        c.Id,
        c.Name,
        c.Manager,
        rc.ManagementLevel + 1 AS ManagementLevel,
        rc.HighestGradeManager
    FROM Chart c
    JOIN Rec_CTE rc ON c.ManagerId = rc.Id
)
SELECT 								-- Final SELECT , it can orderd by ID or ManagementLevel 
    rc.Id,
    rc.Name,
    rc.ManagementLevel,
    rc.HighestGradeManager
FROM Rec_CTE rc;