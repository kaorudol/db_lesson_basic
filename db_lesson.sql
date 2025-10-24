
Q1

MariaDB [db_lesson]> CREATE TABLE departments (
    -> department_id INT unsigned auto_increment NOT NULL primary key,
    -> name VARCHAR(20) NOT NULL,
    -> created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -> updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    -> );
Query OK, 0 rows affected (0.030 sec)

MariaDB [db_lesson]> DESC departments
    -> ;
+---------------+------------------+------+-----+---------------------+-------------------------------+
| Field         | Type             | Null | Key | Default             | Extra                         |
+---------------+------------------+------+-----+---------------------+-------------------------------+
| department_id | int(10) unsigned | NO   | PRI | NULL                | auto_increment                |
| name          | varchar(20)      | NO   |     | NULL                |                               |
| created_at    | timestamp        | NO   |     | current_timestamp() |                               |
| updated_at    | timestamp        | NO   |     | current_timestamp() | on update current_timestamp() |
+---------------+------------------+------+-----+---------------------+-------------------------------+
4 rows in set (0.023 sec)



Q2
MariaDB [db_lesson]> ALTER TABLE people ADD COLUMN department_id INT unsigned AFTER email;
Query OK, 0 rows affected (0.024 sec)
Records: 0  Duplicates: 0  Warnings: 0

+---------------+---------------------+------+-----+---------------------+-------------------------------+
| person_id     | int(10) unsigned    | NO   | PRI | NULL                | auto_increment                |
| name          | varchar(20)         | NO   |     | NULL                |                               |
| email         | varchar(255)        | YES  | UNI | NULL                |                               |
| department_id | int(10) unsigned    | YES  |     | NULL                |                               |
| age           | tinyint(3) unsigned | YES  |     | NULL                |                               |
| gender        | tinyint(4)          | YES  |     | NULL                |                               |
| created_at    | timestamp           | NO   |     | current_timestamp() |                               |
| updated_at    | timestamp           | NO   |     | current_timestamp() | on update current_timestamp() |
+---------------+---------------------+------+-----+---------------------+-------------------------------+
8 rows in set (0.023 sec)

Q3
MariaDB [db_lesson]> INSERT INTO departments(department_id, name) VALUES
    -> (1, '営業'),
    -> (2, '開発'),
    -> (3, '経理'),
    -> (4, '人事'),
    -> (5, '情報システム');
Query OK, 5 rows affected (0.028 sec)
Records: 5  Duplicates: 0  Warnings: 0

MariaDB [db_lesson]> SELECT * FROM departments;
+---------------+--------------+---------------------+---------------------+
| department_id | name         | created_at          | updated_at          |
+---------------+--------------+---------------------+---------------------+
|             1 | 営業         | 2025-10-22 19:54:13 | 2025-10-22 19:54:13 |
|             2 | 開発         | 2025-10-22 19:54:13 | 2025-10-22 19:54:13 |
|             3 | 経理         | 2025-10-22 19:54:13 | 2025-10-22 19:54:13 |
|             4 | 人事         | 2025-10-22 19:54:13 | 2025-10-22 19:54:13 |
|             5 | 情報システム | 2025-10-22 19:54:13 | 2025-10-22 19:54:13 |
+---------------+--------------+---------------------+---------------------+
5 rows in set (0.001 sec)

