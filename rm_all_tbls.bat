@echo off
set DB_HOST=127.0.0.1
set DB_PORT=5432
set DB_NAME=testScriptDB
set DB_USER=postgres

set PGPASSWORD=postgres

(echo drop table if exists component_version cascade;) | psql -h %DB_HOST% -p %DB_PORT% -U %DB_USER% -d %DB_NAME%
(echo drop table if exists component cascade;) | psql -h %DB_HOST% -p %DB_PORT% -U %DB_USER% -d %DB_NAME%
(echo drop table if exists component_group cascade;) | psql -h %DB_HOST% -p %DB_PORT% -U %DB_USER% -d %DB_NAME%
(echo drop table if exists platform cascade;) | psql -h %DB_HOST% -p %DB_PORT% -U %DB_USER% -d %DB_NAME%

(echo drop table if exists csv_component cascade;) | psql -h %DB_HOST% -p %DB_PORT% -U %DB_USER% -d %DB_NAME%
(echo drop table if exists csv_component_version cascade;) | psql -h %DB_HOST% -p %DB_PORT% -U %DB_USER% -d %DB_NAME%

(echo drop table if exists tmp_component_version cascade;) | psql -h %DB_HOST% -p %DB_PORT% -U %DB_USER% -d %DB_NAME%