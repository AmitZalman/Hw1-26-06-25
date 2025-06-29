<?xml version="1.0" encoding="UTF-8"?><sqlb_project><db path="class01-26-06-25.db" readonly="0" foreign_keys="1" case_sensitive_like="0" temp_store="0" wal_autocheckpoint="1000" synchronous="2"/><attached/><window><main_tabs open="structure browser pragmas query" current="3"/></window><tab_structure><column_width id="0" width="300"/><column_width id="1" width="0"/><column_width id="2" width="100"/><column_width id="3" width="662"/><column_width id="4" width="0"/><expanded_item id="0" parent="1"/><expanded_item id="0" parent="0"/><expanded_item id="1" parent="1"/><expanded_item id="2" parent="1"/><expanded_item id="3" parent="1"/></tab_structure><tab_browse><table title="STUDENTS" custom_title="0" dock_id="1" table="4,8:mainSTUDENTS"/><dock_state state="000000ff00000000fd0000000100000002000003a40000038bfc0100000001fb000000160064006f0063006b00420072006f00770073006500310100000000000003a40000010b00ffffff0000027e0000000000000004000000040000000800000008fc00000000"/><default_encoding codec=""/><browse_table_settings><table schema="main" name="STUDENTS" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_" freeze_columns="0"><sort/><column_widths><column index="1" value="23"/><column index="2" value="48"/><column index="3" value="54"/><column index="4" value="52"/><column index="5" value="85"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table></browse_table_settings></tab_browse><tab_sql><sql name="SQL 1*">CREATE TABLE STUDENTS (
  ID INTEGER PRIMARY KEY,
  NAME TEXT NOT NULL,
  GRADE INTEGER,
  CLASS TEXT,
  BIRTHYEAR INTEGER
)</sql><sql name="SQL 8*">DROP TABLE STUDENTS;</sql><sql name="SQL 2*">INSERT INTO STUDENTS (ID, NAME, GRADE, CLASS, BIRTHYEAR) VALUES (1, 'Liam', 95, 'H1', 2010);
INSERT INTO STUDENTS (ID, NAME, GRADE, CLASS, BIRTHYEAR) VALUES (2, 'Emma', 88, 'H2', 2011);
INSERT INTO STUDENTS (ID, NAME, GRADE, CLASS, BIRTHYEAR) VALUES (3, 'Noah', 76, 'W1', 2009);
INSERT INTO STUDENTS (ID, NAME, GRADE, CLASS, BIRTHYEAR) VALUES (4, 'Olivia', 83, 'W2', 2008);
INSERT INTO STUDENTS (ID, NAME, GRADE, CLASS, BIRTHYEAR) VALUES (5, 'Ava', 91, 'H1', 2010);
INSERT INTO STUDENTS (ID, NAME, GRADE, CLASS, BIRTHYEAR) VALUES (6, 'Ethan', 67, 'Z1', 2007);
INSERT INTO STUDENTS (ID, NAME, GRADE, CLASS, BIRTHYEAR) VALUES (7, 'Mia', 72, 'W1', 2009);
INSERT INTO STUDENTS (ID, NAME, GRADE, CLASS, BIRTHYEAR) VALUES (8, 'Tom', 55, 'H2', 2012);
INSERT INTO STUDENTS (ID, NAME, GRADE, CLASS, BIRTHYEAR) VALUES (9, 'Dana', 89, 'W2', 2010);
INSERT INTO STUDENTS (ID, NAME, GRADE, CLASS, BIRTHYEAR) VALUES (10, 'Isaac', 78, 'Z1', 2006);</sql><sql name="SQL 3*">/* ex 1(1)
SELECT * FROM STUDENTS;
*/

/* ex 1(2)
SELECT NAME , GRADE FROM STUDENTS;
*/

/* ex1 (3)
SELECT AVG(GRADE)  FROM STUDENTS ;
*/

/* ex1 (4)
SELECT min(BIRTHYEAR) FROM STUDENTS;
*/</sql><sql name="SQL 4*">/*ex2 (1)
SELECT * FROM STUDENTS WHERE GRADE &gt; 80;
*/

/*ex2 (2)
SELECT * FROM STUDENTS WHERE BIRTHYEAR &gt; 2005;
*/

/*ex2 (3)
SELECT * FROM STUDENTS WHERE CLASS = 'H1';
*/

/* ex2 (4)
SELECT * FROM STUDENTS WHERE NAME like '%i%';
*/</sql><sql name="SQL 5*">/*ex3 (1)
SELECT * FROM STUDENTS ORDER by GRADE DESC LIMIT 3;
*/

/*ex3 (2)
SELECT * FROM STUDENTS ORDER by BIRTHYEAR ASC;
*/

/*ex3 (3)
SELECT * FROM STUDENTS LIMIT 3;
*/

/*ex3 (4)
SELECT * FROM STUDENTS LIMIT 3 OFFSET 2;
*/</sql><sql name="SQL 6*">/*ex4 (1)
UPDATE STUDENTS
SET GRADE = 100
WHERE NAME in ('dana');
*/

/*ex4 (2)
UPDATE STUDENTS
SET CLASS = ('GRADUATED')
WHERE BIRTHYEAR &lt; 2010;
*/

/*ex4 (3)
DELETE FROM STUDENTS 
WHERE NAME = 'TOM';
*/</sql><sql name="SQL 7*">/* bonus
SELECT CLASS ,count(*) FROM STUDENTS
GROUP by CLASS;
*/

SELECT NAME , BIRTHYEAR , 2025 - BIRTHYEAR as age
FROM STUDENTS;


</sql><current_tab id="7"/></tab_sql></sqlb_project>
