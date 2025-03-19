#STEP 1 : IDENTIFY AND REMOVE DUPLICATES
WITH duplicate_cte as (SELECT *,
								ROW_NUMBER() OVER(PARTITION BY `Company`,
								`Location_HQ`,
								`Industry`,
								`Laid_Off_Count`,
								`Date`,
								`Funds_Raised`,
								`Stage`,
								`Date_Added`,
								`Country`,
								`Percentage`,
								`List_of_Employees_Laid_Off`) as entry_count 
								from layoffs_staged)
SELECT * from duplicate_cte where entry_count>1;

