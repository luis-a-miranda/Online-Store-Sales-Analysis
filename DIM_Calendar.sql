-- Cleaning DIM_Date --
SELECT 
  [DateKey], 
  [FullDateAlternateKey] as Date, 
  [EnglishDayNameOfWeek] as Day, 
  [WeekNumberOfYear] as [Week Number], 
  [EnglishMonthName] as Month, 
  [MonthNumberOfYear] as [Month Number], 
  [CalendarQuarter] as Quarter, 
  [CalendarYear] as Year
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]