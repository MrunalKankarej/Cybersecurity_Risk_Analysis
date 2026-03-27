show databases;
create database cybersecurity_risk;
use cybersecurity_risk;

-- Dimension tables first
create table dim_country (
country_id int auto_increment primary key,
country_name varchar(100) not null
);

create table dim_attack_type (
attack_type_id int auto_increment primary key,
attack_type_name varchar(100) not null
);

create table dim_target_industry (
target_industry_id int auto_increment primary key,
target_industry_name varchar(100) not null
);

create table dim_attack_source (
attack_source_id int auto_increment primary key,
attack_source_name varchar(100) not null
);

create table dim_vulnerability_type (
vulnerability_type_id int auto_increment primary key,
vulnerability_type_name varchar(100) not null
);

create table dim_defence_mech (
defence_mech_id int auto_increment primary key,
defence_mech_name varchar(100) not null
);

-- Creating actual facts table

create table incidents_table (
incident_id int auto_increment primary key,
incident_year year not null,
country_id int,
attack_type_id int,
target_industry_id int,
attack_source_id int,
vulnerability_type_id int,
defence_mech_id int,
financial_loss_usd_m DECIMAL(10,2),
users_affected int,
resolution_time_hrs int,

foreign key (country_id) references dim_country(country_id),
foreign key (attack_type_id) references dim_attack_type(attack_type_id),
foreign key (target_industry_id) references dim_target_industry(target_industry_id),
foreign key (attack_source_id) references dim_attack_source(attack_source_id),
foreign key (vulnerability_type_id) references dim_vulnerability_type(vulnerability_type_id),
foreign key (defence_mech_id) references dim_defence_mech(defence_mech_id)
