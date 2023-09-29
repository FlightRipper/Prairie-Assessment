CREATE TABLE IF NOT EXISTS Student (
    stdno INTEGER PRIMARY KEY AUTOINCREMENT,
    ssno INTEGER PRIMARY KEY,
    fname VARCHAR(255) NOT NULL,
    lname VARCHAR(255) NOT NULL,
    DOB DATE NOT NULL,
    skills VARCHAR(255) NOT NULL,
);

CREATE TABLE IF NOT EXISTS mentor (
    ssno INTEGER PRIMARY KEY AUTOINCREMENT,
    fname VARCHAR(255) NOT NULL,
    lname VARCHAR(255) NOT NULL,
    DOB DATE NOT NULL,
    salary INTEGER NOT NULL,
    office VARCHAR(255) NOT NULL,
    topics VARCHAR(255) NOT NULL,
);

CREATE TABLE IF NOT EXISTS department (
    depid INTEGER PRIMARY KEY AUTOINCREMENT,
    depname VARCHAR(255) NOT NULL,
    depoffice VARCHAR(255) NOT NULL,
    topicspe VARCHAR(255) NOT NULL,
);

CREATE TABLE IF NOT EXISTS cohort (
    stdnum INTEGER,
    ssno INTEGER PRIMARY KEY,
    ID INTEGER,
    cohnum INTEGER,
    StrDate Date,
    EndDate Date,
);

CREATE TABLE IF NOT EXISTS topic (
    Topicid INTEGER PRIMARY KEY AUTOINCREMENT,
    title VARCHAR(255),
    describe VARCHAR(255),
);

insert into Student Values ( 1 , 2 , 'kousa', 'mousa', '24/01/2034' , 'html'),
insert into Student Values ( 2 , 3 , 'ismal', 'ahmad', '2/20/2034' , 'css'),
insert into Student Values ( 3 , 4 , 'ahmad', 'ali', '22/01/4000' , 'js'),
insert into Student Values ( 4 , 5 , 'ali', 'ahmad', '3/02/1990' , 'figma'),

insert into mentor Values ( 1 , 'kousa', 'mousa', '24/01/2000' , 1300, "yes", 'html'),
insert into mentor Values ( 2 , 'john', 'ali', '20/01/1999' , 1500, "Maybe", 'css'),
insert into mentor Values ( 3 , 'brahim', 'yes', '3/01/2000' , 5000, "sure", 'js'),
insert into mentor Values ( 4 , 'ali', 'kousa', '24/01/3000' , 6000, "Okay", 'php'),

insert into department Values ( 1 , 'info', '1223' , 'info'),
insert into department Values ( 2 , 'finance', '1444' , 'finance'),
insert into department Values ( 3 , 'logic', '4444' , 'yes'),
insert into department Values ( 4 , 'medic', '5555' , 'medic'),

insert into topic Values ( 1 , 'john', 'bad'),
insert into topic Values ( 2 , 'kousa', 'good'),
insert into topic Values ( 3 , 'ali', 'very good'),
insert into topic Values ( 4 , 'fairy', 'bad'),

select fname , lname , rank from mentor;

select * from mentor where office = '333';

select * from mentor where salary > 1000 ;

select fname , lname , rank from mentor where salary > 1000;

select fname, lname from mentor innerjoins depatment at mentor.topic = department.topicspe;

select stdno from Student where skills = 'Development';

select ssno from Student where skills = 'Development';