CREATE TABLE users (
                       id INT AUTO_INCREMENT PRIMARY KEY,
                       firstname VARCHAR(255) not null ,
                       lastname VARCHAR(255) not null ,
                       username VARCHAR(255) unique not null,
                       password VARCHAR(255) not null ,
                       role VARCHAR(255)
);

CREATE TABLE doctors (
                         id INT AUTO_INCREMENT primary key,
                         name VARCHAR(255) not null,
                         bmdc VARCHAR(255) unique not null
);

CREATE TABLE patients (
                          id INT AUTO_INCREMENT PRIMARY KEY,
                          name VARCHAR(255) not null ,
                          phone VARCHAR(20) unique not null,
                          age VARCHAR(255) not null
);

CREATE TABLE generics (
                          id INT AUTO_INCREMENT PRIMARY KEY,
                          name VARCHAR(255) unique not null

);

CREATE TABLE vendors (
                         id INT AUTO_INCREMENT PRIMARY KEY,
                         name VARCHAR(255) not null
);

CREATE TABLE drugs (
                       id INT AUTO_INCREMENT PRIMARY KEY,
                       drug_name VARCHAR(255) not null ,
                       formula VARCHAR(255),
                       Strength VARCHAR(255),
                       generic_id INT,
                       vendor_id INT,
                       FOREIGN KEY (generic_id) REFERENCES generics(id),
                       FOREIGN KEY (vendor_id) REFERENCES vendors(id)
);

CREATE TABLE divisions (
                           id INT AUTO_INCREMENT PRIMARY KEY,
                           name VARCHAR(255) unique not null ,
                           lat DOUBLE unique not null ,
                           lng DOUBLE unique not null

);

CREATE TABLE districts (
                           id INT AUTO_INCREMENT PRIMARY KEY,
                           name VARCHAR(255) unique not null ,
                           lat DOUBLE unique not null ,
                           lng DOUBLE unique not null,
                           division_id INT,
                           FOREIGN KEY (division_id) REFERENCES divisions(id)

);

CREATE TABLE areas (
                       id INT AUTO_INCREMENT PRIMARY KEY,
                       name VARCHAR(255) unique not null ,
                       lat DOUBLE unique not null ,
                       lng DOUBLE unique not null,
                       district_id INT,
                       FOREIGN KEY (district_id) REFERENCES districts(id)
);

CREATE TABLE prescriptions (
                               id INT AUTO_INCREMENT PRIMARY KEY,
                               doctor_id INT,
                               patient_id INT,
                               area_id INT,
                               FOREIGN KEY (doctor_id) REFERENCES doctors(id),
                               FOREIGN KEY (patient_id) REFERENCES patients(id),
                               FOREIGN KEY (area_id) REFERENCES areas(id)
);

CREATE TABLE prescription_drugs (   id INT AUTO_INCREMENT PRIMARY KEY,
                                    prescription_id INT,
                                    drug_id INT,

                                    FOREIGN KEY (prescription_id) REFERENCES prescriptions(id),
                                    FOREIGN KEY (drug_id) REFERENCES drugs(id)
);