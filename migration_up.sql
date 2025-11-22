 CREATE TABLE themes (
    id serial PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE resources (
    id INTEGER PRIMARY KEY,
    type TEXT NOT NULL,
    title TEXT NOT NULL,
    description TEXT NOT NULL,
    url TEXT NOT NULL,
    is_ada TEXT NOT NULL,
    theme_id TEXT NOT NULL,
    created_at INTEGER,
    updated_at INTEGER
); */

ALTER TABLE resources
ALTER COLUMN is_ada TYPE BOOLEAN USING is_ada::BOOLEAN,
ALTER COLUMN created_at TYPE TIMESTAMP USING to_timestamp(created_at),
ALTER COLUMN updated_at TYPE TIMESTAMP USING to_timestamp(updated_at);



CREATE TABLE resources_skills (
    id INTEGER PRIMARY KEY,
    resource_id INTEGER REFERENCES resources(id),
    skill_id INTEGER REFERENCES skills(id)
);

CREATE TABLE skills (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);
