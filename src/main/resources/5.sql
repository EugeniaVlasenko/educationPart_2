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


///////////////////////////////////////////////////////////////////

SELECT companies.name, customers.name, min(projects.cost)
FROM (
SELECT customers_projects.id_customer as id_customer, companies_projects.id_project as id_project,  companies_projects.id_company as id_company
FROM customers_projects
  LEFT JOIN companies_projects ON customers_projects.id_project = companies_projects.id_project

UNION

SELECT customers_projects.id_customer, companies_projects.id_project, companies_projects.id_company
FROM customers_projects
  RIGHT JOIN companies_projects ON customers_projects.id_project = companies_projects.id_project
) as tableMain

  LEFT JOIN projects ON tableMain.id_project = projects.id
  LEFT JOIN companies ON tableMain.id_company = companies.id
  LEFT JOIN customers ON tableMain.id_customer = customers.id
GROUP BY id_customer, id_company
ORDER BY id_company;