--Agregar informacion a la tabla de usuarios

insert
	into
	users ("name",
	email,
	"password",
	"age")
values ('Gabriela',
	'gabri12@gmail.com',
	'uhsjksj',
	19),
	
	('Mario',
	'marioki@gmail.com',
	'bjshvgh',
	20),
	
	('Merlina',
	'merligall@gmail.com',
	'hgsjkls',
	23);
	
--visualizar nuestra tabla de usuarios
select * from users;

--insertar informacion en nuestra tabla de cursos
insert
	into
	courses (title,
	description,
	"level",
	teacher)
values ('JavaScript',
	'lorem impsun',
	'Intermedio',
	'Jesus Fernandez'),
	
	('React',
	'lorem impsun',
	'Principiante',
	'Junior Pacheco'),
	
	('Node JS',
	'lorem impsun',
	'Intermedio',
	'Sahid Kick');
--visualizar tabla de cursos
select * from courses;

--insertar informacion en la table de los videos del curso
insert
	into
	course_video (title,
	url,
	course_id)
values ('Fundamentos JavaScript',
	'https://www.youtube.com/watch?v=JBekO8pX5W0',
	1),
	
	('Introducción a postgreSQL',
	'https://www.youtube.com/watch?v=HSGJjAUNYb8',
	3),
	
	('Manejo de Hooks',
	'https://www.youtube.com/watch?v=4Q1LJzKNCbo',
	2),
	
	('Tipos de datos en JS',
	'https://www.youtube.com/watch?v=AO_HVGvxg_A',
	1);
	
--visualizar la tabla de videos
select * from course_video;

--insertar info en categorias
insert
	into
	categories ("name")
values ('Programacion'),
	('Base de datos'),
	('Frontend');
select * from categories;

--course categories
insert
	into
	course_categories (course_id,
	category_id)
values (1,
	1),
	(3,
	2),
	(2,
	3);

select * from course_categories;

--user courses
insert
	into
	user_courses (user_id,
	course_id)
values (1,
	2),
	(1,
	3),
	(2,
	1),
	(2,
	2),
	(3,
	1);

select * from user_courses;