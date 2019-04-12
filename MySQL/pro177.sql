--CREATE FUNCTION getNthHighestSalary

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    SET N = N-1;
  RETURN (
     select ifnull((Select distinct salary from Employee
     order by Salary desc
     limit 1 offset N),null) 
  );
END