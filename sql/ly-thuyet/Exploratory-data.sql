-- Exploratory data analysis

SELECT *
FROM layoffs_staging2;

SELECT MAX(total_laid_off), MAX(percentage_laid_off)
FROM layoffs_staging2;

SELECT *
FROM layoffs_staging2
WHERE  percentage_laid_off = 1
ORDER BY funds_raised_millions DESC;

SELECT company, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY company
ORDER BY 2 DESC;

SELECT MIN(`date`), MAX(`date`)
FROM layoffs_staging2;

SELECT industry, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY industry
ORDER BY 2 DESC;


SELECT country, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY country
ORDER BY 2 DESC;

SELECT `date`, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY `date`
ORDER BY 1 DESC;

SELECT YEAR(`date`), SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY YEAR(`date`)
ORDER BY 1 DESC;

SELECT stage, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY stage
ORDER BY 2 DESC;



SELECT SUBSTRING(`date`, 6, 2) as `month`, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY SUBSTRING(`date`, 6, 2);

SELECT SUBSTRING(`date`, 6, 2) as `month`, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY `month`;


SELECT SUBSTRING(`date`, 1, 7) as `month`, SUM(total_laid_off)
FROM layoffs_staging2
WHERE SUBSTRING(`date`, 1, 7) IS NOT NULL
GROUP BY `month`
ORDER BY 1 ASC;



WITH Rolling_Total AS (
SELECT SUBSTRING(`date`, 1, 7) as `month`, SUM(total_laid_off) as total_off
FROM layoffs_staging2
WHERE SUBSTRING(`date`, 1, 7) IS NOT NULL
GROUP BY `month`
ORDER BY 1 ASC
)

SELECT `month`, 
total_off,
SUM(total_off) OVER(ORDER BY `month`) as rolling_total
FROM Rolling_Total;


SELECT company, `date`, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY company, `date`;

SELECT company, YEAR(`date`), SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY company, YEAR(`date`)
ORDER BY 3 DESC;





WITH Company_Year (Company, years, total_lf) AS (
SELECT company, YEAR(`date`), SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY company, YEAR(`date`)
)
SELECT * FROM Company_Year;

WITH Company_Year (Company, years, total_lf) AS (
SELECT company, YEAR(`date`), SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY company, YEAR(`date`)
),
Company_Year_Rank AS (
SELECT *, DENSE_RANK() OVER(PARTITION BY years ORDER BY total_lf DESC) AS Ranking
FROM Company_Year
WHERE years IS NOT NULL
)

SELECT *
FROM Company_Year_Rank
WHERE Ranking <= 5;



