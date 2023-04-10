/*
CREATE TABLE public.students (
 id serial NOT NULL,
 "name" varchar(50) NOT NULL,
 email varchar(50) NOT NULL,
 "password" varchar(50) NOT NULL,
 created_on timestamp NOT NULL,
 CONSTRAINT students_email_key UNIQUE (email),
 CONSTRAINT students_pkey PRIMARY KEY (id)
);
*/

--1. Вывести все поля и все строки.
select * from public.students1 s1

--2. Вывести всех студентов в таблице
select * from public.students1 s1

--3. Вывести только Id пользователей
select id from public.students1

--4. Вывести только имя пользователей
select "name" from public.students1 order by "name" ASC  

 --5. Вывести только email пользователей
select email from public.students1 order by email ASC 

 --6. Вывести имя и email пользователей
select name,email from public.students1 order by email ASC 

--7. Вывести id, имя, email и дату создания пользователей
select id,name,email,created_on from public.students1 order by id asc

--8. Вывести пользователей где password 12333
select "name", "password"
from public.students1
where password = '12333'
order by name asc

--9. Вывести пользователей которые были созданы 2021-03-26 00:00:00
select name, created_on
from public.students1
where created_on = '2021-03-26 00:00:00'
order by name asc

--10. Вывести пользователей где в имени есть слово Анна
select name
from public.students1
where name like '%Anna%'
order by name asc

--11. Вывести пользователей где в имени в конце есть 8
select name
from public.students1
where name like '%8'
order by name asc

--12. Вывести пользователей где в имени в есть буква а
select name
from public.students1
where name like '%a%'
order by name asc 

--13. Вывести пользователей которые были созданы 2021-07-12 00:00:00
select name, created_on
from public.students1
where created_on = '2021-07-12 00:00:00'
order by name asc

--14. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
select name, created_on, password from public.students1
where (created_on = '2021-07-12 00:00:00' and password = '1m313')
order by name asc

--15. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
select name, created_on, password from public.students1
where (created_on = '2021-07-12 00:00:00' and password = '1m313')
order by name asc

--16. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
select name, created_on, password from public.students1
where (created_on = '2021-07-12 00:00:00' and name like '%8%')
order by name asc

--17. Вывести пользователя у которых id равен 110
--18. Вывести пользователя у которых id равен 153
select id, name from public.students1 where (id = '110' or id = '153')  order by name asc

--19. Вывести пользователя у которых id больше 140
select id, name from public.students1 where (id >= '140')  order by id asc

--20. Вывести пользователя у которых id меньше 130
select id, name from public.students1 where (id <= '130') order by id asc

--21. Вывести пользователя у которых id меньше 127 или больше 188
 select id, name from public.students1 where id not between '127' and '188' order by id asc

--22. Вывести пользователя у которых id меньше либо равно 137
 select id, name from public.students1 where (id <= '137')  order by id asc
 
--23. Вывести пользователя у которых id больше либо равно 137
 select id, name from public.students1 where (id >= '137')  order by id asc
  
--24. Вывести пользователя у которых id больше 180 но меньше 190
 select id, name from public.students1 where id not between 180 and 190 order by id asc
 
--25. Вывести пользователя у которых id между 180 и 190
 select id, name from public.students1 where id between 180 and 190 order by id asc
  
--26. Вывести пользователей где password равен 12333, 1m313, 123313
select name, password from public.students1 where password in ('12333', '1m313', '123313') order by name, password asc
  
 --27. Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select name, created_on from public.students1 where created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00') order by name, created_on asc

--28. Вывести минимальный id 
select min(id) as MinimalID from public.students1

--29. Вывести максимальный.
select max(id) as MaxID from public.students1
  
--30. Вывести количество пользователей
select count(*) from public.students1
 
 
--31. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.
select id, name, created_on from public.students1 order by created_on asc

--32. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.
select id, name, created_on from public.students1 order by created_on desc


