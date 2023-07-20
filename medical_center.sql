DROP DATABASE IF EXISTS medical_center;

CREATE DATABASE medical_center;

\c medical_center

CREATE TABLE drroster
  (
    dr_id SERIAL PRIMARY KEY,
    dr_name TEXT NOT NULL,
    dr_specialty TEXT NOT NULL
  );

CREATE TABLE ptroster
  (
    pt_id  SERIAL PRIMARY KEY,
    pt_name TEXT NOT NULL,
    pt_insurance TEXT NOT NULL,
    pt_birthday TEXT NOT NULL
  );

CREATE TABLE diseases
  (
    disease_id SERIAL PRIMARY KEY,
    disease_name TEXT NOT NULL,
    disease_description TEXT NOT NULL
  )

CREATE TABLE diagnosis
  (
    diagnosis_id SERIAL PRIMARY KEY,
    Foreign Key (visit_id) References visits(id),
    Foreign Key (disease_id) References diseases(id),
    disease_notes TEXT NOT NULL
  )

  CREATE TABLE visits
  (
    visit_id SERIAL PRIMARY KEY,
    Foreign Key (dr_id) References drroster(id),
    Foreign Key (pt_id) References ptroster(id),
    visit_date TEXT NOT NULL
  )

INSERT INTO drroster
  (dr_id, dr_name, dr_specialty)
VALUES
  ('1', 'DR. McCloud', 'Orthopedics'),
  ('2', 'DR. Smith', 'Pediatrics'),
  ('3', 'DR. Payne', 'Internal Medicine'),
  ('4', 'DR. Crane', 'Neurology'),
  ('5', 'DR. Rose', 'Cardiology');

INSERT INTO ptroster
  (pt_id, pt_name, pt_insurance, pt_birthday)
VALUES
  ('1', 'Bob Brisco', 'Anthem INC', 'March 13, 1967'),
  ('2', 'Roz Doyle', 'Humana', 'October 4, 1978'),
  ('3', 'Martin Crane', 'United Healthcare', 'December 11, 1939'),
  ('4', 'Lenny Kravitz', 'Cigna', 'January 28, 1944'),
  ('5', 'Faye Marvin', 'United Healthcare', 'April 1, 1981'),
  ('6', 'Bob Wiley', 'Humana', 'April 20, 1979'),
  ('7', 'Sigmund Marvin', 'United Healthcare', 'July 10, 2012'),
  ('8', 'Maris Crane', 'Blue Cross Blue Shield Assc.', 'June 16, 1995'),
  ('9', 'Ron Trent', 'Anthem INC', 'September 9, 2011'),
  ('10', 'Josie Macdonald', 'Cigna', 'May 2, 2013');

INSERT INTO visits
  (visit_id, dr_id, pt_id, visit_date)
VALUES
  ('1', '2', '10', 'July 1, 2023'),
  ('2', '3', '2', 'June 17, 2023'),
  ('3', '4', '8', 'May 11, 2023'),
  ('4', '5', '3', 'May 19, 2023'),
  ('5', '2', '7', 'June 5, 2023');

INSERT INTO diseases
  (disease_id, disease_name, disease_description)
VALUES
  ('1', 'Coronary Heart Disease', 'a condition that occurs 
  when the heart blood supply is blocked or interrupted by 
  a buildup of fatty substances in the coronary arteries.'),
  ('2', 'Common Cold', 'a mild upper respiratory infection 
  caused by viruses.'),
  ('3', 'Pneumonia', 'a serious infection that inflames the 
  air sacs in one or both lungs.'),
  ('4', 'Amyotrophic lateral sclerosis', 
  'A progressive neurodegenerative disease 
  that affects nerve cells in the brain and spinal cord.'),
  ('5', 'Dermatitus', 'A common skin irritation. 
  It has many causes and forms and usually involves itchy, 
  dry skin or a rash. Or it might cause the skin to blister, 
  ooze, crust or flake off.');

INSERT INTO diagnosis
  (diagnosis_id, visit_id, disease_id, diagnosis_date)
VALUES
  ('1', '1', '2', 'July 1, 2023'),
  ('2', '2', '5', 'December 5, 2020'),
  ('3', '3', '4', 'August 1, 2022'),
  ('4', '4', '1', 'May 19, 2023'),
  ('5', '5', '3', 'June 5, 2023');