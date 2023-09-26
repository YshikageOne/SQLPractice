use TestingDB; -- calling in the database

CREATE TABLE tablelol (	--Creating the table with the name of the table
	-- Defining the columns of the Table
	-- naming goes like this
	--For the first column - id(column name) INT(data type) IDENTITY (1, 1) (this means it'll auto increment by 1) PRIMARY KEY(its the primary key for the table) 
	--For the others -  column_name data_type (NULL/NOT NULL) (UNIQUE - in case if you want to make each input row unique)
);

CREATE TABLE Persons (
    person_id INT IDENTITY (1, 1) PRIMARY KEY, -- Surrogate key for uniqueness
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    -- Other columns for additional information
);


-- Making a table that has a relations with the previous Table

CREATE TABLE FavoriteFood ( --Supposed that we have a table that holds the each person's favorite meal and desserts refering to the person table
	favorite_food_id INT IDENTITY (1, 1) PRIMARY KEY,
	order_id INT, -- This is the foreign key
	fav_food VARCHAR(100) NOT NULL,
	fav_dessert VARCHAR(100) NOT NULL,
	FOREIGN KEY(order_id)
		REFERENCES Persons (person_id)
		ON DELETE CASCADE ON UPDATE CASCADE -- This means that if you delete/update a row on the Persons table it'll also delete a row on the FavoriteFood table with its corresponding row

);