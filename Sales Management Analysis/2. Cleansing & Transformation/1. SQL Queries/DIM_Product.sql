-- Cleansing Dim_Products Table --

SELECT 
	   p.[ProductKey],
      p.[ProductAlternateKey] AS ProductItemCode,
      --[ProductSubcategoryKey],
      --[WeightUnitMeasureCode],
      --[SizeUnitMeasureCode],
      p.[EnglishProductName] AS [Product Name],
	  pc.EnglishProductCategoryName AS [Product Category], -- Joined in from Category Table
	  ps.EnglishProductSubcategoryName AS [Sub Category],  -- Joined in from Sub Category Table
      --[SpanishProductName],
      --[FrenchProductName],
      --[StandardCost]
      --[FinishedGoodsFlag],
      p.[Color] AS [Product Color],
      --[SafetyStockLevel],
      --[ReorderPoint],
      --[ListPrice],
      p.[Size] AS [Product Size],
      --[SizeRange],
      --[Weight],
      --[DaysToManufacture],
      p.[ProductLine] AS [Product Line],
      --[DealerPrice],
      --[Class],
      --[Style],
      p.[ModelName] AS [Product Model Name],
      --[LargePhoto],
      p.[EnglishDescription] AS [Product Description],
      --[FrenchDescription],
      --[ChineseDescription],
      --[ArabicDescription],
      --[HebrewDescription],
      --[ThaiDescription],
      --[GermanDescription],
      --[JapaneseDescription],
      --[TurkishDescription],
      --[StartDate],
      --[EndDate],
      ISNULL (p.[Status], 'Outdated') as [Product Status]
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] AS p
  LEFT JOIN DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
  LEFT JOIN DimProductCategory AS pc ON pc.ProductCategoryKey = pc.ProductCategoryKey
  ORDER BY
	p.ProductKey ASC
