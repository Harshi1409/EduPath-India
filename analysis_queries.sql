USE edupath_india;
SELECT year, ROUND(AVG(closing_rank), 0) AS avg_closing_rank
FROM jee_cutoffs
WHERE academic_program_name LIKE 'Computer Science and Engineering (4 Years%'
AND seat_type = 'OPEN'
GROUP BY year
ORDER BY year;

SELECT institute, ROUND(AVG(closing_rank), 0) AS avg_closing_rank 
FROM jee_cutoffs 
WHERE year = 2024 
GROUP BY institute 
ORDER BY avg_closing_rank ASC 
LIMIT 10;

SELECT seat_type, ROUND(AVG(closing_rank), 0) AS avg_closing_rank
FROM jee_cutoffs
WHERE academic_program_name LIKE 'Computer Science and Engineering (4 Years%'
AND year = 2024
GROUP BY seat_type
ORDER BY avg_closing_rank ASC;

SELECT quota, COUNT(*) AS total_seats
FROM jee_cutoffs
WHERE year = 2024
GROUP BY quota
ORDER BY total_seats DESC;

SELECT round, ROUND(AVG(closing_rank), 0) AS avg_closing_rank
FROM jee_cutoffs
WHERE academic_program_name LIKE 'Computer Science and Engineering (4 Years%'
AND seat_type = 'OPEN' AND year = 2024
GROUP BY round
ORDER BY round;

SELECT 
CASE 
    WHEN institute LIKE 'Indian Institute of Technology%' THEN 'IIT'
    WHEN institute LIKE 'National Institute of Technology%' THEN 'NIT'
    WHEN institute LIKE 'Indian Institute of Information Technology%' THEN 'IIIT'
    ELSE 'GFTI'
END AS institute_type,
COUNT(DISTINCT institute) AS count
FROM jee_cutoffs
GROUP BY institute_type;

SELECT college_name, state, placement, ug_fee
FROM private_colleges
ORDER BY placement DESC
LIMIT 10;

SELECT state, ROUND(AVG(ug_fee), 0) AS avg_fees, COUNT(*) AS total_colleges
FROM private_colleges
GROUP BY state
ORDER BY avg_fees ASC;

SELECT college_name, state, placement,
RANK() OVER (PARTITION BY state ORDER BY placement DESC) AS state_rank
FROM private_colleges;

CREATE VIEW vw_institute_summary AS
SELECT institute,
CASE 
    WHEN institute LIKE 'Indian Institute of Technology%' THEN 'IIT'
    WHEN institute LIKE 'National Institute of Technology%' THEN 'NIT'
    WHEN institute LIKE 'Indian Institute of Information Technology%' THEN 'IIIT'
    ELSE 'GFTI'
END AS institute_type,
ROUND(AVG(closing_rank), 0) AS avg_closing_rank,
year, seat_type
FROM jee_cutoffs
GROUP BY institute, institute_type, year, seat_type;
