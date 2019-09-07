create database assignment2;
use assignment2;

create table continent(
ct_name varcharacter(30) PRIMARY KEY,
ct_area varcharacter(30));

create table island(
is_name varcharacter(30) NOT NULL PRIMARY KEY,
is_area varcharacter(30));

create table ocean(
oc_name varcharacter(30) NOT NULL PRIMARY KEY,
ocrea varcharacter(30));

create table strait(
st_name varcharacter(30) NOT NULL PRIMARY KEY,
st_area varcharacter(30));

create table located_in(
island varcharacter(30),
ocean varcharacter(30),
PRIMARY KEY(island, ocean),
FOREIGN KEY (island) REFERENCES island(is_name),
FOREIGN KEY (ocean) REFERENCES ocean(oc_name));

create table connected_to(
continent1 varcharacter(30),
continent2 varcharacter(30),
PRIMARY KEY (continent1, continent2),
FOREIGN KEY (continent1) REFERENCES continent(ct_name),
FOREIGN KEY (continent2) REFERENCES continent(ct_name));

create table separated_by(
c_name varcharacter(30) NOT NULL,
i_name varcharacter(30) NOT NULL,
s_name varcharacter(30) NOT NULL,
PRIMARY KEY (c_name, i_name, s_name),
FOREIGN KEY (c_name) REFERENCES continent(ct_name),
FOREIGN KEY (i_name) REFERENCES island(is_name),
FOREIGN KEY (s_name) REFERENCES strait(st_name));

insert into continent value 
('Africa', 'Africa'),
('Antartica', 'Antartica'),
('Asia', 'Eurasia'),
('Australia', 'Australia'),
('Europe', 'Eurasia'),
('North America', 'America'),
('South America', 'America');

insert into island value
-- African Islands
('Craigland', 'Atlantic Ocean'),
('Chrisland', 'Atlantic Ocean'),
('Ayanland', 'Atlantic Ocean'),
('Wakanda', 'Southern Ocean'),
('Mailand', 'Indian Ocean'),
-- Antartica Islands
('Cold Island', 'Southern Ocean'),
('Colder Island', 'Southern Ocean'),
('Even Colder Island', 'Southern Ocean'),
('The Coldest Island', 'Southern Ocean'),
("Walt Disney's Tomb", 'Southern Ocean'),
-- Asian Islands
('Malaysia', 'Indian Ocean'),
('Singapore', 'Indian Ocean'),
('Japan', 'Pacific Ocean'),
('Taiwan', 'Pacific Ocean'),
('Sri Lanka', 'Indian Ocean'),
-- Australian Island
('New Zealand', 'Pacific Ocean'),
('Tazmania', 'Pacific Ocean'),
('Down Unda Island', 'Pacific Ocean'),
('Bloody Island', 'Pacific Ocean'),
('Arachnialand', 'Pacific Ocean'),
-- European Islands
('England', 'Atlantic Ocean'),
('Ireland', 'Atlantic Ocean'),
('Scotland', 'Atlantic Ocean'),
('Arturia', 'Atlantic Ocean'),
('Bollocksland', 'Atlantic Ocean'),
-- North American Islands
('Cuba', 'Atlantic Ocean'),
('Puerto Rico', 'Atlantic Ocean'),
('Haiti', 'Atlantic Ocean'),
('Dominican Republic', 'Atlantic Ocean'),
('Jamaica', 'Atlantic Ocean'),
-- South American Islands
('Santiagoland', 'Atlantic Ocean'),
('Fariland', 'Pacific Ocean'),
('Sorta Cold Island', 'Southern Ocean'),
('Smokey Island', 'Pacific Ocean'),
('Cannibal Island', 'Pacific Ocean');

insert into ocean value
('Atlantic Ocean', null),
('Artic Ocean', null),
('Southern Ocean', null),
('Indian Ocean', null),
('Pacific Ocean', null);

insert into strait value
('Belton Strait', null), -- separates Craigland and Africa
('Taiwan Strait', null), -- separates Taiwan and China
("T'Challa Strait", null), -- separates Wakanda and Africa
('Smokey Strait', null), -- separates South America and Smokey Island
('Palk Strait', null); -- separates India and Sri Lanka

insert into located_in value
('Craigland', 'Atlantic Ocean'),
('Chrisland', 'Atlantic Ocean'),
('Ayanland', 'Atlantic Ocean'),
('Wakanda', 'Southern Ocean'),
('Mailand', 'Indian Ocean'),
('Cold Island', 'Southern Ocean'),
('Colder Island', 'Southern Ocean'),
('Even Colder Island', 'Southern Ocean'),
('The Coldest Island', 'Southern Ocean'),
("Walt Disney's Tomb", 'Southern Ocean'),
('Malaysia', 'Indian Ocean'),
('Singapore', 'Indian Ocean'),
('Sri Lanka', 'Indian Ocean'),
('Japan', 'Pacific Ocean'),
('Taiwan', 'Pacific Ocean'),
('New Zealand', 'Pacific Ocean'),
('Tazmania', 'Pacific Ocean'),
('Down Unda Island', 'Pacific Ocean'),
('Bloody Island', 'Pacific Ocean'),
('Arachnialand', 'Pacific Ocean'),
('England', 'Atlantic Ocean'),
('Ireland', 'Atlantic Ocean'),
('Scotland', 'Atlantic Ocean'),
('Arturia', 'Atlantic Ocean'),
('Bollocksland', 'Atlantic Ocean'),
('Cuba', 'Atlantic Ocean'),
('Puerto Rico', 'Atlantic Ocean'),
('Haiti', 'Atlantic Ocean'),
('Dominican Republic', 'Atlantic Ocean'),
('Jamaica', 'Atlantic Ocean'),
('Santiagoland', 'Atlantic Ocean'),
('Fariland', 'Pacific Ocean'),
('Sorta Cold Island', 'Southern Ocean'),
('Smokey Island', 'Pacific Ocean'),
('Cannibal Island', 'Pacific Ocean');

insert into connected_to value
('North America', 'South America'),
('South America', 'North America'),
('Europe', 'Asia'),
('Asia', 'Europe');

insert into separated_by value
('Africa', 'Wakanda', "T'Challa Strait"),
('Asia', 'Sri Lanka', 'Palk Strait'),
('Asia', 'Taiwan', 'Taiwan Strait'),
('South America', 'Smokey Island', 'Smokey Strait');

-- Display all continents
SELECT * FROM continent;
-- Display all islands
SELECT * FROM island;
-- Display all oceans
SELECT * FROM ocean;
-- Display all straits
SELECT * FROM strait;
-- Display connected_to
SELECT * from connected_to;
-- Display located_in
SELECT * from located_in;
-- Display separates
SELECT * from separated_by;

drop tables continent, island, ocean, strait, connected_to, located_in, separated_by;
drop database assignment2;