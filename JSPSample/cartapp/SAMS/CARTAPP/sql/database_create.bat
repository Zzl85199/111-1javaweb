rem Script to create the Books For Geeks database instance

if NOT DEFINED MYSQL_HOME SET MYSQL_HOME=C:\MYSQL

%MYSQL_HOME%\bin\mysqladmin drop BFG
%MYSQL_HOME%\bin\mysqladmin create BFG
%MYSQL_HOME%\bin\mysqladmin reload

%MYSQL_HOME%\bin\mysql -e="\. bfg_init.sql" BFG
