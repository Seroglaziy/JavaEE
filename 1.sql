-- Добавить разаработчикам поле (salary - зарплата).

ALTER TABLE base1.developers ADD COLUMN salary INT;

UPDATE base1.developers SET salary = CASE
                               WHEN id = 1 THEN 5000
                               WHEN id = 2 THEN 4500
                               WHEN id = 3 THEN 3000
                               WHEN id = 4 THEN 3500
                               WHEN id = 5 THEN 5500
                               WHEN id = 6 THEN 6000
                               WHEN id = 7 THEN 5000
                               WHEN id = 8 THEN 3500
                               WHEN id = 9 THEN 4000
                               END ;