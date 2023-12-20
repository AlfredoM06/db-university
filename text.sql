create table `departments` (
	`id` INT not null AUTO_INCREMENT,
	`name` VARCHAR(30) not null,
	`address` VARCHAR(50) not null,
	`phone` INT not null,
	`email` VARCHAR(50) not null,
	`head_of_department` VARCHAR(30)not null,
	primary key (`id`)
);

create table `degrees` (
	`id` INT not null AUTO_INCREMENT,
	`department_id` INT not null ,
	`name` VARCHAR (30),
	`level` INT not null ,
	`address` VARCHAR(50),
	`email` VARCHAR(50),
	`website` VARCHAR(50),
	PRIMARY KEY(`id`)
);

create table `students` (
	`id` INT not null auto_increment,
	`name` VARCHAR (30) not null,
	`surname` VARCHAR (30) not null,
	`date_of_birth` DATE null,
	`fiscal_code` CHAR(16)not null,
	`enrolment_date` DATE null,
	`registration_number` INT not null,
	`email` VARCHAR (50) not null,
	primary key (`id`)
);

alter table `degrees`
add foreign key (`department_id`) references departments(`id`);

alter table `students`
add column `degree_id` INT not null;

alter table `students`
add foreign key (`degree_id`) references degrees(`id`);

alter table departments 
add column `website` VARCHAR (50) not null;

insert into departments (name, address, phone, email, website, head_of_department)
values ('Storia', 'Via Italia, 45', '3356689784', 'storia.department@gmail.com', 'www.dipartimento-storia.it', 'Alessandro Percopo');

insert into departments (name, address, phone, email, website, head_of_department)
values('Matematica', 'Via Vicenza, 24', 4333267331, 'matematica.department@gmail.com', 'www.dipartimento-matematica.it', 'Marco Destro');

insert into departments (name, address, phone, email, website, head_of_department)
values('Fisica', 'Via Vicenza, 24', 4433903331, 'fisica.department@gmail.com', 'www.dipartimento-fisica.it', 'Paolo Mari');

insert into departments (name, address, phone, email, website, head_of_department)
values('Economia', 'Via Sbirtolo, 32', 4433478335, 'economia.department@gmail.com', 'www.dipartimento-economia.it', 'Pino Mauro');

insert into departments (name, address, phone, email, website, head_of_department)
values('Francese', 'Via Crostatina, 24', 4924334443, 'francese.department@gmail.com', 'www.dipartimento-francese.it', 'Bob Jhonson');


insert into degrees (name, address, `level`, email, website, department_id)
values ('Storia_contemporanea', 'Via Italia, 45', '3356689784', 'storia.department@gmail.com', 'www.dipartimento-storia.it', 1);

insert into degrees (name, address, `level`, email, website, department_id)
values ('Storia_antica', 'Via Italia, 45', '46', 'storia.department@gmail.com', 'www.dipartimento-storia.it', 1);

insert into degrees (name, address, `level`, email, website, department_id)
values ('Storia_italiana', 'Via Italia, 45', '47', 'storia.department@gmail.com', 'www.dipartimento-storia.it', 2);

insert into degrees (name, address, `level`, email, website, department_id)
values ('Storia_medievale', 'Via Italia, 45', '48', 'storia.department@gmail.com', 'www.dipartimento-storia.it', 3);

insert into degrees (name, address, `level`, email, website, department_id)
values ('Storia_egiziana', 'Via Italia, 45', '49', 'storia.department@gmail.com', 'www.dipartimento-storia.it', 4);

insert into degrees (name, address, `level`, email, website, department_id)
values ('Storia_maya', 'Via Italia, 45', '50', 'storia.department@gmail.com', 'www.dipartimento-storia.it', 5);

insert into students (name, surname, date_of_birth, fiscal_code, enrolment_date, registration_number, email, degree_id)
values ('Alberto', 'Elia', '1999/05/23', 'ALBELA50S15H502L', '2018/06/14', '1458', 'AlbertoElia@gmail.com', 1);

insert into students (name, surname, date_of_birth, fiscal_code, enrolment_date, registration_number, email, degree_id)
values ('Alfredo', 'Manfredi', '1999/06/06', 'ALFMAN50S15H502L', '2018/06/14', '1589', 'AlfredoManfredi@gmail.com', 2);

insert into students (name, surname, date_of_birth, fiscal_code, enrolment_date, registration_number, email, degree_id)
values ('Giacomo', 'Soriano', '1999/04/29', 'ALBELA50S15H502L', '2018/06/14', '1615', 'AlbertoElia@gmail.com', 3);

insert into students (name, surname, date_of_birth, fiscal_code, enrolment_date, registration_number, email, degree_id)
values ('Franco', 'Marchi', '1999/08/11', 'ALBELA50S15H502L', '2018/06/14', '1243', 'AlbertoElia@gmail.com', 4);

insert into students (name, surname, date_of_birth, fiscal_code, enrolment_date, registration_number, email, degree_id)
values ('Erica', 'Landolfo', '2000/01/07', 'ALBELA50S15H502L', '2018/06/14', '1487', 'AlbertoElia@gmail.com', 5);
