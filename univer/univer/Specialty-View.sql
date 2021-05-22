CREATE VIEW SpecialtyInformation AS
SELECT G.GroupName, S.SpecialtyName
FROM Groups AS G
INNER JOIN Specialties AS S
ON G.ID_Specialty=S.ID