MariaDB [db_lesson]> INSERT INTO reports (report_id, person_id, content)                          -> VALUES                                                                                     -> (12, 7, '新規顧客へのアプローチと提案書作成を完了しました。'),
    -> (13, 11, 'データベース接続モジュールのバグ修正作業が完了し、テストコードも追加されまし た。'),
    -> (14, 14, '経費精算の取りまとめと仕訳入力までを本日中に終えることができました。'),          -> (15, 15, '新卒向けオンライン説明会のコンテンツ内容について、最終チェックを実施しました
。'),
    -> (16, 16, 'サーバーのセキュリティパッチ適用作業と、バックアップの確認を行いました。'),
    -> (17, 12, '次期プロジェクトの要件定義について深く議論し、方向性を決定しました。'),
    -> (18, 9, '顧客からの機能改善要望を受け、開発チームに連携するための資料を作成中です。'),
    -> (19, 13, 'パフォーマンス改善のため、最新の技術動向について詳細な調査を実施。'),
    -> (20, 14, '昨日報告されたクリティカルなバグについて原因を特定し、緊急で修正を適用しまし
た。'),
    -> (21, 10, '今週の売上目標を無事に達成し、来週の計画を策定して上長に報告しました。 ');
Query OK, 10 rows affected (0.021 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [db_lesson]> SELECT * FROM reports
    -> ;
+-----------+-----------+----------------------------------------------------------------------------------+---------------------+---------------------+
| report_id | person_id | content
             | created_at          | updated_at          |
+-----------+-----------+----------------------------------------------------------------------------------+---------------------+---------------------+
|         1 |         1 | 午前中は資料作成                                                                 | 2025-10-19 09:30:00 | 2025-10-19 07:56:21 |
|         2 |         1 | 午後は顧客とミーティング                                                         | 2025-10-19 17:00:00 | 2025-10-19 07:56:21 |
|         3 |         1 | 来週の計画を策定                                                                 | 2025-10-20 18:00:00 | 2025-10-19 07:56:21 |
|         4 |         2 | 進捗報告を提出                                                                   | 2025-10-19 17:30:00 | 2025-10-19 07:56:21 |
|         5 |         2 | 新しいライブラリを調査                                                           | 2025-10-21 18:00:00 | 2025-10-19 07:56:21 |
|         6 |         3 | バグの修正に時間を要した                                                         | 2025-10-20 17:50:00 | 2025-10-19 07:56:21 |
|         7 |         3 | サーバーの再起動を実施                                                           | 2025-10-21 17:00:00 | 2025-10-19 07:56:21 |
|         8 |         3 | セキュリティチェックリストを更新                                                 | 2025-10-22 17:40:00 | 2025-10-19 07:56:21 |
|         9 |         4 | デザインレビューに参加                                                           | 2025-10-19 18:00:00 | 2025-10-19 07:56:21 |
|        10 |         4 | プロジェクト資料を整理                                                           | 2025-10-20 18:00:00 | 2025-10-19 07:56:21 |
|        11 |         5 | ミーティングの実施                                                               | 2025-10-19 17:00:00 | 2025-10-19 07:56:21 |
|        12 |         7 | 新規顧客へのアプローチと提案書作成を完了しました。                               | 2025-10-24 23:09:47 | 2025-10-24 23:09:47 |
|        13 |        11 | データベース接続モジュールのバグ修正作業が完了し、テストコードも追加されました。 | 2025-10-24 23:09:47 | 2025-10-24 23:09:47 |
|        14 |        14 | 経費精算の取りまとめと仕訳入力までを本日中に終えることができました。             | 2025-10-24 23:09:47 | 2025-10-24 23:09:47 |
|        15 |        15 | 新卒向けオンライン説明会のコンテンツ内容について、最終チェックを実施しました。   | 2025-10-24 23:09:47 | 2025-10-24 23:09:47 |
|        16 |        16 | サーバーのセキュリティパッチ適用作業と、バックアップの確認を行いました。         | 2025-10-24 23:09:47 | 2025-10-24 23:09:47 |
|        17 |        12 | 次期プロジェクトの要件定義について深く議論し、方向性を決定しました。             | 2025-10-24 23:09:47 | 2025-10-24 23:09:47 |
|        18 |         9 | 顧客からの機能改善要望を受け、開発チームに連携するための資料を作成中です。       | 2025-10-24 23:09:47 | 2025-10-24 23:09:47 |
|        19 |        13 | パフォーマンス改善のため、最新の技術動向について詳細な調査を実施。               | 2025-10-24 23:09:47 | 2025-10-24 23:09:47 |
|        20 |        14 | 昨日報告されたクリティカルなバグについて原因を特定し、緊急で修正を適用しました。 | 2025-10-24 23:09:47 | 2025-10-24 23:09:47 |
|        21 |        10 | 今週の売上目標を無事に達成し、来週の計画を策定して上長に報告しました。           | 2025-10-24 23:09:47 | 2025-10-24 23:09:47 |
+-----------+-----------+----------------------------------------------------------------------------------+---------------------+---------------------+
21 rows in set (0.001 sec)

MariaDB [db_lesson]> INSERT INTO people (person_id, name, email, department_id, age, gender)
    -> VALUES
    -> (7, '伊藤つかさ', 'itou@beyond-works.co.jp', 1, 35, 1),
    -> (8, '高田ことり', 'takada@beyond-works.co.jp', 1, 28, 2),
    -> (9, '高橋けん', 'takahashi@beyond-works.co.jp', 1, 42, 1),
    -> (10, '佐藤よしこ', 'satou@beyond-works.co.jp', 2, 30, 2),
    -> (11, '渡辺まさる', 'watanabe@beyond-works.co.jp', 2, 25, 1),
    -> (12, '山本れいこ', 'yamamoto@beyond-works.co.jp', 2, 38, 2),
    -> (13, '中村ごろう', 'nakamura@beyond-works.co.jp', 2, 45, 1),
    -> (14, '小林さき', 'kobayashi@beyond-works.co.jp', 3, 33, 2),
    -> (15, '加藤ゆうた', 'katou@beyond-works.co.jp', 4, 33, 1),
    -> (16, '吉田 アヤ', 'yoshida@beyond-works.co.jp', 5, 27, 2);
Query OK, 10 rows affected (0.021 sec)
Records: 10  Duplicates: 0  Warnings: 0



Q4
MariaDB [db_lesson]> SELECT * FROM people;
+-----------+----------------+-------------------------------+---------------+------+--------+---------------------+---------------------+
| person_id | name           | email                         | department_id | age  | gender | created_at          | updated_at          |
+-----------+----------------+-------------------------------+---------------+------+--------+---------------------+---------------------+
|         1 | 鈴木たかし     | suzuki@beyond-works.co.jp     |          NULL |   20 |      1 | 2025-10-16 22:20:31 | 2025-10-22 21:49:19 |
|         2 | 田中ゆうこ     | tanaka@beyondo-works.co.jp    |          NULL |   25 |      2 | 2025-10-16 22:35:10 | 2025-10-22 21:51:01 |
|         3 | 福田だいすけ   | fukuda@beyondo-works.co.jp    |          NULL |   42 |      1 | 2025-10-16 22:35:10 | 2025-10-22 21:52:36 |
|         4 | 豊島はなこ     | toyoshima@beyondo-works.co.jp |          NULL |   34 |      2 | 2025-10-16 22:35:10 | 2025-10-22 21:53:12 |
|         6 | 不思議沢みちこ | NULL                          |          NULL | NULL |   NULL | 2025-10-16 22:35:10 | 2025-10-22 21:54:40 |
|         7 | 伊藤つかさ     | itou@beyond-works.co.jp       |             1 |   35 |      1 | 2025-10-25 00:01:49 | 2025-10-25 00:01:49 |
|         8 | 高田ことり     | takada@beyond-works.co.jp     |             1 |   28 |      2 | 2025-10-25 00:01:49 | 2025-10-25 00:01:49 |
|         9 | 高橋けん       | takahashi@beyond-works.co.jp  |             1 |   42 |      1 | 2025-10-25 00:01:49 | 2025-10-25 00:01:49 |
|        10 | 佐藤よしこ     | satou@beyond-works.co.jp      |             2 |   30 |      2 | 2025-10-25 00:01:49 | 2025-10-25 00:01:49 |
|        11 | 渡辺まさる     | watanabe@beyond-works.co.jp   |             2 |   25 |      1 | 2025-10-25 00:01:49 | 2025-10-25 00:01:49 |
|        12 | 山本れいこ     | yamamoto@beyond-works.co.jp   |             2 |   38 |      2 | 2025-10-25 00:01:49 | 2025-10-25 00:01:49 |
|        13 | 中村ごろう     | nakamura@beyond-works.co.jp   |             2 |   45 |      1 | 2025-10-25 00:01:49 | 2025-10-25 00:01:49 |
|        14 | 小林さき       | kobayashi@beyond-works.co.jp  |             3 |   33 |      2 | 2025-10-25 00:01:49 | 2025-10-25 00:01:49 |
|        15 | 加藤ゆうた     | katou@beyond-works.co.jp      |             4 |   33 |      1 | 2025-10-25 00:01:49 | 2025-10-25 00:01:49 |
|        16 | 吉田 アヤ      | yoshida@beyond-works.co.jp    |             5 |   27 |      2 | 2025-10-25 00:01:49 | 2025-10-25 00:01:49 |
+-----------+----------------+-------------------------------+---------------+------+--------+---------------------+---------------------+
15 rows in set (0.000 sec)

MariaDB [db_lesson]> UPDATE people SET department_id = 1 WHERE person_id = 1;
Query OK, 1 row affected (0.021 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [db_lesson]> UPDATE people SET department_id = 2 WHERE person_id = 2;
Query OK, 1 row affected (0.020 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [db_lesson]> UPDATE people SET department_id = 2 WHERE person_id = 3;
Query OK, 1 row affected (0.021 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [db_lesson]> UPDATE people SET department_id = 3 WHERE person_id = 4;
Query OK, 1 row affected (0.020 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [db_lesson]> UPDATE people SET department_id = 4 WHERE person_id = 5;
Query OK, 0 rows affected (0.001 sec)
Rows matched: 0  Changed: 0  Warnings: 0

MariaDB [db_lesson]> UPDATE people SET department_id = 2 WHERE person_id = 2;
Query OK, 0 rows affected (0.000 sec)
Rows matched: 1  Changed: 0  Warnings: 0

MariaDB [db_lesson]> UPDATE people SET department_id = 4 WHERE person_id = 6;
Query OK, 1 row affected (0.020 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [db_lesson]> SELECT * FROM people;
+-----------+----------------+-------------------------------+---------------+------+--------+---------------------+---------------------+
| person_id | name           | email                         | department_id | age  | gender | created_at          | updated_at          |
+-----------+----------------+-------------------------------+---------------+------+--------+---------------------+---------------------+
|         1 | 鈴木たかし     | suzuki@beyond-works.co.jp     |             1 |   20 |      1 | 2025-10-16 22:20:31 | 2025-10-25 00:12:19 |
|         2 | 田中ゆうこ     | tanaka@beyondo-works.co.jp    |             2 |   25 |      2 | 2025-10-16 22:35:10 | 2025-10-25 00:18:12 |
|         3 | 福田だいすけ   | fukuda@beyondo-works.co.jp    |             2 |   42 |      1 | 2025-10-16 22:35:10 | 2025-10-25 00:12:48 |
|         4 | 豊島はなこ     | toyoshima@beyondo-works.co.jp |             3 |   34 |      2 | 2025-10-16 22:35:10 | 2025-10-25 00:13:01 |
|         6 | 不思議沢みちこ | NULL                          |             4 | NULL |   NULL | 2025-10-16 22:35:10 | 2025-10-25 00:18:30 |
|         7 | 伊藤つかさ     | itou@beyond-works.co.jp       |             1 |   35 |      1 | 2025-10-25 00:01:49 | 2025-10-25 00:01:49 |
|         8 | 高田ことり     | takada@beyond-works.co.jp     |             1 |   28 |      2 | 2025-10-25 00:01:49 | 2025-10-25 00:01:49 |
|         9 | 高橋けん       | takahashi@beyond-works.co.jp  |             1 |   42 |      1 | 2025-10-25 00:01:49 | 2025-10-25 00:01:49 |
|        10 | 佐藤よしこ     | satou@beyond-works.co.jp      |             2 |   30 |      2 | 2025-10-25 00:01:49 | 2025-10-25 00:01:49 |
|        11 | 渡辺まさる     | watanabe@beyond-works.co.jp   |             2 |   25 |      1 | 2025-10-25 00:01:49 | 2025-10-25 00:01:49 |
|        12 | 山本れいこ     | yamamoto@beyond-works.co.jp   |             2 |   38 |      2 | 2025-10-25 00:01:49 | 2025-10-25 00:01:49 |
|        13 | 中村ごろう     | nakamura@beyond-works.co.jp   |             2 |   45 |      1 | 2025-10-25 00:01:49 | 2025-10-25 00:01:49 |
|        14 | 小林さき       | kobayashi@beyond-works.co.jp  |             3 |   33 |      2 | 2025-10-25 00:01:49 | 2025-10-25 00:01:49 |
|        15 | 加藤ゆうた     | katou@beyond-works.co.jp      |             4 |   33 |      1 | 2025-10-25 00:01:49 | 2025-10-25 00:01:49 |
|        16 | 吉田 アヤ      | yoshida@beyond-works.co.jp    |             5 |   27 |      2 | 2025-10-25 00:01:49 | 2025-10-25 00:01:49 |
+-----------+----------------+-------------------------------+---------------+------+--------+---------------------+---------------------+
15 rows in set (0.000 sec)


Q5
MariaDB [db_lesson]> SELECT name, age, gender = 1 FROM people WHERE gender = 1 ORDER BY age DESC;
+--------------+------+------------+
| name         | age  | gender = 1 |
+--------------+------+------------+
| 中村ごろう   |   45 |          1 |
| 福田だいすけ |   42 |          1 |
| 高橋けん     |   42 |          1 |
| 伊藤つかさ   |   35 |          1 |
| 加藤ゆうた   |   33 |          1 |
| 渡辺まさる   |   25 |          1 |
| 鈴木たかし   |   20 |          1 |
+--------------+------+------------+
7 rows in set (0.000 sec)


Q6
SELECT
  `name`, `email`, `age`
FROM
  `people`
WHERE
  `department_id` = 1
ORDER BY
  `created_at`;

peopleテーブルから、department_idが１値のレコードを、created_atの昇順で、name、email、emailのカラムを表示する。


Q7
MariaDB [db_lesson]> SELECT name, age, gender FROM people WHERE age BETWEEN 20 AND 29 AND gender = 2 OR age BETWEEN 40 AND 49 AND gender = 1;
+--------------+------+--------+
| name         | age  | gender |
+--------------+------+--------+
| 田中ゆうこ   |   25 |      2 |
| 福田だいすけ |   42 |      1 |
| 高田ことり   |   28 |      2 |
| 高橋けん     |   42 |      1 |
| 中村ごろう   |   45 |      1 |
| 吉田 アヤ    |   27 |      2 |
+--------------+------+--------+
6 rows in set (0.000 sec)



Q8
MariaDB [db_lesson]> SELECT name, age, department_id FROM people WHERE department_id = 1 ORDER BY age ASC;
+------------+------+---------------+
| name       | age  | department_id |
+------------+------+---------------+
| 鈴木たかし |   20 |             1 |
| 高田ことり |   28 |             1 |
| 伊藤つかさ |   35 |             1 |
| 高橋けん   |   42 |             1 |
+------------+------+---------------+
4 rows in set (0.000 sec)



Q9
MariaDB [db_lesson]> SELECT AVG(age) average_age FROM people WHERE gender = 2 AND department_id = 2;
+-------------+
| average_age |
+-------------+
|     34.0000 |
+-------------+
1 row in set (0.001 sec)




Q10
MariaDB [db_lesson]> SELECT p.name, d.name, r.content
    -> FROM people p JOIN reports r ON p.person_id = r.person_id JOIN departments d ON p.department_id = d.department_id;
+--------------+--------------+----------------------------------------------------------------------------------+
| name         | name         | content                                                                          |
+--------------+--------------+----------------------------------------------------------------------------------+
| 伊藤つかさ   | 営業         | 新規顧客へのアプローチと提案書作成を完了しました。                               |
| 高橋けん     | 営業         | 顧客からの機能改善要望を受け、開発チームに連携するための資料を作成中です。       |
| 豊島はなこ   | 開発         | デザインレビューに参加                                                           |
| 豊島はなこ   | 開発         | プロジェクト資料を整理                                                           |
| 渡辺まさる   | 開発         | データベース接続モジュールのバグ修正作業が完了し、テストコードも追加されました。 |
| 山本れいこ   | 開発         | 次期プロジェクトの要件定義について深く議論し、方向性を決定しました。             |
| 中村ごろう   | 開発         | パフォーマンス改善のため、最新の技術動向について詳細な調査を実施。               |
| 佐藤よしこ   | 開発         | 今週の売上目標を無事に達成し、来週の計画を策定して上長に報告しました。           |
| 田中ゆうこ   | 経理         | 進捗報告を提出                                                                   |
| 田中ゆうこ   | 経理         | 新しいライブラリを調査                                                           |
| 福田だいすけ | 経理         | バグの修正に時間を要した                                                         |
| 福田だいすけ | 経理         | サーバーの再起動を実施                                                           |
| 福田だいすけ | 経理         | セキュリティチェックリストを更新                                                 |
| 小林さき     | 経理         | 経費精算の取りまとめと仕訳入力までを本日中に終えることができました。             |
| 小林さき     | 経理         | 昨日報告されたクリティカルなバグについて原因を特定し、緊急で修正を適用しました。 |
| 加藤ゆうた   | 人事         | 新卒向けオンライン説明会のコンテンツ内容について、最終チェックを実施しました。   |
| 鈴木たかし   | 情報システム | 午前中は資料作成                                                                 |
| 鈴木たかし   | 情報システム | 午後は顧客とミーティング                                                         |
| 鈴木たかし   | 情報システム | 来週の計画を策定                                                                 |
| 吉田 アヤ    | 情報システム | サーバーのセキュリティパッチ適用作業と、バックアップの確認を行いました。         |
+--------------+--------------+----------------------------------------------------------------------------------+
20 rows in set (0.001 sec)


Q11
MariaDB [db_lesson]> SELECT p.name, r.content
    -> FROM people p LEFT OUTER JOIN reports r ON p.person_id = r.person_id WHERE content IS NULL;
+----------------+---------+
| name           | content |
+----------------+---------+
| 不思議沢みちこ | NULL    |
| 高田ことり     | NULL    |
+----------------+---------+
2 rows in set (0.020 sec)

