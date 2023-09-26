-- Creating the Database
CREATE DATABASE DatabaseName;

--Dropping/Deleting the Database;
ALTER DATABASE [DatabaseName]
SET SINGLE_USER -- or RESTRICTED_USER
WITH ROLLBACK IMMEDIATE;
GO
DROP DATABASE [DatabaseName];
GO