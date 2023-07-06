DROP DATABASE IF EXISTS medical_center;

CREATE DATABASE medical_center;

\c medical_center

CREATE TABLE drroster
  (
    dr_id SERIAL PRIMARY KEY,
    dr_name TEXT NOT NULL,
    pt_number INT
  );

CREATE TABLE ptroster
  (
    pt_id  SERIAL PRIMARY KEY,
    pt_name TEXT NOT NULL,
    dr_number INT,
    pt_diagnosis TEXT NOT NULL
  );

INSERT INTO drroster
  (dr_id, dr_name, pt_number)
VALUES
  ('1', 'DR. McCloud', '10'),
  ('2', 'DR. Smith', '6'),
  ('3', 'DR. Payne', '4'),
  ('4', 'DR. Crane', '5'),
  ('5', 'DR. Rose', '8');

INSERT INTO ptroster
  (pt_id, pt_name, dr_number, pt_diagnosis)
VALUES
  ('1', 'Bob Brisco', '2', 'Heart Disease'),
  ('2', 'Roz Doyle', '1', 'Laryngitis'),
  ('3', 'Martin Crane', '3', 'Hip Surgery for bullet wound'),
  ('4', 'Lenny Kravitz', '2', 'Skin Cancer'),
  ('5', 'Faye Marvin', '1', 'Anxiety'),
  ('6', 'Bob Wiley', '2', 'Bipolar'),
  ('7', 'Sigmund Marvin', '1', 'Depression'),
  ('8', 'Maris Crane', '4', 'Dermatitius'),
  ('9', 'Ron Trent', '3', 'Arthritus'),
  ('10', 'Josie Macdonald', '3', 'MERSA');