CREATE VIEW `herps_with_classifications` AS
SELECT 
	herp_id, 
    common_name, 
    class, 
    family, 
    genus, 
    species 
FROM herps
LEFT JOIN classifications
USING (classification_id)
LEFT JOIN (classes, families, genuses)
USING (class_id, family_id, genus_id);