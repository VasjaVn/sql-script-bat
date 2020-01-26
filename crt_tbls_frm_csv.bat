@echo off
set DB_HOST=127.0.0.1
set DB_PORT=5432
set DB_NAME=testScriptDB
set DB_USER=postgres
set DB_PASSWORD=postgres

psql -h %DB_HOST% -p %DB_PORT% -U %DB_USER% -d %DB_NAME% -a -f ./sql/crt_tbl/crt_tbls_scdadl.sql 
psql -h %DB_HOST% -p %DB_PORT% -U %DB_USER% -d %DB_NAME% -a -f ./sql/crt_tbl/crt_tbl_csv_component.sql
psql -h %DB_HOST% -p %DB_PORT% -U %DB_USER% -d %DB_NAME% -a -f ./sql/crt_tbl/crt_tbl_csv_component_version.sql

psql -h %DB_HOST% -p %DB_PORT% -U %DB_USER% -d %DB_NAME% -a -f ./sql/cp_frm_fl_csv/cp_frm_fl_components_csv.sql 
psql -h %DB_HOST% -p %DB_PORT% -U %DB_USER% -d %DB_NAME% -a -f ./sql/cp_frm_fl_csv/cp_frm_fl_component_versions_csv.sql 

psql -h %DB_HOST% -p %DB_PORT% -U %DB_USER% -d %DB_NAME% -a -f ./sql/feed_tbl/1_feed_tbl_platform.sql 
psql -h %DB_HOST% -p %DB_PORT% -U %DB_USER% -d %DB_NAME% -a -f ./sql/feed_tbl/2_feed_tbl_component_group.sql 
psql -h %DB_HOST% -p %DB_PORT% -U %DB_USER% -d %DB_NAME% -a -f ./sql/feed_tbl/3_feed_tbl_component.sql 
psql -h %DB_HOST% -p %DB_PORT% -U %DB_USER% -d %DB_NAME% -a -f ./sql/feed_tbl/4_feed_tbl_component_version.sql
