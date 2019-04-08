CREATE TABLE towary (
  kod_towaru serial primary key not null,
  nazwa_towaru varchar(40) not null,
  rodzaj_towaru varchar(20) not null,
  cena_szt smallint not null,
  promocja_procent smallint
);

CREATE SEQUENCE pracownicy_id
  start 1
  increment 2;

CREATE SEQUENCE stazysci_id
  start 2
  increment 2;

CREATE TYPE plec_typ AS ENUM ('K','M');

CREATE TABLE pracownicy (
  id int DEFAULT nextval('pracownicy_id') primary key not null,
  imie varchar(30) not null,
  nazwisko varchar(40) not null,
  plec plec_typ not null,
  pensja smallint not null,
  nr_domu varchar(10) not null,
  ulica varchar(40) not null,
  kod_pocztowy varchar(6) not null,
  miasto varchar(30) not null
);

CREATE TABLE stazysci (
  id int DEFAULT nextval('stazysci_id') primary key not null,
  imie varchar(30) not null,
  nazwisko varchar(40) not null,
  plec plec_typ not null,
  pensja smallint not null,
  nr_domu varchar(10) not null,
  ulica varchar(40) not null,
  kod_pocztowy varchar(6) not null,
  miasto varchar(30) not null
);

CREATE TABLE paragon (
  nr_paragonu serial primary key not null,
  data_zakupu date not null,
  godzina_zakupu time not null,
  kasjer int not null
);

CREATE TABLE paragon_towary (
  nr_paragonu int not null,
  kod_towaru int not null,
  ilosc smallint not null
);

INSERT INTO towary(nazwa_towaru, rodzaj_towaru, cena_szt, promocja_procent) VALUES
  ('czekolada','slodycze',10,NULL),
  ('kukurydza','warzywa',6,NULL),
  ('papier toaletowy','higiena',4,12),
  ('marchew','warzywa',3,NULL),
  ('koszulka','ubrania',20,NULL),
  ('bulka','pieczywo',1,20),
  ('ziemniak','warzywa',1,10),
  ('tablet','elektronika',300,1),
  ('wafelki','slodycze',8,NULL),
  ('jablko','owoce',2,NULL),
  ('pomarancza','owoce',4,NULL),
  ('ser','nabial',8,15),
  ('spodnie','ubrania',40,5),
  ('skarpety','ubrania',10,NULL),
  ('pendrive','elektronika',50,NULL),
  ('chleb','pieczywo',2,10),
  ('bagietka','pieczywo',2,60),
  ('winogrona','owoce',15,NULL),
  ('mleko','nabial',4,30),
  ('chusteczki','higiena',5,NULL),
  ('kefir','nabial',3,90),
  ('mydlo','higiena',2,NULL);

INSERT INTO pracownicy(imie,nazwisko,plec,pensja,nr_domu,ulica,kod_pocztowy,miasto) VALUES
  ('Anna','Kowalska','K',2137,'6A/15','Wojska Polskiego', '80-222','Gdansk'),
  ('Mariusz','Cebulski','M',2376,'17','Kwiatowa', '80-117','Gdansk'),
  ('Adam','Nowak','M',2244,'2B','Cukierkowa', '81-100','Gdynia'),
  ('Maria','Mariacka','K',3090,'3D','Polna','81-666','Sopot'),
  ('Adam','Kowalski','M',2577,'35','Wojska Polskiego','80-222','Gdansk'),
  ('Katarzyna','Osowska','K',2121,'8','Jana Brzechwy','81-203','Gdynia'),
  ('Patryk','Krupa','M',2392,'7/7','Gdanska','81-432','Sopot'),
  ('Karol','Mysz','M',2126,'25','Pilsudskiego','81-092','Gdansk'),
  ('Marta','Wacik','K',2363,'9/13G','Marii Konopnickiej','81-100','Gdansk'),
  ('Barbara','Szczupak','K',2002,'1/1A','Ogrodowa','81-666','Gdynia');

INSERT INTO stazysci(imie,nazwisko,plec,pensja,nr_domu,ulica,kod_pocztowy,miasto) VALUES
  ('Robert','Kopczyk','M',1500,'19C','Polna','81-666','Sopot'),
  ('Patryk','Morawski','M',1500,'00','Nijaka','80-000','Gdansk'),
  ('Wanda','Panda','K',1500,'3','Lesna','81-626','Gdynia'),
  ('Amanda','Janda','K',1500,'4','Lesna','81-626','Gdynia'),
  ('Borys','Szyc','M',1500,'12','Bukowa','80-118','Gdansk'),
  ('Weronika','Honda','K',1500,'6/9A','Graniczna','81-101','Gdansk');

