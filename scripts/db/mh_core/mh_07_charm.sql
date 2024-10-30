-- Charm Table with Foreign Keys
CREATE TABLE IF NOT EXISTS mh_core.charm (
	id SERIAL PRIMARY KEY,
	description VARCHAR(50) UNIQUE,
	three_upgrade_id INT REFERENCES mh_core.three_upgrade(id),
	rarity INT
);

-- Decoration - Skill (Many-to-Many)
CREATE TABLE IF NOT EXISTS mh_core.decoration_skill (
    decoration_id INT REFERENCES mh_core.decoration(id),
    skill_id INT REFERENCES mh_core.skill(id),
    points INT,
    PRIMARY KEY (decoration_id, skill_id)
);
