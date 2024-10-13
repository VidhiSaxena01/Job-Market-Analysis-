-- Total Job Postings by Sector

SELECT 
    company_sector, COUNT(*) AS total_postings
FROM
    job_market_analysis
GROUP BY company_sector;

-- Average Salary by Job Title

SELECT 
    job_title,
    CONCAT('$', FORMAT(AVG(avg_salary) / 80, 0)) AS average_salary_in_usd
FROM
    job_market_analysis
GROUP BY job_title;
    
-- Job Postings by Top 10 Cities and Countries

SELECT 
    City, Country, COUNT(*) AS Job_Postings
FROM
    job_market_analysis
GROUP BY City , Country
LIMIT 10;

-- Job Postings by Work Type (Full-time, Part-time, Contract)

SELECT 
    Work_type, COUNT(*) AS Total_jobs
FROM
    job_market_analysis
GROUP BY Work_type;

-- Experience Range Analysis (Min & Max Experience)

SELECT 
    min_experience, max_experience, COUNT(*) AS Total_postings
FROM
    job_market_analysis
GROUP BY min_experience , max_experience;

-- Top Job Portals by Number of Postings

SELECT 
    job_portal, COUNT(*) AS total_postings
FROM
    job_market_analysis
GROUP BY job_portal
ORDER BY total_postings DESC;

-- Salary Distribution by Work Type

SELECT 
    work_type,
    CONCAT('$', FORMAT(AVG(avg_salary) / 80, 0)) AS average_salary
FROM
    job_market_analysis
GROUP BY work_type;

-- Gender Preference Breakdown

SELECT 
    gender_preference,
    company_sector,
    job_title,
    COUNT(*) AS total_postings
FROM
    job_market_analysis
WHERE
    gender_preference IS NOT NULL
GROUP BY gender_preference , company_sector , job_title
ORDER BY total_postings DESC;

