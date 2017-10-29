/*5. Найти клиента (customer),
которая приносит меньше всего прибыли компании (company) для каждой из компаний .*/
SELECT modul_1.companies.name, modul_1.customers.name, min(modul_1.projects.cost)
FROM modul_1.customers, modul_1.projects, modul_1.customers_projects, modul_1.companies, modul_1.companies_projects
WHERE (modul_1.companies.name, modul_1.customers.name, modul_1.projects.cost) IN
      (SELECT modul_1.companies.name, modul_1.customers.name, sum(modul_1.projects.cost)
       FROM modul_1.customers, modul_1.projects, modul_1.customers_projects, modul_1.companies, modul_1.companies_projects
       WHERE modul_1.customers_projects.id_project = modul_1.projects.id AND
             modul_1.customers_projects.id_customer = modul_1.customers.id AND
             modul_1.companies_projects.id_project = modul_1.projects.id AND
             modul_1.companies_projects.id_company = modul_1.companies.id
       GROUP BY modul_1.customers.name, modul_1.companies.name)
GROUP BY modul_1.companies.name