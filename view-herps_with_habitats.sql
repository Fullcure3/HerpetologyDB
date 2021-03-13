CREATE VIEW `herps_with_habitats` AS
SELECT 
	herp_id,
    common_name,
    `type`,
    `description`
FROM herps
LEFT JOIN herps_habitats
USING (herp_id)
LEFT JOIN habitats
USING (habitat_id);