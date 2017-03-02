INSERT INTO base1.companies (name) VALUES
  ('Google'),
  ('Yahoo'),
  ('Yandex');

INSERT INTO base1.customers  (name) VALUES
  ('Sony'),
  ('Dell'),
  ('Samsung');

INSERT INTO base1.skills (skill) VALUES
  ('Java'),
  ('SQL'),
  ('C++'),
  ('PHP'),
  ('Python');

INSERT INTO base1.developers (name, company_id) VALUES
  ('Slava', 1),
  ('Nata', 1),
  ('Evgen', 1),
  ('Oleg', 2),
  ('Sveta', 2),
  ('Sasha', 2),
  ('Vova', 3),
  ('Oksana', 3),
  ('Igor', 3);

INSERT INTO base1.developers_skills VALUES
  (1, 1),
  (1, 3),
  (1, 2),
  (2, 2),
  (2, 5),
  (3, 5),
  (4, 4),
  (4, 1),
  (5, 3),
  (5, 4),
  (6, 2),
  (6, 1),
  (7, 2),
  (7, 3),
  (7, 5),
  (8, 5),
  (9, 4),
  (9, 3);

INSERT INTO base1.projects VALUES
  (1, 'OS', 1, 1 , 550000),
  (2, '3D shooter', 1, 2 , 130000),
  (3, 'Search System', 1, 3 , 220000),
  (4, 'Text editor', 2, 1 , 600000),
  (5, 'Voice synthesizer', 2, 2 , 520000),
  (6, 'File converter', 2, 3, 480000),
  (7, 'Photo editor', 3, 1, 390000),
  (8, 'IDE', 3, 2 , 700000),
  (9, 'Browser', 3, 2 , 300000);

INSERT INTO base1.developers_projects VALUES
  (1,1),
  (1,2),
  (2,2),
  (2,3),
  (3,1),
  (3,2),
  (4,4),
  (4,5),
  (4,6),
  (5,6),
  (5,5),
  (6,4),
  (6,5),
  (7,7),
  (7,9),
  (8,8),
  (8,7),
  (9,8);

INSERT INTO base1.developers_projects VALUE (1,9);