\c cs415

CREATE TABLE webuser (
    user_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    username VARCHAR(50),
    password VARCHAR(50)
);

CREATE TABLE addresstype (
    address_type_id SERIAL PRIMARY KEY,
    address_type VARCHAR(50)
);

CREATE TABLE useraddress (
    address_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES webuser(user_id),
    address_type_id INT REFERENCES addresstype(address_type_id),
    address_line1 VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    zip_code VARCHAR(10)
);

CREATE TABLE phonetype (
    phone_type_id SERIAL PRIMARY KEY,
    phone_type VARCHAR(50)
);

CREATE TABLE userphone (
    phone_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES webuser(user_id),
    phone_type_id INT REFERENCES phonetype(phone_type_id),
    phone_number VARCHAR(20)
);

CREATE TABLE userinfo (
    info_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES webuser(user_id),
    bio TEXT
);

CREATE TABLE page (
    page_id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    content TEXT
);