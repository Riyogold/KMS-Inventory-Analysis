SELECT TOP (8400) [Order_ID]
      ,[Order_Date]
      ,[Order_Priority]
      ,[Order_Quantity]
      ,[Sales]
      ,[Discount]
      ,[Ship_Mode]
      ,[Profit]
      ,[Shipping_Cost]
      ,[Customer_Name]
      ,[Province]
      ,[Region]
      ,[Customer_Segment]
      ,[Product_Category]
      ,[Product_Sub_Category]
      ,[Product_Name]
      ,[Ship_Date]
  FROM [DSA_db].[dbo].[KMS INVENTORY]
  select * from [KMS INVENTORY]

  ----1. Product category with highest sales--
  SELECT TOP 1 PRODUCT_CATEGORY, SUM (SALES) AS HIGHESTSALES
  FROM [KMS INVENTORY]
  GROUP BY PRODUCT_CATEGORY
  ORDER BY HIGHESTSALES DESC

----2. TOP 3 REGIONS IN TERMS OF SALES---
SELECT TOP 3 REGION, SUM (SALES) AS Top3RegionsbyTotalSales
FROM [KMS INVENTORY]
GROUP BY REGION
ORDER BY Top3RegionsbyTotalSales DESC

---2b. BOTTOM 3 REGIONS
SELECT TOP 3 REGION, SUM (SALES) AS Bottom3RegionsbyTotalSales
FROM [KMS INVENTORY]
GROUP BY REGION
ORDER BY Bottom3RegionsbyTotalSales ASC

select * from [KMS INVENTORY] 

----3. TOTAL SALES OF APPLIANCES IN ONTARIO
SELECT SUM(Sales) AS TotalApplianceSalesInOntario
FROM [KMS INVENTORY]
WHERE Product_Sub_Category = 'Appliances'
AND Province = 'Ontario';

----4.
SELECT TOP 10 Customer_Name, SUM(Sales) AS BottomCustomers
FROM [KMS INVENTORY]
GROUP BY Customer_Name 
ORDER BY BottomCustomers ASC;

--5. KMS incurred the most shippping cost using which shipping method--
SELECT TOP 1 SHIP_MODE, SUM (SHIPPING_COST) AS HIGHESTSHIPMENT
FROM [KMS INVENTORY]
GROUP BY SHIP_MODE
ORDER BY HIGHESTSHIPMENT DESC

----6 Who are the most valuable customers, and what products or services do they typically purchase
SELECT top 5  "customer_name", sum (SALES) AS MostValuableCustomers
FROM [KMS INVENTORY]
GROUP BY "Customer_name"
ORDER BY MostValuableCustomers  DESC

SELECT DISTINCT "CUSTOMER_NAME", "PRODUCT_CATEGORY", "PRODUCT_SUB_CATEGORY"
FROM [KMS INVENTORY]
WHERE "Customer_Name" IN ('EMILY PHAN', 'DEBORAH BRUMFIELD', 'ROY SKARIA', 'SYLVIA FOULSTON', 'GRANT CARROLL')
ORDER BY "CUSTOMER_NAME", "PRODUCT_CATEGORY", "PRODUCT_SUB_CATEGORY" DESC;

SELECT "CUSTOMER_NAME", "PRODUCT_CATEGORY", "PRODUCT_SUB_CATEGORY", SUM("SALES") AS "MOSTVALUABLESALES"
FROM [KMS INVENTORY]
WHERE "Customer_Name" IN ('EMILY PHAN', 'DEBORAH BRUMFIELD', 'ROY SKARIA', 'SYLVIA FOULSTON', 'GRANT CARROLL')
GROUP BY "CUSTOMER_NAME", "PRODUCT_CATEGORY", "PRODUCT_SUB_CATEGORY"
ORDER BY "CUSTOMER_NAME",  "PRODUCT_CATEGORY", "PRODUCT_SUB_CATEGORY" DESC;

----7. Which small business customer had the highest sales?
SELECT TOP 1 Customer_Name, SUM(Sales) AS SMALLBUSINESSWITHHIGHESTSALES
FROM [KMS INVENTORY]
WHERE Customer_Segment = 'Small Business'
GROUP BY Customer_Name
ORDER BY SMALLBUSINESSWITHHIGHESTSALES DESC;

----8. Which Corporate Customer placed the most number of orders in 2009 – 2012
SELECT TOP 1 "CUSTOMER_NAME", COUNT (DISTINCT "ORDER_ID") AS HIGHESTCORPORATEPLACERORDER
FROM [KMS INVENTORY]
WHERE Customer_Segment = 'Corporate'
AND YEAR ("Order_Date") BETWEEN 2009 AND 2012
GROUP BY "CUSTOMER_NAME"
ORDER BY HIGHESTCORPORATEPLACERORDER DESC;

  select *from  [KMS INVENTORY]

----9. Which consumer customer was the most profitable one
SELECT TOP 1 Customer_Name, SUM (PROFIT) AS CONSUMERMOSTPROFITABLE
FROM [KMS INVENTORY]
WHERE Customer_Segment = 'Consumer'
GROUP BY Customer_Name
ORDER BY CONSUMERMOSTPROFITABLE DESC;

----10. Which customer returned items, and what segment do they belong to

----11 . If the delivery truck is the most economical but the slowest shipping method and Express Air is the fastest but the most expensive one, do you think the company
----appropriately spent shipping costs based on the Order Priority? Explain your answer
SELECT Order_Priority, Ship_Mode, COUNT(*) AS NumberOfOrders,AVG (Shipping_Cost) AS AvgShippingCost
FROM [KMS INVENTORY]
GROUP BY Order_Priority, Ship_Mode
ORDER BY Order_Priority, Ship_Mode;






