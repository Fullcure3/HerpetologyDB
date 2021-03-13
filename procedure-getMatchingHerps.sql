CREATE PROCEDURE `getMatchingHerps`(IN common_name VARCHAR(50), IN habitat VARCHAR(50))
BEGIN
SELECT *
FROM herpetology_webpage hw
WHERE hw.common_name REGEXP common_name AND
		`type` REGEXP habitat;
END