CREATE TABLE DisciplineTypes
(
ID INT CONSTRAINT PK_DisciplineType PRIMARY KEY,
TypeName NVARCHAR(20) CONSTRAINT UQ_DisciplineTypes_TypeName NOT NULL
);

