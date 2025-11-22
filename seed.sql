INSERT INTO themes (id,name,description,created_at,updated_at)
VALUES
(1,'Frontend','partie visible',NOW(),NOW()),
(2,'Backend','fonctionne coté serveur',NOW(),NOW()),
(3,'Base de données','gérer les informations',NOW(),NOW()),
(4,'DevOps','unifier le développement',NOW(),NOW());

INSERT INTO skills (id,name)
VALUES
(1,'Javascript'),
(2,'React'),
(3,'SQL'),
(4,'PostgreSQL'),
(5,'Node.js');


INSERT INTO resources (id,type,title,description,url,is_ada,theme_id,created_at,updated_at)
VALUES
(1,'guide','Introduction à React','Guide officiel React','https://react.dev','false',1,'2025-10-20 12:00:01','2025-10-20 20:00:01'),
(2,'video','SQL pour débutants','Cours SQL complet','https://example.com/sql','true',3,'2025-10-20 12:00:02','2025-10-20 20:00:02'),
(3,'exercice','Exercices JavaScript','Pratique JS','https://example.com/js','false',1,'2025-10-20 12:00:03','2025-10-20 20:00:03'),
(4,'projet','Créer une API en node','Projet node','https://example.com/node','true',2,'2025-10-20 12:00:04','2025-10-20 20:00:04');

INSERT INTO resources_skills (id,resource_id,skill_id)
VALUES
(1,1,1),
(2,1,2),
(3,2,3),
(4,2,4),
(5,3,1),
(6,4,1),
(7,4,5);

 

