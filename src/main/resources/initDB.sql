CREATE DATABASE modul_1

CREATE CREATE TABLE developers (
  id int AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50)
);

CREATE CREATE TABLE projects (
  id int AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50)
);

CREATE CREATE TABLE companies (
  id int AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50)
);

CREATE CREATE TABLE customers (
  id int AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50)
);

CREATE CREATE TABLE developers_skills (
id_developer INT,
id_skills INT,
CONSTRAINT fk_id_developer FOREIGN KEY (id_developer) REFERENCES developers(id),
CONSTRAINT fk_id_skills FOREIGN KEY (id_skills) REFERENCES skills(id)

);

CREATE CREATE TABLE developers_projects (
id_developer INT,
id_project INT,
CONSTRAINT fk_id_developer_projects FOREIGN KEY (id_developer) REFERENCES developers(id),
CONSTRAINT fk_id_projects FOREIGN KEY (id_project) REFERENCES projects(id)

);

CREATE CREATE TABLE companies_projects (
id_company INT,
id_project INT,
CONSTRAINT fk_id_company FOREIGN KEY (id_company) REFERENCES companies(id),
CONSTRAINT fk_id_projects_company FOREIGN KEY (id_project) REFERENCES projects(id)

);

CREATE TABLE customers_projects (
id_customer INT,
id_project INT,
CONSTRAINT fk_id_customer FOREIGN KEY (id_customer) REFERENCES customers(id),
CONSTRAINT fk_id_projects_customer FOREIGN KEY (id_project) REFERENCES projects(id)

);

CREATE TABLE developers_companies(
  id_developer INT,
  id_company INT,
  CONSTRAINT fk_id_developer_company FOREIGN KEY(id_developer) REFERENCES modul_1.developers(id),
  CONSTRAINT fk_id_company_company FOREIGN KEY(id_company) REFERENCES modul_1.companies(id)
)

