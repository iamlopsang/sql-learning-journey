                    -- Level 1 --

    -- a. Display the student name and the course name.

    -- Hint: You need all three tables.

    SELECT s.name, c.course_name
    FROM students AS s
    INNER JOIN enrollments AS e
    ON s.student_id = e.student_id
    INNER JOIN courses AS c
    ON c.course_id = e.course_id;

-- Explanation: Join the three tables using student and course IDs to display each student's
-- name and the course they are enrolled in.

    -- b. Display the student name, course name, and grade.

    SELECT s.name, c.course_name, e.grade
    FROM students AS s
    INNER JOIN enrollments AS e
    ON s.student_id = e.student_id
    INNER JOIN courses AS c
    ON c.course_id = e.course_id;

-- Explanation: Join the three tables to display each student's name, course name, and grade.

    -- c. Display the student name, city, and course name.

    SELECT s.name, s.city, c.course_name
    FROM students AS s
    INNER JOIN enrollments AS e
    ON s.student_id = e.student_id
    INNER JOIN courses AS c
    ON c.course_id = e.course_id;  

-- Explanation: Join the three tables to display the student's name and city along with the course 
-- they are enrolled in.


                    -- 🟡 Level 2 --

    -- a. Find students who are taking SQL and display their name and grade.

    -- Hint: You'll need:
    -- WHERE c.course_name = 'SQL'

    SELECT s.name, e.grade
    FROM students AS s
    INNER JOIN enrollments AS e
    ON s.student_id = e.student_id
    INNER JOIN courses AS c
    ON c.course_id = e.course_id
    WHERE c.course_name = 'SQL';

-- Explanation: Join the three tables and find students taking SQL, displaying their name and grade.

    -- b. Find students with a grade greater than 85 and display:

    -- student name
    -- course name
    -- grade

    SELECT s.name, c.course_name, e.grade
    FROM students AS s
    INNER JOIN enrollments AS e
    ON s.student_id = e.student_id
    INNER JOIN courses AS c
    ON c.course_id = e.course_id
    WHERE e.grade > 85;

-- Explanation: Join the three tables and display students whose grade is greater than 85 along with their course and grade.
   
    -- Display the student name, course name, and instructor for every enrollment.

    -- 🟠 Level 3
    -- Question 7

    -- Find students from Chicago or Seattle and display:

    -- student name
    -- city
    -- course name
    -- grade

    -- Hint: You can use IN.

    -- Question 8

    -- Find students who scored 80 or higher in their courses and sort them from highest grade to lowest.

    -- Question 9

    -- Find all courses taken by Alice and display:

    -- course name
    -- instructor
    -- grade
    -- 🔴 Challenge
    -- Question 10

    -- Find the students who scored 85 or higher in SQL.

    -- Display:

    -- student name
    -- course name
    -- instructor
    -- grade