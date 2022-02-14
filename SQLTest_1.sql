USE master;

-- Drop database
IF DB_ID('TSQL2012') IS NOT NULL DROP DATABASE TSQL2012;

-- If database could not be created due to open connections, abort
IF @@ERROR = 3702 
   RAISERROR('Database cannot be dropped because there are still open connections.', 127, 127) WITH NOWAIT, LOG;

-- Create database
CREATE DATABASE TSQL2012;
GO

USE TSQL2012;
GO