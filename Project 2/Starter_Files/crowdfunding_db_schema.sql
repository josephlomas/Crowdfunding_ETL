CREATE TABLE contacts(
		contact_id int PRIMARY KEY NOT NULL,
		first_name varchar NOT NULL,
		last_name varchar NOT NULL,
		email varchar NOT NULL
)

CREATE TABLE category(
		category_id varchar PRIMARY KEY NOT NULL,
		category varchar NOT NULL
)

CREATE TABLE subcategory(
		subcategory_id varchar PRIMARY KEY NOT NULL,
		subcategory varchar NOT NULL
)

CREATE TABLE campaign(
		cf_id int NOT NULL,
		contact_id int PRIMARY KEY NOT NULL,
		company_name varchar NOT NULL,
		description varchar NOT NULL,
		goal real NOT NULL,
		pledged real NOT NULL,
		outcome varchar NOT NULL,
		backers_count int NOT NULL,
		country varchar(5) NOT NULL,
		currency varchar(5) NOT NULL,	
		launched_date date NOT NULL,
		end_date date NOT NULL,
		category_id varchar NOT NULL,
		subcategory_id varchar NOT NULL,
		FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
		FOREIGN KEY (category_id) REFERENCES category(category_id),
		FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
	)

SELECT * from contacts

SELECT * from category

SELECT * from subcategory

SELECT * from campaign