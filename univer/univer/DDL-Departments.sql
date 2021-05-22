CREATE TABLE Departments
(
ID INT CONSTRAINT PK_Department PRIMARY KEY,
DepartmentName NVARCHAR(40) CONSTRAINT UQ_Departments_DepartmentName NOT NULL,
Director NVARCHAR(50) CONSTRAINT UQ_Departments_Director NOT NULL,
Abbreviation NVARCHAR(10) CONSTRAINT UQ_Departments_Abbreviaton NOT NULL
);