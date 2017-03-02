-- Вычислить, среднюю ЗП программистов в проекте, который приносит наименьшую прибыль.

SELECT base1.projects.cost, base1.projects.name, avg(salary) FROM base1.developers
INNER JOIN base1.developers_projects ON base1.developers.id = base1.developers_projects.developer_id
INNER JOIN base1.projects ON base1.developers_projects.project_id = projects.id
WHERE base1.projects.cost = (SELECT min(cost) FROM base1.projects);