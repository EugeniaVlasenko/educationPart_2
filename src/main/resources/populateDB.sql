INSERT INTO  developers(name, salary) VALUE ("Ivan", 2000);
INSERT INTO  developers(name, salary) VALUE ("Petr", 3000);
INSERT INTO  developers(name, salary) VALUE ("Maria", 4000);
INSERT INTO  developers(name, salary) VALUE ("Svetlana", 5000);
INSERT INTO  developers(name, salary) VALUE ("Dmitry", 6000);
INSERT INTO  developers(name, salary) VALUE ("Olga", 7000);
INSERT INTO  developers(name, salary) VALUE ("Taras", 8000);

INSERT INTO skills(name) VALUE ( "Java");
INSERT INTO skills(name) VALUE ( "C++");
INSERT INTO skills(name) VALUE ( "Delphi");
INSERT INTO skills(name) VALUE ( "Python");

INSERT INTO projects(name) VALUES("Project (Java)");
INSERT INTO projects(name) VALUES("Project (C++)");
INSERT INTO projects(name) VALUES("Project (Delphi)");
INSERT INTO projects(name) VALUES("Project (Python)");

INSERT INTO modul_1.companies(name) VALUE ("IBM");
INSERT INTO modul_1.companies(name) VALUE ("Microsoft");
INSERT INTO modul_1.companies(name) VALUE ("Oracle");
INSERT INTO modul_1.companies(name) VALUE ("DVC");

INSERT INTO modul_1.customers(name) VALUE ("Ivanov");
INSERT INTO modul_1.customers(name) VALUE ("Petrov");
INSERT INTO modul_1.customers(name) VALUE ("Sidorov");
INSERT INTO modul_1.customers(name) VALUE ("Petrenko");

INSERT modul_1.developers_skills(id_developer, id_skills) VALUES (12, 1);
INSERT modul_1.developers_skills(id_developer, id_skills) VALUES (12, 3);
INSERT modul_1.developers_skills(id_developer, id_skills) VALUES (12, 4);
INSERT modul_1.developers_skills(id_developer, id_skills) VALUES (13, 2);
INSERT modul_1.developers_skills(id_developer, id_skills) VALUES (14, 1);
INSERT modul_1.developers_skills(id_developer, id_skills) VALUES (15, 4);
INSERT modul_1.developers_skills(id_developer, id_skills) VALUES (16, 1);

INSERT modul_1.developers_projects(id_developer, id_project) VALUES (12, 1);
INSERT modul_1.developers_projects(id_developer, id_project) VALUES (12, 3);
INSERT modul_1.developers_projects(id_developer, id_project) VALUES (12, 4);
INSERT modul_1.developers_projects(id_developer, id_project) VALUES (13, 2);
INSERT modul_1.developers_projects(id_developer, id_project) VALUES (14, 1);
INSERT modul_1.developers_projects(id_developer, id_project) VALUES (15, 4);
INSERT modul_1.developers_projects(id_developer, id_project) VALUES (16, 1);

INSERT modul_1.companies_projects(id_company, id_project) VALUES (1, 1);
INSERT modul_1.companies_projects(id_company, id_project) VALUES (1, 3);
INSERT modul_1.companies_projects(id_company, id_project) VALUES (1, 4);
INSERT modul_1.companies_projects(id_company, id_project) VALUES (2, 2);
INSERT modul_1.companies_projects(id_company, id_project) VALUES (3, 1);
INSERT modul_1.companies_projects(id_company, id_project) VALUES (4, 4);
INSERT modul_1.companies_projects(id_company, id_project) VALUES (4, 1);

INSERT modul_1.customers_projects(id_customer, id_project) VALUES (1, 1);
INSERT modul_1.customers_projects(id_customer, id_project) VALUES (1, 3);
INSERT modul_1.customers_projects(id_customer, id_project) VALUES (1, 4);
INSERT modul_1.customers_projects(id_customer, id_project) VALUES (2, 2);
INSERT modul_1.customers_projects(id_customer, id_project) VALUES (3, 1);
INSERT modul_1.customers_projects(id_customer, id_project) VALUES (4, 4);
INSERT modul_1.customers_projects(id_customer, id_project) VALUES (4, 1);

INSERT modul_1.developers_companies(id_developer, id_company) VALUES (12, 1);
INSERT modul_1.developers_companies(id_developer, id_company) VALUES (12, 3);
INSERT modul_1.developers_companies(id_developer, id_company) VALUES (12, 4);
INSERT modul_1.developers_companies(id_developer, id_company) VALUES (13, 2);
INSERT modul_1.developers_companies(id_developer, id_company) VALUES (14, 1);
INSERT modul_1.developers_companies(id_developer, id_company) VALUES (15, 4);
INSERT modul_1.developers_companies(id_developer, id_company) VALUES (16, 1);

INSERT INTO modul_1.projects(name, cost) VALUES
 (
   ("Project (Java)", 1000),
   ("Project (C++)", 500),
   ("Project (Delphi)", 1300),
   ("Project (Python)", 5000)
 )

UPDATE modul_1.projects SET cost = 1000 WHERE id = 1;
UPDATE modul_1.projects SET cost = 500 WHERE id = 2;
UPDATE modul_1.projects SET cost = 1200 WHERE id = 3;
UPDATE modul_1.projects SET cost = 1700 WHERE id = 4;
