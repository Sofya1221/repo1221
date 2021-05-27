select query.MaleCount, query.Department
from(select count(d.BusinessEntityID) as MaleCount, d.Department 
from HumanResources.vEmployeeDepartment d
where exists(select e.BusinessEntityID from HumanResources.Employee e where e.BusinessEntityID = d.BusinessEntityID and e.Gender = 'M')
group by d.Department) query where query.MaleCount < 10;
/*1.	Показать количество сотрудников мужского пола и перечень отделов, на которых работает менее 10 
сотрудников мужского пола. Задачу решить с помощью подзапросов с использованием оператора EXISTS. 
(Представление [HumanResources].[vEmployeeDepartment] и таблица HumanResources.Employee).*/


select p.FirstName, p.LastName from Person.Person p where p.BusinessEntityID in (
select id.BusinessEntityID from HumanResources.Employee id where id.HireDate = (
select max(e.HireDate) from HumanResources.Employee e));
/* 2.	Показать сотрудника, который работает меньше всех */


select v.Name from Purchasing.Vendor v where v.BusinessEntityID = (
select vendor.BusinessEntityID from Purchasing.ProductVendor vendor where vendor.ProductID = (
select cost2id.ProductID from Production.Product cost2id where cost2id.StandardCost = (
select min(cost.StandardCost) from Production.Product cost where cost.StandardCost != 0)));
/*3.	Показать вендора, который продает самые дешевые товары */

select query.FemaleCount, query.JobTitle
from(select count(d.BusinessEntityID) as FemaleCount, d.JobTitle
from HumanResources.vEmployeeDepartment d
where exists(select e.BusinessEntityID from HumanResources.Employee e where e.BusinessEntityID = d.BusinessEntityID and e.Gender = 'F')
group by d.JobTitle) query where query.FemaleCount < 5;
/* 4.	Показать количество сотрудников женского пола и перечень должностей, на которых работает менее
5 сотрудников женского пола. Задачу решить с помощью подзапросов с использованием оператора EXISTS.
(Представление [HumanResources].[vEmployeeDepartment] и таблица HumanResources.Employee).  */

select p.FirstName, p.LastName from Person.Person p where p.BusinessEntityID in (
select id.BusinessEntityID from HumanResources.Employee id where id.HireDate = (
select min(e.HireDate) from HumanResources.Employee e));
/* 5.	Показать сотрудника, который работает больше всех*/
