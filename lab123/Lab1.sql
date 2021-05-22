
/* 22 �������/������ �������*/
select * from Production.UnitMeasure; 
/* 1.	�������� ��� ���� �� ������� Production.UnitMeasure. */

select BillOfMaterialsID, ProductAssemblyID, ComponentID, UnitMeasureCode from Production.BillOfMaterials;
/* 2.	�������� ���� BillOfMaterialsID, ProductAssemblyID, ComponentID, UnitMeasureCode 
�� ������� Production.BillOfMaterials.*/

select ProductID, Quantity from Production.ProductInventory where Quantity between 400 and 600;
/* 3.	�� ������� Production.ProductInventory �������� ����������������� ������ � ���������� ������� (ProductID � Quantity). 
�������� ������ �� ������, ������� ������ 400, �� ������ 600. ������������ �������� BETWEEN. */

select CustomerID, StoreID from Sales.Customer where StoreID is not null;
/* 4.	�������� ���� CustomerID � ��� ������������ �������� ���� StoreID �� ������� Sales.Customer.*/

select CountryRegionCode, Name from Person.CountryRegion where Name like '%n';
/*  5.	�� ������� Person.CountryRegion �������� ��� (CountryRegionCode) � �������� ([Name]) �����, 
������� ������������� �� 'n'. */
select CurrencyCode, Name from Sales.Currency where Name in ('Kroon', 'Armenian Dram', 'US Dollar');
/*  6.	�������� ��� � �������� ������ (CurrencyCode � [Name]) �� ������� Sales.Currency.
�������� ������ ������ �� ������ ('Kroon', 'Armenian Dram', 'US Dollar').*/

select StandardCost, StartDate, ISNULL(EndDate, GETDATE()) as EndDate from Production.ProductCostHistory;
/* 7.	�� ������� Production.ProductCostHistory �������� ������� ���� �� ����� (StandardCost), ���� ������ (StartDate) � ��������� (EndDate) �������� ����.
���� ���� ��������� �������� ���� ����������, �������� � �� ������� ����. �������� ����� �������� ��� ���������. */

select ProductID, Name, COALESCE(Class, Style, 'UNKNOWN') as Meauserement from Production.Product;
/*8.	�������� ���� ProductID, [Name] �� ������� Production.Product � ����������� ������� COALESCE().
�������� ���� Meauserement , ���, �����, ���� �������� � ���� Class ��������, �� �������� ���, � �����, �������� �������� � ����
Style. ���� � � ���� Style �������� ����������, �� ������� �������� 'UNKNOWN'. */

select TaxType, TaxRate, Name from Sales.SalesTaxRate order by Name;
/* 9.	������������� ������ ������� Sales.SalesTaxRate � ������������ � ����� [Name]. �������� ���� TaxType, TaxRate � [Name].*/

select Name, CountryRegionCode, REPLACE(CountryRegionCode, 'US', 'NULL') as NullCountryRegionCode from Person.StateProvince;
/* 10.	�������� ���� CountryRegionCode � [Name] �� ������� Person.StateProvince. 
��� �������� ���� CountryRegionCode, ������ US, �������� �� NULL � ������� � �������� ���� � ��������� NullCountryRegionCode. */