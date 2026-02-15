-- Total applications & hires by recruiter
SELECT recruiter,
       SUM(applications) AS total_applications,
       SUM(hires) AS total_hires
FROM recruitment_data
GROUP BY recruiter;

-- Best recruiter by hires
SELECT recruiter, SUM(hires)
FROM recruitment
GROUP BY recruiter
ORDER BY 2 DESC;

-- Conversion rate
SELECT recruiter,
       SUM(hires) * 1.0 / SUM(applications) AS conversion_rate
FROM recruitment_data
GROUP BY recruiter;

-- Average time to hire
SELECT recruiter,
       AVG(avg_time_to_hire) AS avg_time_to_hire
FROM recruitment_data
GROUP BY recruiter;

-- Cost per hire
SELECT recruiter,
       SUM(avg_cost) / SUM(hires) AS cost_per_hire
FROM recruitment_data
GROUP BY recruiter;
