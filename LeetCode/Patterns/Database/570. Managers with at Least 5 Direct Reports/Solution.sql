SELECT 
    manager.name
FROM Employee manager
JOIN Employee emp
ON manager.id = emp.managerId
GROUP BY
    manager.id,
    manager.name
HAVING COUNT(emp.id) >= 5;


