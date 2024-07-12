-- Create a temporary table with the origin and number of fans
CREATE TEMPORARY TABLE band_origins AS
SELECT origin, COUNT(*) AS nb_fans
FROM metal_bands
GROUP BY origin;

-- Rank the origins by the number of fans
SELECT 
    origin, 
    nb_fans,
    DENSE_RANK() OVER (ORDER BY nb_fans DESC) AS rank
FROM band_origins
ORDER BY rank;

-- Drop the temporary table
DROP TABLE band_origins;
