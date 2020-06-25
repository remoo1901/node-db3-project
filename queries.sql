-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT ProductName, CategoryName
FROM Product
JOIN Category
ON Product.CategoryId = Category.Id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012.
-- Shows 429 records.

SELECT  [order].id , CompanyName , OrderDate
FROM [order]
JOIN Shipper
ON [order].ShipVia = shipper.Id
WHERE OrderDate < "2012-08-09"

-- Display the name and quantity of the products ordered in order with Id 10251.
-- Sort by ProductName. Shows 3 records.

SELECT ProductName, Quantity
FROM Product
JOIN OrderDetail
ON Product.id = OrderDetail.ProductId
WHERE OrderDetail.OrderId = 10251
ORDER BY Product.ProductName



-- Display the OrderID, Customer's Company Name and the employee's LastName for every order.All columns should be labeled clearly. Displays 16,789 records.
 

SELECT  [order].id AS 'Order ID', customer.CompanyName AS 'Company Name', Employee.LastName AS 'Employee Last Name'
FROM [order]
JOIN Customer
JOIN Employee
ON [order].CustomerId = [Customer].id 
WHERE [order].EmployeeId = [Employee].id;


----------------------------

-- // STRECH // --

---   Displays CategoryName and a new column called 
---  Count that shows how many products are in each category. Shows 8 records.


SELECT COUNT("gategoryName") FROM [Categories]