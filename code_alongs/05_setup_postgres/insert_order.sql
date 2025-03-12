SET
    search_path TO ezecream_05;

TRUNCATE TABLE orders RESTART IDENTITY; 
-- 清空 orders 表，并重置所有自增 ID（例如 SERIAL 类型的主键），让下次插入时，从 1 开始计数

INSERT INTO
    ezecream_05.Orders (customer_id, order_date)
VALUES
    (2, '2024-05-04'),
    (50, '900-02-05');

-- DELETE FROM ezecream_05.orders WHERE customer_id = 50;

SELECT * FROM ezecream_05.orders;

-- DELETE from ezecream_05.orders WHERE customer_id = 50;





-- 修正 Orders.customer_id 的外键, 删除错误的外键并重新创建,ezecream_05.Customer, 加上schema，不然容易跳到 public schema。
-- ALTER TABLE ezecream_05.Orders DROP CONSTRAINT orders_customer_id_fkey;

-- ALTER TABLE ezecream_05.Orders ADD CONSTRAINT orders_customer_id_fkey
-- FOREIGN KEY (customer_id) REFERENCES ezecream_05.Customer(customer_id)


-- 什么时候用 RESTART IDENTITY？
-- ✅ 需要让 ID 重新从 1 开始时
-- ✅ 开发测试时重置数据
-- ❌ 生产环境谨慎使用！清空数据不可撤销 ⚠️





