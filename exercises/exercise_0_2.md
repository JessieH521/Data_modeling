# Exercise 0

## 2. Library Bookly

A library called Bookly keeps track of books and members who borrow them. Each book has a title, author, and ISBN number. Each member has a membership ID, name, and contact information. A member can borrow multiple books, but each book can be borrowed by only one member at a time.

a) Identify the `entities` and `attributes` for each entity.

b) Determine the `relationship` between member and books.

c) Draw a `conceptual ERD` using crow foots notation.


### Solution

a) `entities` and `attributes` 

**book**
    title, author, ISBN number 

>[!NOTE]
> ISBN is a unique number for a book, which could be used as a `primary key`, this will make it into a `natural key` 
> ISBN 是书籍的唯一编号，每本书都有一个独特的 ISBN 号。
如果用 ISBN 作为 primary key（主键），那么这个主键是来自现实世界的一个已有标识，而不是数据库里专门生成的 ID。
这样的主键被称为 natural key（自然键），因为它是数据本身的一个天然属性，而不是数据库人为创建的一个标识（比如自动递增的 ID）。
> Natural Key (自然键)	ISBN, 社保号 (SSN), 车牌号	现实世界中已经存在的唯一标识。
> Surrogate Key (代理键)，自动递增 ID (book_id = 1, 2, 3...)	由数据库自动生成，没有现实意义。

**member**    
    membership ID, first_name, last_name,phone, adress, email

b) `relationship`    
    borrow

c) `conceptual ERD` 

<img src = "../assets/initial_conceptual_model_ex2.png" width=300>







