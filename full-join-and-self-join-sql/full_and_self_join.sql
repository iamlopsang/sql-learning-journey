
=======================SELF JOIN=======================

    -- 1. Find each employee and their manager.

SELECT e.name AS employee_name,
       m.name AS manager_name
FROM employees AS e, employees AS m
WHERE e.manager_id = m.employee_id;

-- Explanation: Use the employees table twice.
-- e represents the employee, and m represents the manager.
-- Match the employee's manager_id with the manager's employee_id.

    -- 2. Find all employees who report directly to Alice.

    SELECT e.name AS employee_name,
    m.name AS manager_name
    FROM employees AS e, employees AS m
    WHERE e.manager_id = m.employee_id
    AND m.name = 'Alice';

-- Explanation: Use the employees table twice.
-- e represents the employee, and m represents the manager.
-- Match the employee's manager_id with the manager's employee_id.
-- Filter the manager's name to find employees who report directly to Alice.

    -- 3. Display every employee who has a manager.

    SELECT e.employee_id AS employee_id,
    e.name AS employee_name,
    m.name AS manager_name,
    e.department AS department
    FROM employees AS e, employees AS m
    WHERE e.manager_id = m.employee_id;

-- Explanation: Use the employees table twice.
-- e represents the employee, and m represents the manager.
-- Match e.manager_id with m.employee_id to find each employee's manager.
-- Use e.department because the question asks for the employee's department.

    -- 4. Find employees whose manager works in the IT department.

    SELECT e.name AS employee_name,
    m.name AS manager_name,
    m.department AS manager_department
    FROM employees AS e, employees AS m
    WHERE e.manager_id = m.employee_id
    AND m.department = 'IT';

-- Explanation: Use the employees table twice.
-- e represents the employee, and m represents the manager.
-- Match e.manager_id with m.employee_id to find the employee's manager.
-- Filter m.department to find managers who work in the IT department.

    -- 5. Find employees who have the same manager as another employee.

    SELECT e.name AS employee_name,
    e2.name AS other_employee_name,
    m.name AS manager_name
    FROM employees AS e,
    employees AS e2,
    employees AS m
    WHERE e.manager_id = e2.manager_id
    AND e.manager_id = m.employee_id
    AND e.employee_id < e2.employee_id;

-- Explanation: Use the employees table three times.
-- e represents the first employee.
-- e2 represents the other employee.
-- m represents their manager.
-- Match e.manager_id and e2.manager_id to find employees with the same manager.
-- Match e.manager_id with m.employee_id to find the manager's name.
-- e.employee_id < e2.employee_id prevents employees from being matched with themselves
-- and prevents the same pair from appearing twice in reverse order.

    -- 6. Find the names of all employees who have a manager.

    SELECT name AS employee_name
    FROM employees
    WHERE manager_id IS NOT NULL;

-- Explanation: An employee has a manager when their manager_id is not NULL.

    -- 7. Find each employee and their manager.

    SELECT e.name AS employee_name,
    m.name AS manager_name
    FROM employees AS e, employees AS m
    WHERE e.manager_id = m.employee_id;

-- Explanation: e represents the employee and m represents the manager.
-- Match the employee's manager_id with the manager's employee_id.

    -- 8. Find all employees who report directly to Alice.

    SELECT e.name AS employee_name,
    m.name AS manager_name
    FROM employees AS e, employees AS m
    WHERE e.manager_id = m.employee_id
    AND m.name = 'Alice';

-- Explanation: e represents the employee and m represents the manager.
-- Match e.manager_id with m.employee_id to connect the employee to the manager.
-- Filter m.name to find employees whose manager is Alice.

    -- 9. Find employees whose manager works in the IT department.

    SELECT e.name AS employee_name,
    m.name AS manager_name,
    m.department AS manager_department
    FROM employees AS e, employees AS m
    WHERE e.manager_id = m.employee_id
    AND m.department = 'IT';

-- Explanation: e represents the employee and m represents the manager.
-- Match e.manager_id with m.employee_id to find the manager.
-- Filter m.department to find managers who work in IT.

    -- 10. Find employees whose manager is also an employee in the same department.

    SELECT e.name AS employee_name,
    m.name AS manager_name,
    e.department AS department
    FROM employees AS e, employees AS m
    WHERE e.manager_id = m.employee_id
    AND e.department = m.department;

-- Explanation: e represents the employee and m represents the manager.
-- Match e.manager_id with m.employee_id to find the manager.
-- Compare e.department and m.department to find employees
-- whose manager works in the same department.

    -- 11. Find the employee whose employee_id is 2 and display their manager.

    SELECT e.name AS employee_name,
    m.name AS manager_name
    FROM employees AS e, employees AS m
    WHERE e.employee_id = 2
    AND e.manager_id = m.employee_id;

-- Explanation: e represents the employee and m represents the manager.
-- First find employee 2, then match their manager_id with the manager's employee_id.

    -- 12. Find the name and department of each employee's manager.

    SELECT e.name AS employee_name,
    m.name AS manager_name,
    m.department AS manager_department
    FROM employees AS e, employees AS m
    WHERE e.manager_id = m.employee_id;

-- Explanation: Match each employee's manager_id with the manager's employee_id.
-- m.name and m.department give us the manager's information.

    -- 13. Find employees whose department is different from their manager's department.

    SELECT e.name AS employee_name,
    e.department AS employee_department,
    m.name AS manager_name,
    m.department AS manager_department
    FROM employees AS e, employees AS m
    WHERE e.manager_id = m.employee_id
    AND e.department <> m.department;

-- Explanation: Match each employee with their manager.
-- Then compare the employee's department with the manager's department.

    -- 14. Find employees in the HR department and display their manager's name.

    SELECT e.name AS employee_name,
    m.name AS manager_name
    FROM employees AS e, employees AS m
    WHERE e.manager_id = m.employee_id
    AND e.department = 'HR';

-- Explanation: Match each employee with their manager.
-- Filter e.department because we want employees who work in HR.

    -- 15. Find Bob's manager and that manager's manager.

    SELECT e.name AS employee_name,
        m.name AS manager_name,
        mm.name AS manager_manager_name
    FROM employees AS e,
        employees AS m,
        employees AS mm
    WHERE e.manager_id = m.employee_id
    AND m.manager_id = mm.employee_id
    AND e.name = 'Bob';

-- Explanation: e represents Bob, m represents Bob's manager,
-- and mm represents Bob's manager's manager.
-- First connect Bob to Alice, then connect Alice to her manager.