INSERT INTO paragon(data_zakupu,godzina_zakupu,kasjer) VALUES
  ('2019-03-28','08:02',5),
  ('2019-03-28','08:35',4),
  ('2019-03-28','08:55',2),
  ('2019-03-28','09:04',1),
  ('2019-03-28','09:07',3),
  ('2019-03-28','09:47',2),
  ('2019-03-28','10:02',5),
  ('2019-03-28','10:35',4),
  ('2019-03-28','11:55',10),
  ('2019-03-28','12:04',7),
  ('2019-03-28','12:07',8),
  ('2019-03-28','13:47',2),
  ('2019-03-28','14:02',5),
  ('2019-03-28','14:35',12),
  ('2019-03-28','14:55',2),
  ('2019-03-28','15:04',1),
  ('2019-03-28','16:07',15),
  ('2019-03-28','17:47',2),
  ('2019-03-28','18:02',15),
  ('2019-03-28','18:35',4),
  ('2019-03-28','18:55',2),
  ('2019-03-28','19:04',1),
  ('2019-03-28','19:07',3),
  ('2019-03-28','20:47',9),
  ('2019-03-29','07:55',8),
  ('2019-03-29','08:39',5),
  ('2019-03-29','09:00',6),
  ('2019-03-29','09:04',13),
  ('2019-03-29','09:07',7),
  ('2019-03-29','09:47',2),
  ('2019-03-29','10:55',15),
  ('2019-03-29','10:39',7),
  ('2019-03-29','11:00',6),
  ('2019-03-29','13:04',9),
  ('2019-03-29','13:07',8),
  ('2019-03-29','15:47',2),
  ('2019-03-29','16:55',10),
  ('2019-03-29','17:39',13),
  ('2019-03-29','18:00',6),
  ('2019-03-29','19:04',19),
  ('2019-03-29','20:07',7),
  ('2019-03-29','21:37',17);

INSERT INTO paragon_towary VALUES
  (1,1,3),
  (1,22,2),
  (1,7,1),
  (2,6,7),
  (2,10,3),
  (3,5,5),
  (4,14,1),
  (4,8,5),
  (4,1,3),
  (4,11,2),
  (5,20,16),
  (5,12,5),
  (6,1,7),
  (7,7,2),
  (7,6,4),
  (7,8,5),
  (7,16,1),
  (7,5,2),
  (8,20,3),
  (8,12,1),
  (9,1,7),
  (10,4,2),
  (10,2,3),
  (11,3,5),
  (12,10,3),
  (12,6,2),
  (12,9,1),
  (13,8,5),
  (13,7,3),
  (14,19,2),
  (15,2,1),
  (15,14,5),
  (15,1,3),
  (16,5,2),
  (17,20,6),
  (17,3,5),
  (18,21,3),
  (18,5,2),
  (18,16,4),
  (19,8,5),
  (19,12,3),
  (19,5,2),
  (19,6,1),
  (20,19,5),
  (20,7,3),
  (20,20,3),
  (20,14,1),
  (21,10,5),
  (21,3,3),
  (22,5,2),
  (22,21,1),
  (22,8,5),
  (23,21,3),
  (23,15,2),
  (23,2,1),
  (24,8,5),
  (24,18,3),
  (25,5,2),
  (26,3,1),
  (26,8,5),
  (26,1,3),
  (26,13,2),
  (27,6,1),
  (27,8,5),
  (28,1,3),
  (28,5,2),
  (28,2,1),
  (28,8,5),
  (29,21,3),
  (29,5,2),
  (29,4,1),
  (29,10,5),
  (29,7,3),
  (29,6,2),
  (30,22,1),
  (31,8,5),
  (31,1,3),
  (31,12,2),
  (32,17,1),
  (32,18,5),
  (33,17,3),
  (33,5,2),
  (33,2,1),
  (33,8,5),
  (34,11,3),
  (34,18,2),
  (35,2,1),
  (35,15,5),
  (35,10,3),
  (35,5,2),
  (36,11,1),
  (37,8,5),
  (37,6,3),
  (38,18,2),
  (39,2,1),
  (39,9,3),
  (39,22,2),
  (40,9,1),
  (40,8,5),
  (40,13,3),
  (41,5,2),
  (41,15,1),
  (42,8,5);

