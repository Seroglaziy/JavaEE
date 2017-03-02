-- Вычислить общую ЗП всех Java разработчиков.

SELECT sum(base1.developers.salary) FROM base1.developers
  INNER JOIN base1.developers_skills INNER JOIN base1.skills
WHERE developers.id = developers_skills.developer_id AND developers_skills.skill_id = skills.id
      AND skills.skill LIKE 'Java';



