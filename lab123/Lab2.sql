/*������� 22, ������� 2*/ 
select MIN(Size) from Production.Product;
/*1)	����� ����������� ������ �� ������� Production.Product*/

select COUNT(PhoneNumber) from Person.PersonPhone where PhoneNumber like '697%';
/*2)	����� ���������� �������, ������� ���������� c 697 �� ������� Person.PersonPhone*/

select ProductLine, MAX(StandardCost) from Production.Product where ProductLine is not null group by ProductLine;
/*3)	�������� ������������ ���� ������ � ������ ������� ��������� 
ProductLine �� ������� Production.Product (�� ������� ��������� ������ ����).*/

select COUNT(LoginID) from HumanResources.Employee where LoginID like '%david%' and DATEDIFF(year, BirthDate, GETDATE()) >= 40;
/* 4)	����� ���������� ������� � ������ david (LoginID), ������� ������ 40 ��� �� ������� HumanResources.Employee .*/

select Name, StandardCost, Color, DENSE_RANK() OVER (Partition by Color Order by StandardCost) from Production.Product;
/*5)	����������� ����� � Production.Product �� ����, �������� �������� ������ ������ �����.
������� ������������, ���� �������� � ����. (������������ DENSE_RANK)*/