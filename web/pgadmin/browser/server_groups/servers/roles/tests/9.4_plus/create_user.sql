-- User: test_resql_user_pg95
-- DROP USER test_resql_user_pg95;

CREATE USER test_resql_user_pg95 WITH
  LOGIN
  SUPERUSER
  INHERIT
  CREATEDB
  CREATEROLE
  REPLICATION;
