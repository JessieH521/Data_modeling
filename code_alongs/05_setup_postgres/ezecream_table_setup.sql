CREATE SCHEMA if not EXISTS ezecream_05;

set search_path to ezecream_05;
-- 设置当前的 schema，这样后续创建的表默认属于 ezecream_05

CREATE table if not EXISTS ezecream_05.Customer (
    Customer_id serial primary key,   -- serial 自动递增， 可以不输入 id
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    personal_number char(12),
    email varchar(255) not null,
    address varchar(100) not null
);

CREATE TABLE IF NOT EXISTS ezecream_05.Orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL, 
    order_date DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (customer_id) REFERENCES ezecream_05.Customer (customer_id)
);

-- TODO for reader: implement the rest of the physical logical diagram



-- 检查外键指向
SELECT conname, conrelid::regclass, confrelid::regclass, condeferrable, condeferred
FROM pg_constraint
WHERE conrelid = 'ezecream_05.orders'::regclass;
