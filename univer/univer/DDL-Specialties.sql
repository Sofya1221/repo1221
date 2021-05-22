CREATE TABLE Specialties
(
ID INT CONSTRAINT PK_Specialty PRIMARY KEY,
ID_Department INT CONSTRAINT FK_Specialty_Department FOREIGN KEY REFERENCES Departments(ID),
SpecialtyName NVARCHAR(30) CONSTRAINT UQ_Specialties_SpecialtyName NOT NULL
);