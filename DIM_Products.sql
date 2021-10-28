-- Cleaning DIM_Products --
SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] AS ProductItemCode, 
  p.[EnglishProductName] AS [Product Name], 
  ps.EnglishProductSubcategoryName AS [Sub Category], -- joining subcategory name from DIM_Product_Subcategory
  pc.EnglishProductCategoryName AS [Product Category], -- joining category name from DIM_Product_Category
  p.[Color] AS [Product Color], 
  p.[Size] AS [Product Size], 
  p.[ProductLine] AS [Product Line], 
  p.[ModelName] AS [Product Model Name], 
  p.[EnglishDescription] AS [Product Description], 
  ISNULL (p.Status, 'Outdated') AS [Product Status] -- converting .status "NULL" values and changing to "Outdated"
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] as p
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DIMProductSubcategory] AS ps 
	ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DIMProductCategory] AS pc 
	ON ps.ProductCategoryKey = pc.ProductCategoryKey 
order by 
  p.ProductKey asc