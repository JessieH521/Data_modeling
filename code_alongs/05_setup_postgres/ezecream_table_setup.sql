CREATE SCHEMA if not EXISTS ezecream_05;

set search_path to ezecream_05;
-- 设置当前的 schema，这样后续创建的表默认属于 ezecream_05

CREATE table if not EXISTS Customer (
    Customer_id serial primary key,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    personal_number char(12),
    email varchar(255) not null,
    address varchar(100) not null
);

