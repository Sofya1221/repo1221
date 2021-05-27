

select p.Name, r.ReviewerName, r.Rating from Production.Product p, Production.ProductReview r where p.ProductID = r.ProductID;
/*1.	ѕоказать рейтинг продукта (Rating) и пол¤ Name, ReviewerName из таблиц Production.Product, Sales.ProductRewiew.*/

select t.Name, a.BusinessEntityID from Person.AddressType t left outer join Person.BusinessEntityAddress a on t.AddressTypeID = a.AddressTypeID;
/*2.	ѕоказать список типов адресов (поле Name), в котором указано, принадлежат ли этому типу ID людей или нет, из таблиц Person.AddressType, Person.BusinessEntityAddress, использу¤ LEFT OUTER JOIN.*/

select c.AccountNumber from Sales.Customer c right outer join Sales.SalesOrderHeader o on c.CustomerID = o.CustomerID where o.SubTotal is not null group by c.AccountNumber;
/*3.	ѕоказать список покупателей (поле AccountNumber из Sales.Customer), в котором указано, есть ли у покупател¤ промежуточный итог (SubTotal) или нет, из таблиц Sales.SalesOrderHeader, Sales.Customer, использу¤ RIGHT OUTER JOIN.*/

select o.CustomerID from Sales.SalesOrderHeader o, Sales.SalesOrderHeader mirror where o.CustomerID = mirror.CustomerID and o.ShipDate != mirror.ShipDate group by o.CustomerID;
/*4.	ѕоказать список покупателей (CustomerID), которые имеют несколько дат отправки заказа (ShipDate), из таблицы Sales.SalesOrderHeader, использу¤ SELF JOIN.*/

select o.ShipDate from Sales.SalesOrderHeader o, Sales.SalesOrderHeader mirror where o.ShipDate = mirror.ShipDate and o.CustomerID != mirror.CustomerID group by o.ShipDate;
/* 5.	ѕоказать список дат отправки заказа (ShipDate), которые относ¤тс¤ к нескольким покупател¤м (CustomerID), из таблицы Sales.SalesOrderHeader, использу¤ SELF JOIN. */

select o.CustomerID from Sales.SalesOrderHeader o, Sales.SalesOrderHeader mirror where o.CustomerID = mirror.CustomerID and o.Freight != mirror.Freight and o.Freight <= 30 and mirror.Freight <= 30 group by o.CustomerID;
/*6.	ѕоказать список покупателей (CustomerID), которые имеют несколько стоимостей доставки (Freight), из таблицы Sales.SalesOrderHeader, использу¤ SELF JOIN. «начение стоимостей не более 30.*/

select BusinessEntityID, Name from Purchasing.Vendor union select BusinessEntityID, LastName from Person.Person;
/*7.	ѕоказать комбинированный список таблиц Purchasing.Vendor по пол¤м BusinessEntityID, Name, Person.Person по пол¤м BusinessEntityID, LastName, использу¤ UNION.*/

select m.ProductModelID from Production.ProductModel m, Production.ProductModelIllustration i where m.ProductModelID = i.ProductModelID group by m.ProductModelID;
/*8.	ѕоказать список ProductModelID, которые содержатс¤ и в таблице Production.ProductModel, и в таблице Production.ProductModelIllustration.*/
