CREATE TABLE Instructors_Disciplines
(ID INT CONSTRAINT PK_Instructor_Discipline PRIMARY KEY,
ID_Instructor INT CONSTRAINT FK_Instructors_Disciplines_Instructor FOREIGN KEY REFERENCES Instructors(ID),
ID_Discipline INT CONSTRAINT FK_Instructors_Disciplines_Discipline FOREIGN KEY REFERENCES Disciplines(ID),
ID_DisciplineType INT CONSTRAINT FK_Instructors_Disciplines_DisciplineType FOREIGN KEY REFERENCES DisciplineTypes(ID))