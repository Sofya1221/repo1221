CREATE VIEW StudentInformation AS
SELECT S.ID, S.StudentName, S.RecordBook, G.GroupName, G.Course, SP.SpecialtyName, D.DepartmentName
FROM Students AS S
INNER JOIN Groups AS G
ON S.ID_Group=G.ID
INNER JOIN Specialties AS SP
ON G.ID_Specialty=SP.ID
INNER JOIN Departments AS D
ON SP.ID_Department=D.ID