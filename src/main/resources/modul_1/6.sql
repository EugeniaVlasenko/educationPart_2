/*6. Вычислить, среднюю ЗП программистов в проекте, который приносит наименьшую прибыль.*/
SELECT sum(developers.salary) / count(developers.salary)
FROM developers, developers_projects, projects
WHERE developers_projects.id_developer = developers.id AND
      (developers_projects.id_project = projects.id AND
       (projects.id, projects.cost) IN(
                    SELECT projects.id,  min(projects.cost)
                    FROM projects))


///////////////////////////////////////////////////////////////////

SELECT CASE WHEN count(developers.salary) = 0 THEN 0
            WHEN count(developers.salary) > 0 THEN sum(developers.salary) / count(developers.salary)
       END
FROM developers_projects
INNER JOIN projects ON developers_projects.id_project = projects.id and
                      (projects.id, projects.cost) IN(
                            SELECT projects.id,  min(projects.cost)
                            FROM projects)
LEFT JOIN developers ON developers_projects.id_developer = developers.id