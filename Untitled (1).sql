CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "surname" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar DEFAULT '123456',
  "age" integer DEFAULT 18
);

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "title" text NOT NULL,
  "level" varchar DEFAULT 'principiante',
  "description" text NOT NULL,
  "teacher" varchar NOT NULL,
  "user_id" uuid
);

CREATE TABLE "course_video" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "url" varchar NOT NULL,
  "course_id" uuid
);

CREATE TABLE "categories" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "course_id" uuid
);

ALTER TABLE "courses" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "course_video" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "categories" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

insert into users (id,name,surname,email,password,age) values ('9bde5cb5-d0c4-4b74-a991-4f2099c10a77','Marlon','Mora','marlon@gmail.com','root',31);
insert into users (id,name,surname,email,password,age) values ('9bde5cb5-d0c4-4b74-a991-4f2099c10a78','Camilo','Venegas','camilo@gmail.com','1234',26);
insert into courses (id,title,level,description,teacher)values ('9bde5cb5-d0c4-4b74-a991-4f2099c10a79','programacion','intermedios','Curso front react','jesus'),('9bde5cb5-d0c4-4b74-a991-4f2099c10a80','bases de datos','pricipiantes','curso bd postgress','sahid');
insert into course_video(id,title,url)values('9bde5cb5-d0c4-4b74-a991-4f2099c10119','introduccion a la programacion','https://www.youtube.com/watch?v=FI4d_EwR_MA'),('9bde5cb5-d0c4-4b74-a991-4f2459c10119','intro a las bd','https://www.youtube.com/results?search_query=introduccion+a+la+base+de+datos');
insert into categories (id, name)values('9bde5cb5-d0c4-4b24-a991-4f2099c10119','poo'),('9bde5cb5-d0c4-4b74-a991-4f2039c10119','big data');

