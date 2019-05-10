DROP TABLE public.groups;
DROP TABLE public.departments;
DROP TABLE public.faculties;
DROP TABLE public.teachers;



CREATE table public.Groups(
id Serial PRIMARY KEY not null,
	name  varchar(10) not null UNIQUE,
	rating INTEGER not null CHECK (rating >=0 AND rating <=5),
	year INTEGER not null CHECK (year >=1 AND year<=5));
	
CREATE table public.Departments(
id SERIAL PRIMARY KEY not null,
financing money default 0.00 not null CHECK(financing >= 0.00::MONEY),
name varchar(100) not null unique);

CREATE table public.Faculties(
id serial PRIMARY KEY not null,
dean varchar(30) not null unique,
name  varchar(100) not null unique);

CREATE table public.Teachers(
id serial PRIMARY KEY not null,
employment_date date not null CHECK (employment_date> '1990-01-01'),
isAssistant boolean not null,
isProfessor boolean not null,
name  varchar(100) not null,
position varchar(100) not null,
premium money default 0.00 not null CHECK (premium >= 0.00::MONEY),
salary money not null check (salary>0.00::MONEY),
surname  varchar(100)not null
);

INSERT INTO public.groups (name, rating, year)
VALUES
('Group1', 1, 2),
('Group2', 2, 3),
('Group3', 3, 4),
('Group4', 4, 5);

INSERT INTO public.departments (financing, name)
VALUES
(10000.00, 'Kaf1'),
(20000.00, 'Kaf2'),
(30000.00, 'Kaf3'),
(5000.00, 'Kaf4');

INSERT INTO public.faculties (dean,name)
VALUES
('dean1', 'Computer Science'),
('dean2', 'Medical Science'),
('dean3', 'Math Science'),
('dean4', 'Software Development');

INSERT INTO public.teachers (employment_date, isAssistant, isProfessor, name, position, premium, salary, surname)
VALUES
('1999-01-01', false, false, 'teacher1', 'teacher', 10.00, 1111.00, 'Ivanov'),
('2011-11-02', false, true, 'teacher2', 'professor', 20.00, 1200.00, 'Petrov'),
('2012-10-03', true, false, 'teacher3', 'asistant', 30.00, 950.00, 'Sidorov'),
('2012-10-03', true, false, 'teacher5', 'asistant', 170.00, 950.00, 'Sidorova'),
('2012-10-03', true, false, 'teacher6', 'asistant', 300.00, 950.00, 'Petrova'),
('2013-09-04', false, true, 'teacher4', 'professor', 40.00, 990.00, 'Koshkina');



