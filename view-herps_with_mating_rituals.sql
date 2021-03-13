CREATE VIEW `herps_with_mating_rituals` AS
SELECT 
	herp_id, 
    common_name, 
    class, 
    family, 
    genus, 
    species,
    mating_ritual
FROM herps 
LEFT JOIN classifications
USING (classification_id)
LEFT JOIN (classes, families, genuses)
USING (class_id, family_id, genus_id)
WHERE mating_ritual != 'none';