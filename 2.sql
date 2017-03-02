-- Найти самый дорогой проект (исходя из ЗП разработчиков).

SELECT base1.projects.name, sum(base1.developers.salary)
from base1.projects INNER JOIN base1.developers_projects INNER JOIN base1.developers
WHERE projects.id = developers_projects.project_id AND developers_projects.developer_id = developers.id
GROUP BY project_id
ORDER BY sum(developers.salary) DESC
LIMIT 1;
