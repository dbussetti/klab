#!/bin/bash
HOST_LAB=10.10.28.2
NAME=root
PASS=viola
DB_LAB_P2R=lab_p2r
DB_LAB_P2R_ADMIN=lab_p2r_admin
DB_LAB_P2R_DATA=lab_p2r_data

FILE_LAB_P2R=/dumpsql/lab_p2r.sql
FILE_LAB_P2R_ADMIN=/dumpsql/lab_p2r_admin.sql
FILE_LAB_P2R_DATA=/dumpsql/lab_p2r_data.sql

mysqldump -h $HOST_LAB -u$NAME -p$PASS --databases $DB_LAB_P2R > $FILE_LAB_P2R
mysqldump -h $HOST_LAB -u$NAME -p$PASS --databases $DB_LAB_P2R_ADMIN > $FILE_LAB_P2R_ADMIN
mysqldump -h $HOST_LAB -u$NAME -p$PASS --databases $DB_LAB_P2R_DATA > $FILE_LAB_P2R_DATA


HOST=localhost
NAME=root
PASS=viola

mysql < $FILE_LAB_P2R
mysql < $FILE_LAB_P2R_ADMIN
mysql < $FILE_LAB_P2R_DATA

