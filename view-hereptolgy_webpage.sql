CREATE VIEW `herpetology_webpage` AS
SELECT *
FROM herps_with_classifications
LEFT JOIN herps_habitats
USING (herp_id)
LEFT JOIN habitats
USING (habitat_id);