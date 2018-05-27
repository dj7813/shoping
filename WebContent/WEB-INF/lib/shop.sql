SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS dingdan;
DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS wine;




/* Create Tables */

CREATE TABLE dingdan
(
	dd_id int NOT NULL,
	user_id int NOT NULL,
	wine_id int NOT NULL,
	number int NOT NULL,
	PRIMARY KEY (dd_id)
);


CREATE TABLE user
(
	user_id int NOT NULL,
	user_name varchar(20) NOT NULL,
	password varchar(20) NOT NULL,
	address varchar(20) NOT NULL,
	phone int(11) NOT NULL,
	image varchar(200),
	jianjie varchar(200),
	PRIMARY KEY (user_id)
);


CREATE TABLE wine
(
	wine_id int NOT NULL,
	picture varchar(50) NOT NULL,	
	wine_name varchar(20) NOT NULL,
	kind varchar(20) NOT NULL,
	price float NOT NULL,
	detail text,
	shifoutuiguang int not null,
	PRIMARY KEY (wine_id)
);
CREATE TABLE shopingwine
(
	wine_id int NOT NULL,
	picture varchar(50) NOT NULL,	
	wine_name varchar(20) NOT NULL,
	kind varchar(20) NOT NULL,
	price float NOT NULL,
	count int,
	PRIMARY KEY (wine_id)
);
drop table user

