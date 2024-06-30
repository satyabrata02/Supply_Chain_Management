CREATE DATABASE  IF NOT EXISTS SCMS ;
USE SCMS;

CREATE TABLE client_table (
  cust_id varchar(10) NOT NULL unique,
  firstname varchar(50) NOT NULL,
  middlename varchar(50),
  lastname varchar(50) NOT NULL,
  gender varchar(15) NOT NULL,
  street varchar(50) NOT NULL,
  city varchar(30) NOT NULL,
  pin varchar(8) NOT NULL,
  state varchar(20) NOT NULL,
  c_number varchar(12) NOT NULL,
  mail_id varchar(50) NOT NULL,
  a_mail_id varchar(50),
  usn varchar(20) NOT NULL,
  pwd varchar(20) NOT NULL,
  security_question varchar(70) NOT NULL,
  ans varchar(30) NOT NULL,
  PRIMARY KEY (usn)
);


CREATE TABLE pfeedback (
  name varchar(50) NOT NULL,
  productname varchar(70) NOT NULL,
  comments longtext
);


CREATE TABLE gfeedback (
  name varchar(50) NOT NULL,
  suggestions longtext
);