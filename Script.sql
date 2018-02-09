create database AmazonDB;

create table UserProfile(`name` varchar(50) not null,countrycode varchar(4),mobileno varchar(10),
email varchar(50),`password` varchar(50) not null,profilepic varchar(200),primary key(email));

create table UserAddress(email varchar(50),addressline1 varchar(100),addressline2 varchar(100),city varchar(50),state varchar(50),postalcode varchar(6),
foreign key(email) references UserProfile(email) on delete cascade);

create table Items(itemid bigint,category varchar(50),subcategory varchar(50),subsubcategory varchar(50),
title varchar(50),brand varchar(50),price decimal(10,2) not null,description varchar(200),color varchar(20),
weight decimal(4,2),quantity int ,discount decimal(3,2),primary key(itemid));

create table ItemAttributes(itemid bigint,attribute varchar(50),`value` varchar(50),
foreign key(itemid) references Items(itemid) on delete cascade);


create table Seller(mobileno varchar(10) not null,email varchar(50),itemid bigint,addressline1 varchar(100),
addressline2 varchar(100),city varchar(50),state varchar(50),postalcode varchar(6),
primary key(email),foreign key(itemid) references Items(itemid) on delete cascade);