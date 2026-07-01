-- Total number of roller coasters
SELECT COUNT(*)
FROM roller_coasters;

-- Number of unique manufacturers
SELECT COUNT(DISTINCT manufacturer)
FROM roller_coasters;

-- Top manufacturers by coaster count
SELECT
    manufacturer,
    COUNT(*) AS coaster_count
FROM roller_coasters
GROUP BY manufacturer
ORDER BY coaster_count DESC;

-- Top 10 fastest coasters
SELECT
    coaster_name,
    manufacturer,
    speed_mph
FROM roller_coasters
ORDER BY speed_mph DESC
LIMIT 10;

-- Top 10 tallest coasters
SELECT
    coaster_name,
    manufacturer,
    height_ft
FROM roller_coasters
ORDER BY height_ft DESC
LIMIT 10;