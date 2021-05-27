
/* 22 вариант/первое задание*/
select * from Production.UnitMeasure; 
/* 1.	Показать все поля из таблицы Production.UnitMeasure. */

select BillOfMaterialsID, ProductAssemblyID, ComponentID, UnitMeasureCode from Production.BillOfMaterials;
/* 2.	Показать поля BillOfMaterialsID, ProductAssemblyID, ComponentID, UnitMeasureCode 
из таблицы Production.BillOfMaterials.*/

select ProductID, Quantity from Production.ProductInventory where Quantity between 400 and 600;
/* 3.	Из таблицы Production.ProductInventory показать идентификационные номера и количество товаров (ProductID и Quantity). 
Показать только те товары, которых больше 400, но меньше 600. Использовать оператор BETWEEN. */

select CustomerID, StoreID from Sales.Customer where StoreID is not null;
/* 4.	Показать поля CustomerID и все СУЩЕСТВУЮЩИЕ значения поля StoreID из таблицы Sales.Customer.*/

select CountryRegionCode, Name from Person.CountryRegion where Name like '%n';
/*  5.	Из таблицы Person.CountryRegion показать код (CountryRegionCode) и название ([Name]) стран, 
которые заканчиваются на 'n'. */
select CurrencyCode, Name from Sales.Currency where Name in ('Kroon', 'Armenian Dram', 'US Dollar');
/*  6.	Показать код и название валюты (CurrencyCode и [Name]) из таблицы Sales.Currency.
Показать только валюты из списка ('Kroon', 'Armenian Dram', 'US Dollar').*/

select StandardCost, StartDate, ISNULL(EndDate, GETDATE()) as EndDate from Production.ProductCostHistory;
/* 7.	Из таблицы Production.ProductCostHistory показать среднюю цену на товар (StandardCost), дату начала (StartDate) и окончания (EndDate) действия цены.
Если дата окончания действия цены неизвестна, заменить её на текущую дату. Название полей оставить без изменений. */

select ProductID, Name, COALESCE(Class, Style, 'UNKNOWN') as Meauserement from Production.Product;
/*8.	Показать поля ProductID, [Name] из таблицы Production.Product с применением функции COALESCE().
Показать поле Meauserement , так, чтобы, если значение в поле Class известно, то показать его, а иначе, показать значение в поле
Style. Если и в поле Style значение неизвестно, то вывести значение 'UNKNOWN'. */

select TaxType, TaxRate, Name from Sales.SalesTaxRate order by Name;
/* 9.	Отсортировать строки таблицы Sales.SalesTaxRate в соответствии с полем [Name]. Показать поля TaxType, TaxRate и [Name].*/

select Name, CountryRegionCode, REPLACE(CountryRegionCode, 'US', 'NULL') as NullCountryRegionCode from Person.StateProvince;
/* 10.	Показать поля CountryRegionCode и [Name] из таблицы Person.StateProvince. 
Все значение поля CountryRegionCode, равные US, заменить на NULL и вынести в отельное поле с названием NullCountryRegionCode. */