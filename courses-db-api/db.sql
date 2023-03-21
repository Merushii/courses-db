--Creacion de la tabla de usuarios
CREATE TABLE "users" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar,
  "age" int
);

--Creacion de la tabla que hara la relacion entre los cursos y los usuarios
CREATE TABLE "user_courses" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "user_id" int,
  "course_id" int
);

--Creacion de la tabla de cursos
CREATE TABLE "courses" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "title" varchar,
  "description" text,
  "level" varchar,
  "teacher" varchar
);

--Creacion de la tabla que contendra cada video
CREATE TABLE "course_video" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "title" varchar,
  "url" varchar UNIQUE NOT NULL,
  "course_id" int NOT NULL
);

--creacion de la tabla de categorias para cada curso
CREATE TABLE "categories" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "name" varchar
);

--creacion de la tabla que servira para la relacion entre los cursos y sus categorias
CREATE TABLE "course_categories" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "course_id" int,
  "category_id" int
);

--comandos para hacer las relaciones entre tablas
ALTER TABLE "course_video" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "user_courses" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "user_courses" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "course_categories" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "course_categories" ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("id");