
=======================SELF JOIN=======================

    -- 1. Find each employee and their manager.

SELECT e.name AS employee_name,
       m.name AS manager_name
FROM employees AS e, employees AS m
WHERE e.manager_id = m.employee_id;

-- Explanation: Use the employees table twice.
-- e represents the employee, and m represents the manager.
-- Match the employee's manager_id with the manager's employee_id.