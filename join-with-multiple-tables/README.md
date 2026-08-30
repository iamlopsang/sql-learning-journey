##  SQL Lesson  : Multiple join with INNER JOIN

     This exercise focuses on using INNER JOIN with multiple tables to combine related data from three tables: students, enrollments, and courses.   

     The main goal of this lesson is to understand how multiple tables can be connected using related columns and how to retrieve information from all three tables in a single query.

     This lesson also practices table aliases, WHERE, IN, AND, and ORDER BY while working with multiple-table joins.
     
##  Introduction to Multiple Table JOIN:

     When information is stored in different tables, we can use 'INNER JOIN' to combine the related data.

     In the previous 'INNER JOIN' lesson, we used two tables:

        SQL:-
          SELECT m.title, b.rating
          FROM movies AS m
          INNER JOIN boxoffice AS b
          ON m.id = b.movie_id;

        In this lesson, we extend the same concept to three tables.

        ##  Tables Used:

                students
                   ↓
                enrollments
                   ↓ 
                courses    

             The 'enrollments' table acts as a connecting/bridge table between 'students' and 'courses'.

          For example:

              students.student_id 
                    ↓ 
              enrollments.student_id 
              
              enrollments.course_id
                    ↓ 
              courses.course_id   

             This allows us to find which student is enrolled in which course. 

##  Why Do We Need Multiple Table JOINs?

     The information we need may not exist in one table.

     For example:
        The 'students' table contains:

           > student_name
           > city

        The courses table contains:

           > course_name
           > instructor

        The enrollments table contains:

           > student_id 
           > course_id
           > grade

      If we want to display:

        student_name + course_name + grade

       we need information from all three tables.
       Therefore, we use multiple 'INNER JOINs' to connect them.

##  How Does Multiple Table INNER JOIN Work?

     The basic structure is:

      SQL:-

        SELECT columns
        FROM table1 AS t1

        INNER JOIN table2 AS t2
        ON t1.column = t2.column

        INNER JOIN table3 AS t3
        ON t2.column = t3.column;
        Example
        SELECT s.name, c.course_name, e.grade
        FROM students AS s
        INNER JOIN enrollments AS e
        ON s.student_id = e.student_id
        INNER JOIN courses AS c
        ON c.course_id = e.course_id;

       Explanation:

        This query connects the students, enrollments, and courses tables using their related IDs and displays the student's name, course name, and grade.

                The JOIN happens step by step:

                students
                    ↓
                student_id
                    ↓
                enrollments
                    ↓
                course_id
                    ↓
                courses    

    ## Understanding the Bridge Table:

        The 'enrollments' table is important because it connects students and courses.
        For example:

                Student:
                Alice → student_id 1

                Enrollment:
                student_id 1 → course_id 101

                Course:
                course_id 101 → SQL

        Using these relationships, SQL can determine:

                Alice → SQL

        This is why the 'enrollments' table is needed even when we don't always select columns from it.     
                    
       
         students
         | student_id | name    | city     |
         | ---------: | ------- | -------- |
         |          1 | Alice   | New York |
         |          2 | Bob     | Chicago  |
         |          3 | Charlie | Seattle  |
         |          4 | David   | Boston   |


         courses
         | course_id | course_name | instructor |
         | --------: | ----------- | ---------- |
         |       101 | SQL         | John       |
         |       102 | Python      | Sarah      |
         |       103 | Excel       | Mike       |


         enrollments

         | student_id | course_id | grade |
         | ---------: | --------: | ----: |
         |          1 |       101 |    90 |
         |          1 |       102 |    85 |
         |          2 |       101 |    78 |
         |          2 |       103 |    88 |
         |          3 |       102 |    92 |
         |          4 |       103 |    75 |
