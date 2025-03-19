#changing the date to date time format
USE WORLD_LAYOFFS;
UPDATE layoffs_staged
set `Date`=STR_TO_DATE(`Date`,"%Y-%m-%d");
ALTER TABLE layoffs_staged
MODIFY column `date` DATE;
