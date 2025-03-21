SET
    search_path TO ezecream_05;

INSERT INTO
    Customer (first_name, last_name, email, address)
VALUES
    (
        'Ragnar',
        'Lothbrok',
        'ragnar@kattegat.com',
        '1 Valhalla Way'
    ),
    (
        'Lagertha',
        'Lothbrok',
        'lagertha@kattegat.com',
        '2 Shieldmaiden Road'
    ),
    (
        'Bjorn',
        'Ironside',
        'bjorn@kattegat.com',
        '3 Viking Bay'
    ),
    (
        'Ivar',
        'the Boneless',
        'ivar@danes.com',
        '4 The Great Heathen Army Camp'
    );

INSERT INTO
    ezecream_05.Customer (
        customer_id,
        first_name,
        last_name,
        email,
        address
    )
VALUES
    (
        50,
        'Ubbe',
        'Lothbrok',
        'ragnar@kattegat.com',
        '1 Valhalla Way'
    );

-- TODO: for reader - find out how to delete this row with customer_id 50

SELECT
    *
FROM
    ezecream_05.customer;

-- customer_id = 4,可以直接删除，因为没有引用到4的外键， =50 不能直接删除，order 表有数据50外键连接它
DELETE from ezecream_05.customer where customer_id = 4;

DELETE from ezecream_05.customer where customer_id = 50;

-- 方法1：修改 FOREIGN KEY 约束，让删除 Customer 时， Orders 自动删除相关记录
-- ALTER TABLE ezecream_05.Orders DROP CONSTRAINT orders_customer_id_fkey;

-- ALTER TABLE ezecream_05.Orders ADD CONSTRAINT orders_customer_id_fkey
-- FOREIGN KEY (customer_id) REFERENCES ezecream_05.Customer(customer_id) ON DELETE CASCADE;





