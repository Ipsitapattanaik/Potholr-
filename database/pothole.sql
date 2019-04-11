DROP TABLE pothole;
DROP TABLE app_user;

CREATE TABLE app_user
(
user_id SERIAL NOT NULL,
user_name varchar(32) NOT NULL,
phone varchar(32) NOT NULL,
email varchar(32) NOT NULL,
password varchar(32) NOT NULL,
is_employee boolean NOT NULL DEFAULT FALSE,
CONSTRAINT pk_app_user_user_id PRIMARY KEY (user_id)
);


CREATE TABLE pothole
(
	pothole_Id SERIAL NOT NULL,
	user_id SERIAL NOT NULL,
	street_Name VARCHAR(200) NOT NULL,
	street_Number INTEGER NOT NULL,
	zip_Code INTEGER NOT NULL,
	state VARCHAR(30) NOT NULL,
	city VARCHAR(20) NOT NULL,
	country VARCHAR(80) NOT NULL,
	status_Date timestamp NOT NULL DEFAULT now(),
	status_Code VARCHAR(20) NOT NULL DEFAULT 'reported',
	lat DECIMAL(16,13) NOT NULL,
	lng DECIMAL(16,13) NOT NULL,
	severity INTEGER NOT NULL DEFAULT 0,
	report_Date timestamp NOT NULL DEFAULT now(),
	repair_Date timestamp NOT NULL DEFAULT now(),
	img_Url VARCHAR(200) NOT NULL,
	
	CONSTRAINT pk_pothole_Id PRIMARY KEY (pothole_Id),
	CONSTRAINT fk_pothole_Id_user_id FOREIGN KEY(user_id) REFERENCES app_user(user_id)
	
);

INSERT INTO app_user (user_id,user_name,phone, email, password) VALUES (1,'ipp', '6126666000', 'ipp@gmail.com','ipp');
INSERT INTO app_user (user_id,user_name,phone, email, password, is_employee) VALUES (2,'Employee', '6127777000', 'emp@gmail.com','employee', true);
INSERT INTO app_user (user_id,user_name,phone,email, password, is_employee) VALUES (3,'kell', '6128888000', 'kell@gmail.com','kell', true);
INSERT INTO app_user (user_id,user_name,phone, email, password) VALUES (4,'loui', '6129999000', 'loui@gmail.com','loui');
INSERT INTO app_user (user_id,user_name,phone, email, password, is_employee) VALUES (5,'Aurt', '6121111000', 'aurt@gmail.com','aurt', true);


INSERT INTO pothole(pothole_Id,user_id, street_Name, street_Number, zip_Code, state, city, country, status_Date, status_Code, lat, lng, severity, report_Date, repair_Date,  img_Url) VALUES (1,1, 'Pennsylvania',901, 15233, 'PA','Pittsburgh', 'USA', '10/15/2018', 'Inspected', 40.456257, -80.0189, 2, '10/12/2018', '10/12/2019','https://i.imgflip.com/2537yf.jpg' );
INSERT INTO pothole(pothole_Id, user_id, street_Name, street_Number, zip_Code, state, city, country, status_Date, status_Code, lat, lng, severity, report_Date, repair_Date,  img_Url) VALUES (2,2, 'Penn Ave',2801, 15222, 'PA','Pittsburgh','USA', '3/05/2019', 'Reported', 40.457215, -79.9756, 1, '03/05/2019','04/05/2019','https://i.pinimg.com/236x/b4/9e/3c/b49e3c4cb1f1cfd451abf9d7046e1d82--car-humor-car-memes.jpg' );
INSERT INTO pothole(pothole_Id, user_id, street_Name, street_Number, zip_Code, state, city, country, status_Date, status_Code, lat, lng, severity, report_Date, repair_Date,  img_Url) VALUES (3,3, 'Murray Ave',2112, 15217, 'PA','Pittsburgh', 'USA', '12/25/2018','Repared', 40.433946, -79.9232, 3, '12/25/2018','12/25/2019','http://i.imgur.com/4jA5PpN.jpg');  
INSERT INTO pothole(pothole_Id, user_id, street_Name, street_Number, zip_Code, state, city, country, status_Date, status_Code, lat, lng, severity, report_Date, repair_Date,  img_Url) VALUES (4,4, 'Heber st',2801, 15222, 'PA','Pittsburgh','USA', '2/05/2019', 'Reported', 40.457215, -79.9756, 1, '04/05/2019','04/15/2019','https://i.pinimg.com/236x/b4/9e/3c/b49e3c4cb1f1cfd451abf9d7046e1d82--car-humor-car-memes.jpg' );
INSERT INTO pothole(pothole_Id, user_id, street_Name, street_Number, zip_Code, state, city, country, status_Date, status_Code, lat, lng, severity, report_Date, repair_Date,  img_Url) VALUES (5,5, 'Forbes Ave',2112, 15217, 'PA','Pittsburgh', 'USA', '1/25/2018','Inspected', 40.433946, -79.9232, 3, '12/20/2018','12/29/2019', 'http://i.imgur.com/4jA5PpN.jpg');  


SELECT * FROM pothole;
SELECT * FROM app_user;

SELECT *
FROM app_user
WHERE user_name = 'ipp';