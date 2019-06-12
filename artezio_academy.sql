create database artezio_tranning;
show databases;
use artezio_tranning;

create table if not exists artezio_academy(
id_academy int unsigned primary key AUTO_INCREMENT,
Имя varchar(30) NOT NULL,
Фамилия varchar(30) NOT NULL,
Должность varchar(30) NOT NULL,
Зарплата decimal NOT NULL
);

select * from artezio_academy;

insert into artezio_academy( id_academy, Имя, Фамилия, Должность, Зарплата) values(null, "Marcos", "Mussungo", "Python Developer", 50000);
insert into artezio_academy( id_academy, Имя, Фамилия, Должность, Зарплата) values(null, "Natael", "Bernardo", "FrontEnd Developer", 30000);
insert into artezio_academy( id_academy, Имя, Фамилия, Должность, Зарплата) values(null, "Andre", "Carlos", "BI Analyst", 29000);
insert into artezio_academy( id_academy, Имя, Фамилия, Должность, Зарплата) values(null, "Filipe", "Lundoloka", "Database Admin", 35000);
insert into artezio_academy( id_academy, Имя, Фамилия, Должность, Зарплата) values(null, "Joao", "Pinto", "React and Redux Developer", 25000);

select * from artezio_academy where Зарплата < 30000;
update artezio_academy set Зарплата = 28000 where id_academy=2;

CREATE TABLE IF NOT EXISTS boss(
id_boss INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
Имя VARCHAR(30) NOT NULL,
Фамилия VARCHAR(30) NOT NULL,
Должность VARCHAR(30) NOT NULL,
Зарплата DECIMAL NOT NULL,
idacademy INT UNSIGNED,
FOREIGN KEY (idacademy)
REFERENCES artezio_academy(id_academy)
);

select * from boss;

insert into boss values(null, "james", "Silva", "Expert Python", 90000, 1 );
insert into boss values(null, "Andre", "Manuel", "Forense Analyst", 70000,2 );
insert into boss values(null, "Firewall", "Shodan", "Sql Server Developer", 95000,1 );
insert into boss values(null, "filepe", "Neto", ".Net Expert", 76000, 3 );
insert into boss values(null, "Marcos", "Mussungo", "Flask and Django", 90000,1 );

CREATE TABLE IF NOT EXISTS helper(
id_helper INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
Имя VARCHAR(30) NOT NULL,
Фамилия VARCHAR(30) NOT NULL,
Должность VARCHAR(30) NOT NULL,
Зарплата DECIMAL NOT NULL,
idacadhelper INT UNSIGNED,
FOREIGN KEY (idacadhelper )
REFERENCES artezio_academy(id_academy)
);


select * from helper;

insert into helper values(null, "james", "Richard", "junior Python", 40000, 3 );
insert into helper values(null, "Natael", "Manuel", "junior javascript", 30000, 5 );
insert into helper values(null, "andrade", "Simao", "junior sql server", 35000,1 );
insert into helper values(null, "Filepe", "Thiago", ".net developer", 55000, 4 );
insert into helper values(null, "Joao", "Garcia", "nodejs developer", 40000,5 );

select * from artezio_academy inner join boss on artezio_academy.id_academy = boss.id_boss;

select * from artezio_academy inner join helper on artezio_academy.id_academy = helper.id_helper;

