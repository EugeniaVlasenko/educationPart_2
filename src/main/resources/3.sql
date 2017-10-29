/*3. Вычислить общую ЗП всех Java разработчиков. */
SELECT modul_1.skills.name, sum(modul_1.developers.salary)
FROM modul_1.skills, modul_1.developers, modul_1.developers_skills
WHERE modul_1.developers_skills.id_developer = modul_1.developers.id and
      modul_1.developers_skills.id_skills = modul_1.skills.id AND
      modul_1.skills.name = "Java"
GROUP BY modul_1.skills.name