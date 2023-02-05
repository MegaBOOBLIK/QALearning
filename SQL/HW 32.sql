--1 Создать таблицу employees
--id. serial, primary key,
--employee_name. Varchar(50), not null
--2 Наполнить таблицу employees 70 строками

--CREATE TABLE IF NOT exists employees0();
--DROP TABLE employees0

CREATE TABLE IF NOT EXISTS first_name (
  id SERIAL PRIMARY KEY, 
  employee_first_name Varchar(50) not null
)

CREATE TABLE IF NOT EXISTS last_name (
  id SERIAL PRIMARY KEY, 
  employee_last_name Varchar(50) not null
)

insert into first_name(employee_first_name)
values ('Red'), ('Orange'), ('Yello'), ('Green'), ('Blue'), ('Navy'), ('Voilet');

insert into last_name(employee_last_name)
values ('Ivan'), ('Piter'), ('Sidor'), ('John'), ('Bill'), ('Pol'), ('Mic'), ('Nic'), ('Dic'), ('Borat');

CREATE TABLE IF NOT EXISTS employees (
  id SERIAL PRIMARY KEY, 
  employee_name Varchar(50) not null
)

insert into employees(employee_name)
select concat_ws(' ',employee_first_name, employee_last_name) from first_name, last_name;

--3 Создать таблицу salary
--id. Serial  primary key,
--monthly_salary. Int, not null

CREATE TABLE IF NOT exists employee_salary (
  id SERIAL PRIMARY KEY, 
  monthly_salary INT not null
)

--4 Наполнить таблицу salary 15 строками:
do
$$
declare countz int :=1000;

begin
	FOR countz IN 1000..2500 by 100
		LOOP
		insert into employee_salary(monthly_salary)
		values (countz);
		--RAISE NOTICE 'Number Count: %', countz; 	
		END loop;
end;
$$;

ALTER table employee_salary rename to salary;

-- 5 Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null

CREATE TABLE IF NOT exists employee_salary (
  id SERIAL PRIMARY KEY, 
  employee_id INT not null unique,
  salary_id INT not null
)


-- 6 Наполнить таблицу employee_salary 40 строками:
insert into employee_salary (id, employee_id, salary_id)
values (1,3,7), (2,1,4), (3,5,9), (4,40,13), (5,23,4),
(6,11,2), (7,52,10), (8,15,13), (9,26,4), (10,16,1);

insert into employee_salary (id, employee_id, salary_id)
values (11,53,7), (12,54,7), (13,55,4), (14,56,9), (15,57,13),
(16,58,4), (17,59,2), (18,60,10), (19,2,13), (20,4,4);

insert into employee_salary (id, employee_id, salary_id)
values (21,6,8), (22,7,9), (23,8,4), (24,9,10), (25,10,11),
(26,12,12), (27,13,13), (28,14,14), (29,17,15), (30,18,16);

-- в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary (id, employee_id, salary_id)
values (31,71,8), (32,72,9), (33,73,4), (34,74,10), (35,75,11),
(36,76,12), (37,77,13), (38,78,14), (39,79,15), (40,80,16);

-- 7Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
CREATE table roles (id SERIAL PRIMARY KEY, role_name INT not null unique)

-- 8 Поменять тип столба role_name с int на varchar(30)
ALTER TABLE roles ALTER COLUMN role_name TYPE varchar(30) USING (role_name::integer);

-- 9 Наполнить таблицу roles 20 строками
INSERT INTO roles (role_name) values ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

--Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

CREATE TABLE IF NOT exists roles_employee (
  id SERIAL PRIMARY KEY, 
  employee_id INT not null,
  FOREIGN KEY (employee_id) REFERENCES employees (id),
  role_id INT not null,
  FOREIGN KEY (role_id) REFERENCES roles (id)  
);

INSERT INTO roles_employee (employee_id, role_id)
values (7,2), (20,4), (3,9), (5,13), (23,4), (11,2), (10,9), (22,13), (21,3), (34,4);

INSERT INTO roles_employee (employee_id, role_id)
values (6,7), (1,4), (4,9), (15,13), (13,4), (31,2), (14,9), (25,13), (31,3), (35,4);

INSERT INTO roles_employee (employee_id, role_id)
values (8,7), (2,4), (24,9), (16,13), (17,4), (27,2), (18,9), (24,13), (37,3), (38,4);

INSERT INTO roles_employee (employee_id, role_id)
values (9,1), (12,5), (19,6), (26,8), (28,10), (29,11), (30,12), (32,14), (33,15), (40,16);














