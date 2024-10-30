-- Weapon Type Table
CREATE TABLE IF NOT EXISTS mh_core.weapon_type (
	id SERIAL PRIMARY KEY,
	description VARCHAR(50) UNIQUE
);

-- Weapons Table with Foreign Keys
CREATE TABLE IF NOT EXISTS mh_core.weapon (
	id SERIAL PRIMARY KEY,
	weapon_type_id INT REFERENCES mh_core.weapon_type(id),
	attack_power DECIMAL(5, 2),
	element_type_id INT REFERENCES mh_core.elemental_type(id),
	affinity INT,
	sharpness_level INT,
	slots_decorations INT,
	three_upgrade_id INT REFERENCES mh_core.three_upgrade(id),
	rarity INT
);
