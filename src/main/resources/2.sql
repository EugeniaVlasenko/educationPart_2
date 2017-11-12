/*2. Найти самый дорогой проект (исходя из ЗП разработчиков). */
SELECT modul_1.projects.name, sum(modul_1.developers.salary)
FROM modul_1.projects, modul_1.developers, modul_1.developers_projects
WHERE modul_1.projects.id = modul_1.developers_projects.id_project and
      modul_1.developers.id = modul_1.developers_projects.id_developer
GROUP BY modul_1.projects.name
ORDER BY sum(modul_1.developers.salary) DESC
LIMIT 1

SELECT projects.name, sum(developers.salary)
FROM developers_projects
LEFT JOIN projects ON developers_projects.id_project = projects.id
LEFT JOIN developers ON developers_projects.id_developer = developers.id
GROUP BY modul_1.projects.name
ORDER BY sum(modul_1.developers.salary) DESC
LIMIT 1