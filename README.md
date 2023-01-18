
# Many To Many Relationship in SQL






## Documentation


There are three types of relations in a relational database table:

One-to-one: 

A relation where a single record in one table is associated with one and only one record in another table.

One-to-many:

A relation where a single record in one table is associated with one or more records in another table.


Many-to-many:

A relation where multiple records in one table are associated with multiple records in another table. This type of relationship is typically implemented using a junction table.

Primary Key : 

A primary key in a database is a unique identifier for each record (row) in a table. It is used to enforce referential integrity and to ensure that no duplicate records are entered into the table. A primary key is typically a single column, but it can also be a combination of multiple columns. Primary keys must contain unique values and cannot be null. It can be used as a foreign key in other tables to create a relationship between them.

Foreign key:

A foreign key in a database is a column or set of columns in one table that refers to the primary key of another table. This creates a link or relationship between the two tables, allowing data to be queried and joined from multiple tables. It is used to enforce referential integrity, which ensures that the data is consistent and that there are no orphaned records. A foreign key in a table must match a primary key in another table, and it can be used to enforce constraints such as "on delete cascade" or "on update cascade" to automatically update or delete related records in other tables when a record in the primary key table is updated or deleted.

Junction Table:

A junction table, also known as a join table or bridge table, is a table in a relational database that is used to resolve a many-to-many relationship between two other tables. It is typically used when two tables have a many-to-many relationship with each other and a separate table is used to resolve this relationship. The junction table contains foreign keys to the primary keys of the other two tables, and it creates a new primary key to identify the relationship between the two records.


## Procedure

We take 2 tables named Students and Courses to understand the many to many relation demo perpose. 
1. In Students table there were two parameter named St_ID and St_Name where we set St_ID as Primary key.

2. In Courses table there were also two parameter named Sub_ID and Sub_Name where we set Sub_ID as Primary key.

As we were working Many to Many relationship which isn't possible directly. So we take another Junction named Junction_table.


