user@LAPTOP-LDO9J73P MINGW64 ~
$ mysqladimn -u root pasword
bash: mysqladimn: command not found

user@LAPTOP-LDO9J73P MINGW64 ~
$ mysqladin -u root password
bash: mysqladin: command not found

user@LAPTOP-LDO9J73P MINGW64 ~
$ mysql -u root -p
Enter password: ********
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 12
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| db_lesson          |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
6 rows in set (0.002 sec)

MariaDB [(none)]> use db_lesson
Database changed
MariaDB [db_lesson]> sho databases;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'sho databases' at line 1
MariaDB [db_lesson]> show databases;
+--------------------+
| Database           |
+--------------------+
| db_lesson          |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
6 rows in set (0.001 sec)

MariaDB [db_lesson]> show tables
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 2
MariaDB [db_lesson]> show tables;
Empty set (0.001 sec)

MariaDB [db_lesson]> describe people;
ERROR 1146 (42S02): Table 'db_lesson.people' doesn't exist
MariaDB [db_lesson]> create table people (
    -> id　int,
    -> name varchar(255),
    -> email varchar(255),
    -> password char(8),
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '
name varchar(255),
email varchar(255),
password char(8),
)' at line 2
MariaDB [db_lesson]> create table people (
    -> id　int,
    -> name varchar(255),
    -> email varchar(255),
    -> password char(8)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '
name varchar(255),
email varchar(255),
password char(8)
)' at line 2
MariaDB [db_lesson]> create table people (
    -> id int,
    -> name varchar(255),
    -> email varchar(255),
    -> password char(8)
    -> );
Query OK, 0 rows affected (0.027 sec)

MariaDB [db_lesson]> show tables;
+---------------------+
| Tables_in_db_lesson |
+---------------------+
| people              |
+---------------------+
1 row in set (0.002 sec)

MariaDB [db_lesson]> describe people
    -> ;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| id       | int(11)      | YES  |     | NULL    |       |
| name     | varchar(255) | YES  |     | NULL    |       |
| email    | varchar(255) | YES  |     | NULL    |       |
| password | char(8)      | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
4 rows in set (0.023 sec)

MariaDB [db_lesson]> drop table people;
Query OK, 0 rows affected (0.007 sec)

MariaDB [db_lesson]> desc
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [db_lesson]> desc;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [db_lesson]> drop table people;
ERROR 1051 (42S02): Unknown table 'db_lesson.people'
MariaDB [db_lesson]> show tables;
Empty set (0.001 sec)

