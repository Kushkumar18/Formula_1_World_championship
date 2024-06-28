# Formula_1_World_championship
Database used to store the information about Formula one World Championship

CREATION OF TABLES:
```sql
create table team( 
TID int primary key, 
Name varchar2(50) unique, 
Debut_year int, 
Team_Principal varchar2(30), 
Points int default NULL 
);

create table driver( 
TID int, 
DID int primary key, 
dname varchar2(30), 
dpoints int, role 
varchar2(30), 
ICE int, 
MGU_H int, 
MGU_K int, 
Turbocharger int, 
ES int, 
CE int, 
Exhaust int, 
foreign key(TID) references team(TID) on delete SET NULL 
); 
create table Engine( 
EID int primary key, 
TID int, 
Ename varchar2(30), 
foreign key(TID) references team(TID) on delete SET NULL 
); 
create table engineers( 
EID int primary key, 
Ename varchar2(30), 
DID int, 
foreign key(DID) references driver(DID) on delete SET NULL 
); 
create table race( 
Circuit varchar2(30), Winner 
int, 
foreign key(Winner) references driver(DID) on delete SET NULL 
);
INSERTION OF DATA 
insert into team values(1,'Red Bull Racing',2005,'Christian Horner',123);
insert into team values(2,'Aston Martin',2021,'Mike Krack',65); insert into 
team values(3,'Mercedes',2010,'Toto Wolff',56); insert into team 
values(4,'Scuderia Ferrari',1950,'Fred Vasseur',26); insert into team 
values(5,'Alpine',2020,'Otmar Szafnauer',8); insert into team 
values(6,'Alpha Tauri',2020,'Franz Tost',1); insert into team values(7,'Alfa 
Romeo',1950,'Alessandro Alunni Bravi',6); insert into team 
values(8,'Haas',2016,'Guenther Steiner',7); insert into team 

values(9,'Williams',1977,'James Vowles',1); insert into team 
values(10,'Mclaren',1966,'Andrea Stella',12);
insert into driver values(1,1,'Max Verstappen',69,'In car',3,3,3,3,2,2,8);
insert into driver values(1,11,'Sergio Perez',54,'In car',3,3,3,3,2,2,8);
insert into driver values(2,14,'Fernando Alonso',45,'In car',3,3,3,3,2,2,8);
insert into driver values(3,44,'Lewis Hamilton',38,'In car',3,3,3,3,2,2,8);
insert into driver values(4,55,'Carlos Sainz',20,'In car',3,3,3,3,2,2,8);
insert into driver values(2,18,'Lance Stroll',20,'In car',3,3,3,3,2,2,8);
insert into driver values(3,63,'George Russell',18,'In car',3,3,3,3,2,2,8);
insert into driver values(10,4,'Lando Norris',8,'In car',3,3,3,3,2,2,8);
insert into driver values(8,27,'Nico Hulkenberg',6,'In car',3,3,3,3,2,2,8);
insert into driver values(4,16,'Charles Leclerc',6,'In car',3,3,3,3,2,2,8);
insert into driver values(7,77,'Valtteri Bottas',4,'In car',3,3,3,3,2,2,8);
insert into driver values(5,31,'Esteban Ocon',4,'In car',3,3,3,3,2,2,8);
insert into driver values(10,81,'Oscar Piastri',4,'In car',3,3,3,3,2,2,8);
insert into driver values(5,10,'Pierre Gasly',4,'In car',3,3,3,3,2,2,8); insert 
into driver values(7,24,'Zhou Guanyu',2,'In car',3,3,3,3,2,2,8); insert into 
driver values(6,22,'Yuki Tsunoda',1,'In car',3,3,3,3,2,2,8); insert into 
driver values(8,20,'Kevin Magnussen',1,'In car',3,3,3,3,2,2,8); insert into 
driver values(9,23,'Alex Albon',1,'In car',3,3,3,3,2,2,8); insert into driver 
values(9,2,'Logan Sargeant',0,'In car',3,3,3,3,2,2,8); insert into driver 
values(6,41,'Nyck de Vries',0,'In car',3,3,3,3,2,2,8);
insert into engine values(1,1,'Red Bull Powertrains');
insert into engine values(2,2,'Mercedes'); insert into 
engine values(3,3,'Mercedes'); insert into engine 
values(4,4,'Ferrari'); insert into engine 
values(5,5,'Renault'); insert into engine 
values(6,6,'Honda'); insert into engine 
values(7,7,'Ferrari'); insert into engine 
values(8,8,'Ferrari'); insert into engine 
values(9,9,'Mercedes');
insert into engine values(10,10,'Mercedes');
insert into engineers values(1,'Gianpiero Lambiase',1);
insert into engineers values(2,'Hugh Bird',11); insert into 
engineers values(3,'Xavier Marcos Padros',16); insert 
into engineers values(4,'Riccardo Adami',55); insert into 
engineers values(5,'Peter Bonnington',44); insert into 
engineers values(6,'Riccardo Musconi',63); insert into 
engineers values(7,'Josh Peckett',31); insert into 
engineers values(8,'Karel Loos',10); insert into engineers 
values(9,'William Joseph',4); insert into engineers 
values(10,'Tom Stallard',81); insert into engineers 
values(11,'Alex Chan',77); insert into engineers 
values(12,'Jorn Becker',24); insert into engineers 
values(13,'Ben Michell',18); insert into engineers 
values(14,'Chris Cronin',14); insert into engineers 
values(15,'Mark Slade',20); insert into engineers 
values(16,'Gary Gannon',27); insert into engineers 

values(17,'Mattia Spini',22); insert into engineers 
values(18,'Pierre Hamelin',41); insert into engineers 
values(19,'James Urwin',23); insert into engineers 
values(20,'Gaetan Jego',2); 
insert into race values('Bahrain','1'); insert 
into race values('Saudi Arabia','11'); insert 
into race values('Melbourne','1');

