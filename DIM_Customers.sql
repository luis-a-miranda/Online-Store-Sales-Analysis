-- Cleaning DIM_Customers --
SELECT 
  c.customerkey AS CustomerKey, 
  c.firstname AS [First Name], 
  c.lastname AS [Last Name], 
  c.firstname + ' ' + lastname AS [Full Name], 
  CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
  c.datefirstpurchase AS DateFirstPurchase, 
  g.city AS [Customer City] -- joining city from DIM_Geography
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] as c
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DIMGeography] AS g 
  ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC