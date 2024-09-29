use ANJALI --importing database

create table Movie --creating table
(MovieId int,
MovieName varchar(100),
Hero  varchar(100));

insert into Movie  (MovieId,MovieName,Hero) values(101,'kalki','prabhas'); --inserting values into the table

select * from Movie; --show the table

alter table Movie add actress varchar(100) --adding another in the table

ALTER TABLE Movie MODIFY Hero VARCHAR(150); -- adding more charactersin the column

ALTER TABLE Movie DROP COLUMN actress; --It deletes the particular column




insert into Movie(actress) values('Deepika') where MovieId=101; 
--Here it is syntactical Error at where i.e do not use at the end where claues directly.
--if we want to use the where the use below  update set command


UPDATE movie          -- add the values in the table by using where clause.
SET actress = 'Swati'
WHERE MovieId=101;


delete  from Movie
where  actress='Deepika'; --It will delete the  entered row only

 select * from Movie;

truncate table Movie; -- it deleted entire the data/rows in the table.

drop table Movie; --It deletes the  total table from the database


----JOINS:#####JOINS#####JOINS....
 CREATE TABLE Department
 ( dept_id  int primary key,
  dept_name varchar(100) Not NULL);
  

  select * from Department;

  CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    dept_id INT,  -- This can be NULL if an employee is not assigned to any department
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);
select * from Employee;

INSERT INTO Department (dept_id, dept_name)
VALUES 
    (10, 'HR'),
    (20, 'IT'),
    (30, 'Marketing'),
    (40, 'Sales');



INSERT INTO Employee (emp_id, emp_name, dept_id)
VALUES
    (1, 'John', 10),
    (2, 'Alice', 20),
    (3, 'Bob', 10),
    (4, 'Eve', NULL),   -- Eve does not belong to any department
    (5, 'Charlie', 30);


	select * from Employee;
	Select * from Department;


	--INNER JOIN
	--It matches the values  from both  tables.

	SELECT Employee.emp_name ,Department.dept_name
	from Employee
	Inner join Department on Employee.dept_id= Department.dept_id;

	--LEFT JOIN
	--First  it will give most preference to the left table.
	-- The left table  columns are checked with the right table
	--the left table column values must be all showed  but the right table values are matched with left and right table
	-- if there is no value then it will shows NULL.
	

	SELECT e.emp_name, d.dept_name
    FROM Employee e
    LEFT JOIN Department d ON e.dept_id = d.dept_id;

	--RIGHT JOIN
	--First  it will give most preference to the Right table.
	-- The right table  columns are checked with the left table 
    --the Right table column values must be all showed. 
	--If the   id's were repeated then  it will also showed.
	--but the left table values are matched with left and right table
	-- if there is no value then it will shows NULL.


	SELECT e.emp_name, d.dept_name
    FROM Employee e
    RIGHT JOIN Department d ON e.dept_id = d.dept_id;

	--	FULL OUTER JOIN
	--It return both left and right table values.
	--if the value is not there then it will return NULL.


	SELECT e.emp_name, d.dept_name
	FROM Employee e
	FULL OUTER JOIN Department d ON e.dept_id = d.dept_id;

	

   --cross join
   --It will  returns all  combinations of columns.

SELECT e.emp_name, d.dept_name
FROM Employee e
CROSS JOIN Department d;

