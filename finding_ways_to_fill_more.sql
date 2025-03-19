select MIN(`DATE`) from layoffs_staged;
select * from layoffs_staged;
select count(country) as number,
country from layoffs_staged
where Laid_Off_Count IS NULL
group by country ;

select company,percentage,`date`
from layoffs_staged
where Laid_Off_Count is NULL
order by company;