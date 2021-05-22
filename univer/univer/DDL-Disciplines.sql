CREATE TABLE Disciplines
(
ID INT CONSTRAINT PK_Discipline PRIMARY KEY,
ID_Department INT CONSTRAINT FK_Disciplines_Department FOREIGN KEY REFERENCES Departments(ID),
DisciplineName NVARCHAR(30) CONSTRAINT UQ_Disciplines_DisciplineName NOT NULL
);