\c cs415

INSERT INTO webuser (first_name, last_name, username, password)
VALUES
('Humberto', 'Villanueva', 'humbertov', 'password123'),
('Sara', 'Ahmad', 'saraa', 'password456');

INSERT INTO addresstype (address_type)
VALUES
('Home'),
('Work');

INSERT INTO useraddress (user_id, address_type_id, address_line1, city, state, zip_code)
VALUES
(1, 1, '123 Main St', 'Salt Lake City', 'Utah', '84101'),
(2, 2, '456 Center St', 'Murray', 'Utah', '84107');

INSERT INTO phonetype (phone_type)
VALUES
('Mobile'),
('Office');

INSERT INTO userphone (user_id, phone_type_id, phone_number)
VALUES
(1, 1, '8015551111'),
(2, 2, '8015552222');

INSERT INTO userinfo (user_id, bio)
VALUES
(1, 'Software engineering student interested in backend development.'),
(2, 'Chemical engineer and BYU graduate.');

INSERT INTO page (title, content)
VALUES
('Home Page', 'Welcome to the CS415 API project.'),
('About Page', 'This page contains information about the project.');