MariaDB [db_lesson]> show tables (
    -> peron_id INT AUTO_INCREMENT PRIMARY KEY,
    -> name VARCHAR(20) NOT NULL,
    -> email VARCHAR(255) UNIQUE,
    -> age INT,
    -> gender TINYINT COMMENT '１が男、２が女',
    -> created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -> updated_at TIMESTAMP DEFAULT CURRENTT_TIMESTAMP ON UPDATE CURRENT_TIMESTA
MP
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(
peron_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
email V...' at line 1
MariaDB [db_lesson]> create table people (
    -> peron_id INT AUTO_INCREMENT PRIMARY KEY,                                     -> name VARCHAR(20) NOT NULL,
    -> email VARCHAR(255) UNIQUE,
    -> age INT,
    -> gender TINYINT COMMENT '１が男、２が女',
    -> created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -> updated_at TIMESTAMP DEFAULT CURRENTT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    -> );
ERROR 1054 (42S22): Unknown column 'CURRENTT_TIMESTAMP' in 'DEFAULT'
MariaDB [db_lesson]> create table people (
    ->     -> peron_id INT AUTO_INCREMENT PRIMARY KEY,
           -> name VARCHAR(20) NOT NULL,
    ->     -> email VARCHAR(255) UNIQUE,
    ->     -> age INT,
    ->     -> gender TINYINT COMMENT '１が男、２が女',
    ->     -> created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ->     -> updated_at TIMESTAMP DEFAULT CURRENTT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '-> peron_id INT AUTO_INCREMENT PRIMARY KEY,                                  ...' at line 2
MariaDB [db_lesson]>  create table people (
    ->     ->     -> peron_id INT AUTO_INCREMENT PRIMARY KEY,
    ->            -> name VARCHAR(20) NOT NULL,
    ->     ->     -> email VARCHAR(255) UNIQUE,
    ->     ->     -> age INT,
    ->     ->     -> gender TINYINT COMMENT '１が男、２が女',
    ->     ->     -> created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ->
    -> ;
| Field      | Type         | Null | Key | Default             | Extra                         |
+------------+--------------+------+-----+---------------------+----------------               |---------------+
| person_id  | int(11)      | NO   | PRI | NULL                | auto_increment                |               |
| name       | varchar(20)  | NO   |     | NULL                |                               |
| email      | varchar(255) | YES  | UNI | NULL                |                               |
| age        | int(11)      | YES  |     | NULL                |                               |
| gender     | tinyint(4)   | YES  |     | NULL                |                               |
| created_at | timestamp    | NO   |     | current_timestamp() |                               |
| updated_at | timestamp    | NO   |     | current_timestamp() | on update current_timestamp() |
+------------+--------------+------+-----+---------------------+-------------------------------+
7 rows in set (0.025 sec)

MariaDB [db_lesson]> alter table peoplr modify age tinyint UNSIGNED;
ERROR 1146 (42S02): Table 'db_lesson.peoplr' doesn't exist
MariaDB [db_lesson]> Ctrl-C -- exit!
Bye


user@LAPTOP-LDO9J73P MINGW64 ~
$ myaql -u root -p
bash: myaql: command not found

user@LAPTOP-LDO9J73P MINGW64 ~
$ mysql -u root -p
Enter password: ********
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 13
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> SHOW databases;
+--------------------+
| Database           |
+--------------------+
| db_lesson          |
| information_schema |
| person_id  | int(11)      | NO   | PRI | NULL                | auto_increment                |               |
| name       | varchar(20)  | NO   |     | NULL                |                               |
| email      | varchar(255) | YES  | UNI | NULL                |                               |
| age        | int(11)      | YES  |     | NULL                |                               |
| gender     | tinyint(4)   | YES  |     | NULL                |                               |
| created_at | timestamp    | NO   |     | current_timestamp() |                               |
| updated_at | timestamp    | NO   |     | current_timestamp() | on update current_timestamp() |
+------------+--------------+------+-----+---------------------+-------------------------------+
7 rows in set (0.024 sec)

MariaDB [db_lesson]> ALETER TABLE people MODIFY age TINYINT UNSIGNED;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'ALETER TABLE people MODIFY age TINYINT UNSIGNED' at line 1
MariaDB [db_lesson]> ALTER TABLE people MODIFY age TINYINT UNSIGED;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [db_lesson]> ALTER TABLE people MODIFY age TINYINT UNSIGNED;
Query OK, 0 rows affected (0.056 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [db_lesson]> DESC people;
+------------+---------------------+------+-----+---------------------+-------------------------------+
| Field      | Type                | Null | Key | Default             | Extra                         |
+------------+---------------------+------+-----+---------------------+-------------------------------+
| person_id  | int(11)             | NO   | PRI | NULL                | auto_increment                |
| name       | varchar(20)         | NO   |     | NULL                |
                      |
| email      | varchar(255)        | YES  | UNI | NULL                |
                      |
| age        | tinyint(3) unsigned | YES  |     | NULL                |
                      |
| gender     | tinyint(4)          | YES  |     | NULL                |
                      |
| created_at | timestamp           | NO   |     | current_timestamp() |
                      |
| updated_at | timestamp           | NO   |     | current_timestamp() | on update current_timestamp() |
+------------+---------------------+------+-----+---------------------+-------------------------------+
7 rows in set (0.024 sec)

MariaDB [db_lesson]> ALTER TABLE peoplemodify person_id INT unsigned;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'INT unsigned' at line 1
MariaDB [db_lesson]> alter table people modify person_id int unsigned;
Query OK, 0 rows affected (0.030 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [db_lesson]> desc people;
+------------+---------------------+------+-----+---------------------+-------------------------------+
| Field      | Type                | Null | Key | Default             | Extra                         |
+------------+---------------------+------+-----+---------------------+-------------------------------+
| person_id  | int(10) unsigned    | NO   | PRI | NULL                |
                      |
| name       | varchar(20)         | NO   |     | NULL                |
                      |
| email      | varchar(255)        | YES  | UNI | NULL                |
                      |
| age        | tinyint(3) unsigned | YES  |     | NULL                |
                      |
| gender     | tinyint(4)          | YES  |     | NULL                |
                      |
| created_at | timestamp           | NO   |     | current_timestamp() |
                      |
| updated_at | timestamp           | NO   |     | current_timestamp() | on update current_timestamp() |
+------------+---------------------+------+-----+---------------------+-------------------------------+
7 rows in set (0.007 sec)

MariaDB [db_lesson]> alter table people modify person_id int unsigned auto_incre
ment;
Query OK, 0 rows affected (0.052 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [db_lesson]> desc people;
+------------+---------------------+------+-----+---------------------+-------------------------------+
| Field      | Type                | Null | Key | Default             | Extra                         |
+------------+---------------------+------+-----+---------------------+-------------------------------+
| person_id  | int(10) unsigned    | NO   | PRI | NULL                | auto_increment                |
| name       | varchar(20)         | NO   |     | NULL                |
                      |
| email      | varchar(255)        | YES  | UNI | NULL                |
                      |
| age        | tinyint(3) unsigned | YES  |     | NULL                |
                      |
| gender     | tinyint(4)          | YES  |     | NULL                |
                      |
| created_at | timestamp           | NO   |     | current_timestamp() |
                      |
| updated_at | timestamp           | NO   |     | current_timestamp() | on update current_timestamp() |
+------------+---------------------+------+-----+---------------------+-------------------------------+
7 rows in set (0.023 sec)

MariaDB [db_lesson]> insert into people (name,email,age, gender) VALUES ('鈴木たかし', 'suzuki@beyond-works.co.jp', 20, 1);
Query OK, 1 row affected (0.006 sec)

MariaDB [db_lesson]> desc people
    -> ;
+------------+---------------------+------+-----+---------------------+-------------------------------+
| Field      | Type                | Null | Key | Default             | Extra                         |
+------------+---------------------+------+-----+---------------------+-------------------------------+
| person_id  | int(10) unsigned    | NO   | PRI | NULL                | auto_increment                |
| name       | varchar(20)         | NO   |     | NULL                |
                      |
| email      | varchar(255)        | YES  | UNI | NULL                |
                      |
| age        | tinyint(3) unsigned | YES  |     | NULL                |
                      |
| gender     | tinyint(4)          | YES  |     | NULL                |
                      |
| created_at | timestamp           | NO   |     | current_timestamp() |
                      |
| updated_at | timestamp           | NO   |     | current_timestamp() | on update current_timestamp() |
+------------+---------------------+------+-----+---------------------+-------------------------------+
7 rows in set (0.022 sec)

MariaDB [db_lesson]> select *FROM people;
+-----------+------------+---------------------------+------+--------+---------------------+---------------------+
| person_id | name       | email                     | age  | gender | created_at          | updated_at          |
+-----------+------------+---------------------------+------+--------+---------------------+---------------------+
|         1 | 鈴木たかし | suzuki@beyond-works.co.jp |   20 |      1 | 2025-10-16 22:20:31 | 2025-10-16 22:20:31 |
+-----------+------------+---------------------------+------+--------+---------------------+---------------------+
1 row in set (0.020 sec)

MariaDB [db_lesson]> INSTER INTO people (name, email, age, gender)
    -> VALUES
    -> ('田中ゆうこ', 'tanaka@beyondo-works.co.jp', 25, 2),
    -> ('福田だいすけ', 'fukuda@beyondo-works.co.jp', 42, 1),
    -> ('豊島はなこ', 'toyoshima@beyondo-works.co.jp', 34, 2),
    -> ('早坂てつお', 'hayasaka@beyondo-works.co.jp', 61, 1),
    -> ('不思議沢みちこ',　NULL, NULL, NULL);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that |         2 | 田中ゆうこ     | tanaka@beyondo-works.co.jp    |   25 |      2 | 2025-10-16 22:35:10 | 2025-10-16 22:35:10 |
|         3 | 福田だいすけ   | fukuda@beyondo-works.co.jp    |   42 |      1 | 2025-10-16 22:20:31 | 2025-10-16 22:20:31 |025-10-16 22:35:10 | 2025-10-16 22:35:10 |
|         4 | 豊島はなこ     | toyoshima@beyondo-works.co.jp |   34 |      2 | 2025-10-16 22:35:10 | 2025-10-16 22:35:10 |
MariaDB [db_lesson]> SELECT * FROM people;
+-----------+----------------+-------------------------------+------+--------+---------------------+---------------------+-------------------+---------------------+
| person_id | name           | email                         | age  | gender | c-------------------+---------------------+reated_at          | updated_at          |
+-----------+----------------+-------------------------------+------+--------+--025-10-16 22:35:10 | 2025-10-16 22:35:10 |-------------------+---------------------+
|         1 | 鈴木たかし     | suzuki@beyond-works.co.jp     |   20 |      1 | 2025-10-16 22:35:10 | 2025-10-16 22:35:10 |025-10-16 22:20:31 | 2025-10-16 22:20:31 |
|         2 | 田中ゆうこ     | tanaka@beyondo-works.co.jp    |   25 |      2 | 2-------------------+---------------------+025-10-16 22:35:10 | 2025-10-16 22:35:10 |
|         3 | 福田だいすけ   | fukuda@beyondo-works.co.jp    |   42 |      1 | 2025-10-16 22:35:10 | 2025-10-16 22:35:10 |
|         4 | 豊島はなこ     | toyoshima@beyondo-works.co.jp |   34 |      2 | 2025-10-16 22:35:10 | 2025-10-16 22:35:10 |
|         6 | 不思議沢みちこ | NULL                          | NULL |   NULL | 2025-10-16 22:35:10 | 2025-10-16 22:35:10 |
+-----------+----------------+-------------------------------+------+--------+---------------------+---------------------+
5 rows in set (0.000 sec)

MariaDB [db_lesson]> SELECT * FROM people WHERE gender = 1;
ERROR 2006 (HY000): MySQL server has gone away
No connection. Trying to reconnect...
Connection id:    14
Current database: db_lesson

+-----------+--------------+----------------------------+------+--------+---------------------+---------------------+
| person_id | name         | email                      | age  | gender | created_at          | updated_at          |
+-----------+--------------+----------------------------+------+--------+---------------------+---------------------+
|         1 | 鈴木たかし   | suzuki@beyond-works.co.jp  |   20 |      1 | 2025-10-16 22:20:31 | 2025-10-16 22:20:31 |
|         3 | 福田だいすけ | fukuda@beyondo-works.co.jp |   42 |      1 | 2025-10-16 22:35:10 | 2025-10-16 22:35:10 |
+-----------+--------------+----------------------------+------+--------+---------------------+---------------------+
2 rows in set (0.025 sec)

MariaDB [db_lesson]> SELECT * FROM people WHERE name != '福田だいすけ';
+-----------+----------------+-------------------------------+------+--------+---------------------+---------------------+
| person_id | name           | email                         | age  | gender | created_at          | updated_at          |
+-----------+----------------+-------------------------------+------+--------+--3 rows in set (0.001 sec)

MariaDB [db_lesson]> SELECT * FROM people WHERE age <= 40;
+-----------+------------+-------------------------------+------+--------+---------------------+---------------------+
| person_id | name       | email                         | age  | gender | created_at          | updated_at          |
+-----------+------------+-------------------------------+------+--------+---------------------+---------------------+
|         1 | 鈴木たかし | suzuki@beyond-works.co.jp     |   20 |      1 | 2025-10-16 22:20:31 | 2025-10-16 22:20:31 |
|         2 | 田中ゆうこ | tanaka@beyondo-works.co.jp    |   25 |      2 | 2025-10-16 22:35:10 | 2025-10-16 22:35:10 |
|         4 | 豊島はなこ | toyoshima@beyondo-works.co.jp |   34 |      2 | 2025-10-16 22:35:10 | 2025-10-16 22:35:10 |
+-----------+------------+-------------------------------+------+--------+---------------------+---------------------+
3 rows in set (0.000 sec)
+-----------+------------+-------------------------------+------+--------+---------------------+---------------------+
2 rows in set (0.211 sec)

MariaDB [db_lesson]> SELECT * FROM people WHERE name NOT IN ('鈴木たかし','豊島 ---------------+---------------------+はなこ');
+-----------+----------------+----------------------------+------+--------+--------------------+---------------------+----------------+---------------------+
| person_id | name           | email                      | age  | gender | crea10-16 22:35:10 | 2025-10-16 22:35:10 |ted_at          | updated_at          |
+-----------+----------------+----------------------------+------+--------+---------------------+---------------------+
|         2 | 田中ゆうこ     | tanaka@beyondo-works.co.jp |   25 |      2 | 2025なこ');-10-16 22:35:10 | 2025-10-16 22:35:10 |
|         3 | 福田だいすけ   | fukuda@beyondo-works.co.jp |   42 |      1 | 2025ted_at          | updated_at          |-10-16 22:35:10 | 2025-10-16 22:35:10 |
|         6 | 不思議沢みちこ | NULL                       | NULL |   NULL | 2025-10-16 22:35:10 | 2025-10-16 22:35:10 |-10-16 22:35:10 | 2025-10-16 22:35:10 |
+-----------+----------------+----------------------------+------+--------+------10-16 22:35:10 | 2025-10-16 22:35:10 |----------------+---------------------+
3 rows in set (0.000 sec)

MariaDB [db_lesson]> SELECT * FROM people WHERE age > 40 OR age < 20;
ERROR 2006 (HY000): MySQL server has gone away
No connection. Trying to reconnect...
Connection id:    15
Current database: db_lesson

+-----------+--------------+----------------------------+------+--------+---------------------+---------------------+
| person_id | name         | email                      | age  | gender | created_at          | updated_at          |
+-----------+--------------+----------------------------+------+--------+---------------------+---------------------+
|         3 | 福田だいすけ | fukuda@beyondo-works.co.jp |   42 |      1 | 2025-10-16 22:35:10 | 2025-10-16 22:35:10 |
+-----------+--------------+----------------------------+------+--------+---------------------+---------------------+
1 row in set (0.020 sec)

MariaDB [db_lesson]> SELECT * FROM people WHERE age > 40 AND OR age < 20;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'OR age < 20' at line 1
MariaDB [db_lesson]> SELECT * FROM people WHERE age > 40 AND age < 20;
Empty set (0.000 sec)

MariaDB [db_lesson]> SELECT * FROM people WHERE 20 <= age AND <= 40;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '<= 40' at line 1
MariaDB [db_lesson]> SELECT * FROM people WHERE 20 <= age AND age <= 40;
+-----------+------------+-------------------------------+------+--------+---------------------+---------------------+
| person_id | name       | email                         | age  | gender | created_at          | updated_at          |
+-----------+------------+-------------------------------+------+--------+---------------------+---------------------+
|         1 | 鈴木たかし | suzuki@beyond-works.co.jp     |   20 |      1 | 2025-10-16 22:20:31 | 2025-10-16 22:20:31 |
|         2 | 田中ゆうこ | tanaka@beyondo-works.co.jp    |   25 |      2 | 2025-10-16 22:35:10 | 2025-10-16 22:35:10 |
|         4 | 豊島はなこ | toyoshima@beyondo-works.co.jp |   34 |      2 | 2025-10-16 22:35:10 | 2025-10-16 22:35:10 |
+-----------+------------+-------------------------------+------+--------+---------------------+---------------------+
3 rows in set (0.001 sec)

MariaDB [db_lesson]> SELECT * FROM people WHERE age BETWEEN 20 AND 40;
+-----------+------------+-------------------------------+------+--------+---------------------+---------------------+
| person_id | name       | email                         | age  | gender | created_at          | updated_at          |
+-----------+------------+-------------------------------+------+--------+---------------------+---------------------+
|         1 | 鈴木たかし | suzuki@beyond-works.co.jp     |   20 |      1 | 2025-10-16 22:20:31 | 2025-10-16 22:20:31 |
|         2 | 田中ゆうこ | tanaka@beyondo-works.co.jp    |   25 |      2 | 2025-10-16 22:35:10 | 2025-10-16 22:35:10 |
|         4 | 豊島はなこ | toyoshima@beyondo-works.co.jp |   34 |      2 | 2025-10-16 22:35:10 | 2025-10-16 22:35:10 |
+-----------+------------+-------------------------------+------+--------+---------------------+---------------------+
3 rows in set (0.020 sec)

MariaDB [db_lesson]> SELECT * FROM people WHERE age NOT BETWEEN 20 AND 40
    -> ;
+-----------+--------------+----------------------------+------+--------+---------------------+---------------------+
| person_id | name         | email                      | age  | gender | created_at          | updated_at          |
+-----------+--------------+----------------------------+------+--------+---------------------+---------------------+
|         3 | 福田だいすけ | fukuda@beyondo-works.co.jp |   42 |      1 | 2025-10-16 22:35:10 | 2025-10-16 22:35:10 |
+-----------+--------------+----------------------------+------+--------+---------------------+---------------------+
1 row in set (0.000 sec)

MariaDB [db_lesson]> SELECT * FROM people WHERE age IS NULL;
+-----------+----------------+-------+------+--------+---------------------+---------------------+
| person_id | name           | email | age  | gender | created_at          | updated_at          |
+-----------+----------------+-------+------+--------+---------------------+---------------------+
                   |
| updated_at | timestamp        | NO   |     | current_timestamp() | on update current_timestamp() |urrent_timestamp() |
+------------+------------------+------+-----+---------------------+-------------------------------+
5 rows in set (0.023 sec)

MariaDB [db_lesson]> SELECT * FROM people INNER JOIN reports ON people.person_id = reports.person_id;
Empty set (0.001 sec)

MariaDB [db_lesson]> SELECT * FROM reports;
Empty set (0.001 sec)

MariaDB [db_lesson]> SELECT perosn_id, name FROM people;
ERROR 1054 (42S22): Unknown column 'perosn_id' in 'field list'
MariaDB [db_lesson]> SELECT peson_id, name FROM people;
ERROR 1054 (42S22): Unknown column 'peson_id' in 'field list'
MariaDB [db_lesson]> SELRCT person_id, name FROM people;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'SELRCT person_id, name FROM people' at line 1
MariaDB [db_lesson]> SELECT perosn_id, name FROM people;
ERROR 1054 (42S22): Unknown column 'perosn_id' in 'field list'
MariaDB [db_lesson]> SELECT person_id, name FROM people;
+-----------+----------------+
| person_id | name           |
+-----------+----------------+
|         1 | 鈴木たかし     |
|         2 | 田中ゆうこ     |
|         3 | 福田だいすけ   |
|         4 | 豊島はなこ     |
|         6 | 不思議沢みちこ |
+-----------+----------------+
5 rows in set (0.000 sec)

MariaDB [db_lesson]> DESCRIBE reports;
+------------+------------------+------+-----+---------------------+-------------------------------+
| Field      | Type             | Null | Key | Default             | Extra                         |
+------------+------------------+------+-----+---------------------+-------------------------------+
| report_id  | int(10) unsigned | NO   | PRI | NULL                | auto_increment                |
| person_id  | int(10) unsigned | NO   |     | NULL                |
                   |
| conted     | text             | NO   |     | NULL                |
                   |
| created_at | timestamp        | NO   |     | current_timestamp() |
                   |
| updated_at | timestamp        | NO   |     | current_timestamp() | on update current_timestamp() |
+------------+------------------+------+-----+---------------------+-------------------------------+
5 rows in set (0.027 sec)

MariaDB [db_lesson]> ALTER TABLE reports RENAME COLUMN conted TO content;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'COLUMN conted TO content' at line 1
MariaDB [db_lesson]> ALTER TABLE reports RENAME COLUMN conted TO content;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'COLUMN conted TO content' at line 1
MariaDB [db_lesson]> ALTER TABLE reports CHANGE COLUMN conted content TEXT;
Query OK, 0 rows affected (0.035 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [db_lesson]> DESCRIBE reports;
+------------+------------------+------+-----+---------------------+-------------------------------+
| Field      | Type             | Null | Key | Default             | Extra                         |
+------------+------------------+------+-----+---------------------+-------------------------------+
| report_id  | int(10) unsigned | NO   | PRI | NULL                | auto_increment                |
| person_id  | int(10) unsigned | NO   |     | NULL                |
                   |
| content    | text             | YES  |     | NULL                |
                   |
| created_at | timestamp        | NO   |     | current_timestamp() |
                   |
| updated_at | timestamp        | NO   |     | current_timestamp() | on update current_timestamp() |
+------------+------------------+------+-----+---------------------+-------------------------------+
5 rows in set (0.011 sec)

MariaDB [db_lesson]> INSERT INTO reports (person_id, content, created_at)
    -> VALUES
    -> (1, '午前中は資料作成。',　'2025-10-19 09:30:00'),
    -> (1, '午後は顧客とミーティング',　'2025-10-19 17:00:00'),
    -> (1, '来週の計画を策定', '2025-10-20 18:00:00'),
    -> (2, '進捗報告を提出', '2025-10-19 17:30:00'),
    -> (2, '新しいライブラリを調査', '2025-10-21 18:00:00'),
    -> (3, 'バグの修正に時間を要した', '2025-10-20 17:50:00'),
    -> (3, 'サーバーの再起動を実施', '2025-10-21 17:00:00,')
    -> (3, 'セキュリティチェックリストを更新', '2025-10-22 17:40:00'),
    -> (4, 'デザインレビューに参加', '2025-10-19 18:00:00'),
    -> (4, 'プロジェクト資料を整理', '2025-10-20 18:00:00'),
    -> (5, 'ミーティングの実施', '2025-10-19 17:00:00')
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''2025-10-19 09:30:00'),
(1, '午後は顧客とミーティング',　'2025-1...' at line 3
MariaDB [db_lesson]> INSERT INTO reports (person_id, content, created_at)           -> VALUES
    -> (1, '午前中は資料作成。', '2025-10-19 09:30:00'),
    -> (1, '午後は顧客とミーティング', '2025-10-19 17:00:00'),
    -> (1, '来週の計画を策定', '2025-10-20 18:00:00'),
    -> (2, '進捗報告を提出', '2025-10-19 17:30:00'),
    -> (2, '新しいライブラリを調査', '2025-10-21 18:00:00'),
    -> (3, 'サーバーの再起動を実施', '2025-10-21 17:00:00,'),
    -> (3, 'セキュリティチェックリストを更新', '2025-10-22 17:40:00'),
    -> (4, 'デザインレビューに参加', '2025-10-19 18:00:00'),
    -> (4, 'プロジェクト資料を整理', '2025-10-20 18:00:00'),
    -> (5, 'ミーティングの実施', '2025-10-19 17:00:00')
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 13
MariaDB [db_lesson]> INSERT INTO reports (person_id, content, created_at)           -> VALUES
    -> (1, '午前中は資料作成。',　'2025-10-19 09:30:00'),
    -> (1, '午後は顧客とミーティング',　'2025-10-19 17:00:00'),
    -> (1, '来週の計画を策定', '2025-10-20 18:00:00'),
    -> (2, '進捗報告を提出', '2025-10-19 17:30:00'),
    -> (2, '新しいライブラリを調査', '2025-10-21 18:00:00'),
    -> (3, 'バグの修正に時間を要した', '2025-10-20 17:50:00'),
    -> (3, 'サーバーの再起動を実施', '2025-10-21 17:00:00'),
    -> (3, 'セキュリティチェックリストを更新', '2025-10-22 17:40:00'),
    -> (4, 'デザインレビューに参加', '2025-10-19 18:00:00'),
    -> (4, 'プロジェクト資料を整理', '2025-10-20 18:00:00'),
    -> (5, 'ミーティングの実施', '2025-10-19 17:00:00')
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''2025-10-19 09:30:00'),
(1, '午後は顧客とミーティング',　'2025-1...' at line 3
MariaDB [db_lesson]> INSERT INTO reports (person_id, content, created_at)           -> VALUES
    -> (1, '午前中は資料作成。', '2025-10-19 09:30:00'),
    -> (1, '午後は顧客とミーティング', '2025-10-19 17:00:00'),
    -> (1, '来週の計画を策定', '2025-10-20 18:00:00'),
    -> (2, '進捗報告を提出', '2025-10-19 17:30:00'),
    -> (2, '新しいライブラリを調査', '2025-10-21 18:00:00'),
    -> (3, 'バグの修正に時間を要した', '2025-10-20 17:50:00'),
    -> (3, 'サーバーの再起動を実施', '2025-10-21 17:00:00'),
|         3 |         1 | 来週の計画を策定                 | 2025-10-20 18:00:00 | 2025-10-19 07:56:21 | | 2025-10-19 07:56:21 |
|         4 |         2 | 進捗報告を提出                   | 2025-10-19 17:30:00 | 2025-10-19 07:56:21 | | 2025-10-19 07:56:21 |
|         5 |         2 | 新しいライブラリを調査           | 2025-10-21 18:00:00 | 2025-10-19 07:56:21 | | 2025-10-19 07:56:21 |
|         6 |         3 | バグの修正に時間を要した         | 2025-10-20 17:50:00 | 2025-10-19 07:56:21 | | 2025-10-19 07:56:21 |
|         7 |         3 | サーバーの再起動を実施           | 2025-10-21 17:00:00 | 2025-10-19 07:56:21 | | 2025-10-19 07:56:21 |
|         8 |         3 | セキュリティチェックリストを更新 | 2025-10-22 17:40:00 | 2025-10-19 07:56:21 |
|         9 |         4 | デザインレビューに参加           | 2025-10-19 18:00:00 | 2025-10-19 07:56:21 |
|        10 |         4 | プロジェクト資料を整理           | 2025-10-20 18:00:00 | 2025-10-19 07:56:21 |
|        11 |         5 | ミーティングの実施               | 2025-10-19 17:00:00 | 2025-10-19 07:56:21 |
+-----------+-----------+----------------------------------+---------------------+---------------------+
11 rows in set (0.000 sec)

MariaDB [db_lesson]> SELECT * FROM  reports WHERE person_id = 1;
ERROR 2006 (HY000): MySQL server has gone away
No connection. Trying to reconnect...
Connection id:    16
Current database: db_lesson

+-----------+-----------+--------------------------+---------------------+---------------------+
| report_id | person_id | content                  | created_at          | updated_at          |
+-----------+-----------+--------------------------+---------------------+---------------------+
|         1 |         1 | 午前中は資料作成         | 2025-10-19 09:30:00 | 2025-10-19 07:56:21 |
|         2 |         1 | 午後は顧客とミーティング | 2025-10-19 17:00:00 | 2025-10-19 07:56:21 |
|         3 |         1 | 来週の計画を策定         | 2025-10-20 18:00:00 | 2025-10-19 07:56:21 |
+-----------+-----------+--------------------------+---------------------+---------------------+
5-10-16 22:35:10 | 2025-10-16 22:35:10 |         5 |         2 | 新しいライブラ を調査           | 2025-10-21 18:00:00 | 2025-10-19 07:56:21 |リを調査           | 2025-10-21 18:00:00 | 2025-10-19 07:56:21 |
|         3 | 福田だいすけ | fukuda@beyondo-works.co.jp    |   42 |      1 | 2025-10-16 22:35:10 | 2025-10-16 22:35:10 |         6 |         3 | バグの修正に時 5-10-16 22:35:10 | 2025-10-16 22:35:10 |         7 |         3 | サーバーの再起動を実施           | 2025-10-21 1間を要した         | 2025-10-20 17:50:00 | 2025-10-19 07:56:21 |
|         3 | 福田だいすけ | fukuda@beyondo-works.co.jp    |   42 |      1 | 2025-10-16 22:35:10 | 2025-10-16 22:35:10 |         8 |         3 | セキュリティチェックリストを更新 | 2025-10-22 15-10-16 22:35:10 | 2025-10-16 22:35:10 |         7 |         3 | サーバーの再起 動を実施           | 2025-10-21 17:00:00 | 2025-10-19 07:56:21 |
|         3 | 福田だいすけ | fukuda@beyondo-works.co.jp    |   42 |      1 | 2025-10-16 22:35:10 | 2025-10-16 22:35:10 |         8 |         3 | セキュリティチ 5-10-16 22:35:10 | 2025-10-16 22:35:10 |        10 |         4 | プロジェクト資料を整理           | 2025-10-20 1ェックリストを更新 | 2025-10-22 17:40:00 | 2025-10-19 07:56:21 |
|         4 | 豊島はなこ   | toyoshima@beyondo-works.co.jp |   34 |      2 | 202-----------------+---------------------+-----------+-----------+----------------------------------+-------------5-10-16 22:35:10 | 2025-10-16 22:35:10 |         9 |         4 | デザインレビュ ーに参加           | 2025-10-19 18:00:00 | 2025-10-19 07:56:21 |
|         4 | 豊島はなこ   | toyoshima@beyondo-works.co.jp |   34 |      2 | 2025-10-16 22:35:10 | 2025-10-16 22:35:10 |        10 |         4 | プロジェクト資 料を整理           | 2025-10-20 18:00:00 | 2025-10-19 07:56:21 |
+-----------+--------------+-------------------------------+------+--------+---------------------+---------------------+-----------+-----------+----------------------------------+---------------------+---------------------+
10 rows in set (0.020 sec)

MariaDB [db_lesson]> SELECT p.person_id, p.name, rcontent
    -> FROM people AS p INNER JOIN reports AS r ON p.person_id = r.person_id;
ERROR 1054 (42S22): Unknown column 'rcontent' in 'field list'
MariaDB [db_lesson]> SELECT p.person_id, p.name, r.content                          -> FROM people AS p INNER JOIN reports AS r ON p.person_id = r.person_id;
+-----------+--------------+----------------------------------+
| person_id | name         | content                          |
+-----------+--------------+----------------------------------+
|         1 | 鈴木たかし   | 午前中は資料作成                 |
|         1 | 鈴木たかし   | 午後は顧客とミーティング         |
|         1 | 鈴木たかし   | 来週の計画を策定                 |
|         2 | 田中ゆうこ   | 進捗報告を提出                   |
|         2 | 田中ゆうこ   | 新しいライブラリを調査           |
|         3 | 福田だいすけ | バグの修正に時間を要した         |
|         3 | 福田だいすけ | サーバーの再起動を実施           |
|         3 | 福田だいすけ | セキュリティチェックリストを更新 |
|         4 | 豊島はなこ   | デザインレビューに参加           |
|         4 | 豊島はなこ   | プロジェクト資料を整理           |
+-----------+--------------+----------------------------------+
10 rows in set (0.000 sec)

MariaDB [db_lesson]> SELECT p.person_id, p.name, r.content FROM people p JOIN reports r USING (person_id);
+-----------+--------------+----------------------------------+
| person_id | name         | content                          |
+-----------+--------------+----------------------------------+
|         1 | 鈴木たかし   | 午前中は資料作成                 |
|         1 | 鈴木たかし   | 午後は顧客とミーティング         |
|         1 | 鈴木たかし   | 来週の計画を策定                 |
|         2 | 田中ゆうこ   | 進捗報告を提出                   |
|         2 | 田中ゆうこ   | 新しいライブラリを調査           |
|         3 | 福田だいすけ | バグの修正に時間を要した         |
|         3 | 福田だいすけ | サーバーの再起動を実施           |
|         3 | 福田だいすけ | セキュリティチェックリストを更新 |
|         4 | 豊島はなこ   | デザインレビューに参加           |
|         4 | 豊島はなこ   | プロジェクト資料を整理           |
+-----------+--------------+----------------------------------+
10 rows in set (0.001 sec)

MariaDB [db_lesson]> SELECT p.person_id, p.name, r.content FROM people p LEFT OUTER JOIN reports r USING(person_id);
+-----------+----------------+----------------------------------+
| person_id | name           | content                          |
+-----------+----------------+----------------------------------+
|         1 | 鈴木たかし     | 午前中は資料作成                 |
|         1 | 鈴木たかし     | 午後は顧客とミーティング         |
|         4 | 豊島はなこ   | プロジェクト資料を整理           |
|      NULL | NULL         | ミーティングの実施               |
+-----------+--------------+----------------------------------+
11 rows in set (0.000 sec)

MariaDB [db_lesson]> SELECT * FROM people GROUP BY gender;
+-----------+----------------+----------------------------+------+--------+---------------------+---------------------+----------------+---------------------+
| person_id | name           | email                      | age  | gender | crea----------------+---------------------+ted_at          | updated_at          |
+-----------+----------------+----------------------------+------+--------+------10-16 22:20:31 | 2025-10-16 22:20:31 |----------------+---------------------+
|         6 | 不思議沢みちこ | NULL                       | NULL |   NULL | 2025----------------+---------------------+-10-16 22:35:10 | 2025-10-16 22:35:10 |
|         1 | 鈴木たかし     | suzuki@beyond-works.co.jp  |   20 |      1 | 2025-10-16 22:20:31 | 2025-10-16 22:20:31 |
|         2 | 田中ゆうこ     | tanaka@beyondo-works.co.jp |   25 |      2 | 2025-10-16 22:35:10 | 2025-10-16 22:35:10 |
+-----------+----------------+----------------------------+------+--------+---------------------+---------------------+
3 rows in set (0.001 sec)

MariaDB [db_lesson]> SELECT gender FROM people GROUP BY gender;
+--------+
| gender |
+--------+
|   NULL |
|      1 |
|      2 |
+--------+
3 rows in set (0.000 sec)

MariaDB [db_lesson]> SELECT gender, COUNT(*) AS people_count FROM people GROUP B
Y gender;
+--------+--------------+
| gender | people_count |
+--------+--------------+
|   NULL |            1 |
|      1 |            2 |
|      2 |            2 |
+--------+--------------+
3 rows in set (0.022 sec)

MariaDB [db_lesson]> SELECT gender, MAX(age) AS max_age, MIN(age) AS min_age FRO
M people GROUP BY gender;
+--------+---------+---------+
| gender | max_age | min_age |
+--------+---------+---------+
|   NULL |    NULL |    NULL |
|      1 |      42 |      20 |
|      2 |      34 |      25 |
+--------+---------+---------+
3 rows in set (0.020 sec)

MariaDB [db_lesson]> SELECT AVE(age) AS average_age FROM people GROUP bY gender;

ERROR 1305 (42000): FUNCTION db_lesson.AVE does not exist
MariaDB [db_lesson]> SELECT AVE(age) AS average_age FROM people GROUP BY gender;

ERROR 1305 (42000): FUNCTION db_lesson.AVE does not exist
MariaDB [db_lesson]> SELECT AVG(age) AS average_age FROM people GROUP BY gender;

+-------------+
| average_age |
+-------------+
|        NULL |
|     31.0000 |
|     29.5000 |
+-------------+
3 rows in set (0.008 sec)

MariaDB [db_lesson]> SELECT SUM(age) AS total_age FROM people GROUP BY gender;
+-----------+
| total_age |
+-----------+
|      NULL |
|        62 |
|        59 |
+-----------+
3 rows in set (0.007 sec)

MariaDB [db_lesson]> exit
Bye
