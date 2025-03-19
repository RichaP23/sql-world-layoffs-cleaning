CREATE TABLE layoffs_staged LIKE layoffs_data;
INSERT INTO layoffs_staged
SELECT * FROM layoffs_data;