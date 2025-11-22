SELECT * FROM themes;

SELECT * FROM resources
ORDER BY updated_at DESC;

SELECT title, url 
FROM resources
WHERE type = 'exercice';

SELECT title, description
FROM resources
WHERE is_ada = 'true';

SELECT resources.id, resources.title
FROM resources
JOIN resources_skills ON resources.id = resources_skills.resource_id
WHERE resources_skills.skill_id = 1;

SELECT *
FROM resources
WHERE LOWER(title) LIKE '%react%';