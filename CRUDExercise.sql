SELECT * FROM Departments
--Problem 1

SELECT [Name] from Departments
--Problem 2

SELECT 
	[FirstName]
	,[LastName]
	,[Salary]
FROM[dbo].[Employees]
--Problem 3

SELECT 
	[FirstName]
	,[MiddleName]
	,[LastName]
FROM [Employees]
--Problem 4

SELECT 
    CONCAT([FirstName],'.',[LastName],'@softuni.bg')
	AS 'Full Email Address'
FROM [Employees]
--Problem 5

SELECT Distinct [Salary] 
FROM [Employees] 
--Problem 6

SELECT * 
FROM [Employees]
WHERE [JobTitle]='Sales Representative'
--Problem 7

SELECT 
	[FirstName]
	,[LastName]
	,[JobTitle]
FROM [Employees]
	WHERE Salary between 20000 and 30000
--Problem 8

SELECT 
	CONCAT([FirstName],' ',[MiddleName],' ',[LastName],' ')
	AS 'Full Name'
	FROM [Employees]
	Where [Salary] = 25000
	OR Salary =14000
	OR  Salary =12500
	OR Salary =23600
--Problem 9

SELECT 
	[FirstName]
	,[LastName]
	FROM Employees
	WHERE ManagerID is Null
--Problem 10

SELECT 
	[FirstName]
	,[LastName]
	, [Salary]
	FROM Employees
	WHERE Salary>50000
	ORDER BY Salary DESC
--Problem 11
	 
SELECT top(5)
	[FirstName]
	,[LastName]
	FROM Employees
	ORDER BY Salary DESC
--Problem 12

SELECT 
	[FirstName]
	,[LastName]
	FROM Employees
	WHERE departmentID !=4
--Problem 13

SELECT * FROM Employees
	order by Salary DESC, FirstName, LastName DESC, MiddleName
--Problem 14

CREATE VIEW V_EmployeesSalaries AS
	SELECT 
		FirstName
		,LastName
		,Salary
FROM Employees

Select * from V_EmployeesSalaries
--Problem 15

CREATE VIEW V_EmployeeNameJobTitle AS
	SELECT 
	CONCAT(FirstName,' ',MiddleName, ' ' ,LastName) as 'Full Name'
		   ,JobTitle
	FROM Employees

SELECT * FROM V_EmployeeNameJobTitle
--Problem 16

--ALTER TABLE [People]
--ADD CONSTRAINT Df DEFAULT ('No biography') FOR	[Biography]

SELECT DISTINCT JobTitle From Employees
--Problem 17

SELECT top(10) * FROM Projects
	ORDER BY StartDate, [Name]
--Problem 17

SELECT top(7) 
	FirstName, LastName, HireDate
FROM Employees
	ORDER BY HireDate DESC
--Problem 18

--SELECT * From Employees Where DepartmentID=3
--UPDATE Employees
--	SET Salary= Salary * 1.10,
--	JobTitle= 'Senior '+ JobTitle
--	Where DepartmentID=3 AND
--	Salary >50000

SELECT * FROM Departments
	update Employees
	SET Salary = Salary * 1.12
	WHERE [DepartmentID] IN (1,2,4,11) 
	
	Select Salary from Employees
--Problem 19

SELECT peakName from Peaks
	order by PeakName 
--Problem 20
	
SELECT top(30) CountryName, [Population] FROM Countries
	where ContinentCode = 'EU'
	Order by Population DESC, CountryName
--Problem 21

SELECT 
	 CountryName
	,CountryCode
	,CASE 
		WHEN [CurrencyCode] = 'EUR' THEN 'Euro'
		ELSE 'Not Euro'
		end as [Currency]
	FROM Countries
	Order by CountryName
--Problem 22

select [Name] from Characters
	order by [Name]



