-- Armor Type Table
CREATE TABLE IF NOT EXISTS mh_core.armor_type (
    id SERIAL PRIMARY KEY,
	description VARCHAR(50) UNIQUE
);

-- Armor Table with Foreign Keys
CREATE TABLE IF NOT EXISTS mh_core.armor (
	id SERIAL PRIMARY KEY,
	armor_type_id INT REFERENCES mh_core.armor_type(id),
	defense DECIMAL(5, 2),
	element_fire_resistence DECIMAL(5, 2),
	element_water_resistence DECIMAL(5, 2),
	element_thunder_resistence DECIMAL(5, 2),
	element_ice_resistence DECIMAL(5, 2),
	element_dragon_resistence DECIMAL(5, 2),
	slots_decorations INT,
	rarity INT
);

-- Armor skill (Many-to-Many)
CREATE TABLE IF NOT EXISTS mh_core.armor_skill (
    armor_id INT REFERENCES mh_core.armor(id),
    skill_id INT REFERENCES mh_core.skill(id),
    points INT,
    PRIMARY KEY (armor_id, skill_id)
);
