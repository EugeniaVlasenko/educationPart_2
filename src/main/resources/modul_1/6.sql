/*6. Вычислить, среднюю ЗП программистов в проекте, который приносит наименьшую прибыль.*/
SELECT sum(developers.salary) / count(developers.salary)
FROM developers, developers_projects, projects
WHERE developers_projects.id_developer = developers.id AND
      (developers_projects.id_project = projects.id AND
       (projects.id, projects.cost) IN(
                    SELECT projects.id,  min(projects.cost)
                    FROM projects))

/*хм.. но тут может быть деление на ноль :( */