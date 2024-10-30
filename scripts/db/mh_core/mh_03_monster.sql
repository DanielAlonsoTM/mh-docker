-- Monster Type Table
CREATE TABLE IF NOT EXISTS mh_core.monster_type (
	id SERIAL PRIMARY KEY,
	description VARCHAR(50) UNIQUE
);

-- Monster Table with Foreign Keys
CREATE TABLE IF NOT EXISTS mh_core.monster (
	id SERIAL PRIMARY KEY,
	monster_name VARCHAR(50) NOT NULL,
	monster_type_id INT REFERENCES mh_core.monster_type(id),
	monster_habitat_id INT REFERENCES mh_core.habitat(id)
);

-- Monster Weaknesses (Many-to-Many)
CREATE TABLE IF NOT EXISTS mh_core.monster_weakness (
	monster_id INT REFERENCES mh_core.monster(id),
	elemental_type_id INT REFERENCES mh_core.elemental_type(id),
	PRIMARY KEY (monster_id, elemental_type_id)
);

-- Monster Resistances (Many-to-Many)
CREATE TABLE IF NOT EXISTS mh_core.monster_resistance (
	monster_id INT REFERENCES mh_core.monster(id),
	elemental_type_id INT REFERENCES mh_core.elemental_type(id),
	PRIMARY KEY (monster_id, elemental_type_id)
);

-- Reward Drops with Carve Percentages
CREATE TABLE IF NOT EXISTS mh_core.monster_reward_drop (
	id SERIAL PRIMARY KEY,
	monster_id INT REFERENCES mh_core.monster(id),
	item_name VARCHAR(50),
	drop_percentage DECIMAL(5, 2),
	carve_percentage DECIMAL(5, 2)
);
