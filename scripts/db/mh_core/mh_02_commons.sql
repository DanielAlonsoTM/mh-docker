-- Elemental Type Table
CREATE TABLE IF NOT EXISTS mh_core.elemental_type (
	id SERIAL PRIMARY KEY,
	description VARCHAR(50) UNIQUE
);

-- Habitat Table
CREATE TABLE IF NOT EXISTS mh_core.habitat (
	id SERIAL PRIMARY KEY,
	description VARCHAR(50) UNIQUE
);

-- Skill Table
CREATE TABLE IF NOT EXISTS mh_core.skill (
    id SERIAL PRIMARY KEY,
	description VARCHAR(50),
	maximum_level INT,
	effect_per_level JSONB,
);

-- Three Upgrade Table with Foreign Keys
CREATE TABLE IF NOT EXISTS mh_core.three_upgrade (
	id SERIAL PRIMARY KEY,
	description VARCHAR(50) UNIQUE
);
