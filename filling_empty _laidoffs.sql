SELECT company, Location_HQ, Industry, Laid_Off_Count,
       DENSE_RANK() OVER (PARTITION BY company, Location_HQ, Industry ORDER BY Laid_Off_Count) AS fill_count
FROM layoffs_staged;

UPDATE layoffs_staged t1
JOIN (
    SELECT company, Location_HQ, Industry,
           AVG(CAST(NULLIF(Laid_Off_Count, '') AS UNSIGNED)) AS average
    FROM layoffs_staged
    GROUP BY company, Location_HQ, Industry
) t2
ON t1.company = t2.company
   AND t1.Location_HQ = t2.Location_HQ
   AND t1.Industry = t2.Industry
SET t1.Laid_Off_Count = t2.average
WHERE t1.Laid_Off_Count = '';
