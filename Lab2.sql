/*вариант 22, задание 2*/ 
select MIN(Size) from Production.Product;
/*1)	Найти минимальный размер из таблицы Production.Product*/

select COUNT(PhoneNumber) from Person.PersonPhone where PhoneNumber like '697%';
/*2)	Найти количество номеров, которые начинаются c 697 из таблицы Person.PersonPhone*/

select ProductLine, MAX(StandardCost) from Production.Product where ProductLine is not null group by ProductLine;
/*3)	Показать максимальную цену товара в каждой линейке продуктов 
ProductLine из таблицы Production.Product (из выборки исключить пустые поля).*/

select COUNT(LoginID) from HumanResources.Employee where LoginID like '%david%' and DATEDIFF(year, BirthDate, GETDATE()) >= 40;
/* 4)	Найти количество человек с именем david (LoginID), которые старше 40 лет из таблицы HumanResources.Employee .*/

select Name, StandardCost, Color, DENSE_RANK() OVER (Partition by Color Order by StandardCost) from Production.Product;
/*5)	Ранжировать товар в Production.Product по цене, разбивая значения внутри одного цвета.
Вывести наименование, цену продукта и цвет. (Использовать DENSE_RANK)*/