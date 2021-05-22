CREATE VIEW DisciplineInformation AS
SELECT D.DepartmentName, DS.DisciplineName
FROM Departments AS D
INNER JOIN Disciplines AS DS
ON DS.ID_Department=D.ID