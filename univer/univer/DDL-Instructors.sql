CREATE TABLE Instructors
(
ID INT CONSTRAINT PK_Instructor PRIMARY KEY,
ID_Department INT CONSTRAINT FK_Instructor_Department FOREIGN KEY REFERENCES Departments(ID),
ID_Position INT CONSTRAINT FK_Instructor_Position FOREIGN KEY REFERENCES Positions(ID),
InstructorName NVARCHAR(50) CONSTRAINT UQ_Instructors_InstructorName NOT NULL
);