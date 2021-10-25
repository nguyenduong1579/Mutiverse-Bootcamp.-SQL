CREATE TABLE Hospitals(
  hospital_id INTEGER NOT NULL PRIMARY KEY,
  name TEXT,
  tel INTEGER
  );
CREATE TABLE Departments(
  department_id INTEGER NOT NULL PRIMARY KEY,
  name TEXT,
  tel INTEGER,
  hospital_id NOT NULL,
  FOREIGN KEY(hospital_id) REFERENCES Hospitals(hospital_id)
  );
 CREATE TABLE Nurses (
   nurse_id INTEGER NOT NULL PRIMARY KEY,
   name TEXT,
   tel INTEGER ,
   department_id NOT NULL,
   patient_id NOT NULL,
   FOREIGN KEY(department_id) REFERENCES Departments(deparment_id),
   FOREIGN KEY(patient_id) REFERENCES Patients(patient_id)
 );
  
 CREATE TABLE Patients(
   patient_id INTEGER NOT NULL PRIMARY KEY,
   name TEXT,
   tel INTEGER,
   nurse_id NOT NULL,
   department_id NOT NULL,
   FOREIGN KEY(nurse_id) REFERENCES Nurses(nurse_id)
   FOREIGN KEY(department_id) REFERENCES Departments(deparment_id)
 );
  
 
 
 INSERT INTO Hospitals(hospital_id, name, tel) VALUES 
("1123","St Mary's Hospital", "+442033126666"),
("1124","Royal London Hospital", "+442034567890"),
("1125","St Thomas Hospital", "+442071887188");

INSERT INTO Departments(department_id, name, tel, hospital_id) VALUES
(2223, "Neurology",07455,1123),
(2332,"Accident and emergency services", 07178, 1124),
(2543, "General Surgery", 07362, 1125),
(2732, "Intensive Care", 07928, 1124);

INSERT INTO Nurses(nurse_id, name, tel,  department_id, patient_id) VALUES
(3241, "Isabel", 07893, 2223, 4321),
(3521, "Marry", 07975, 2543, 4563),
(3432, "Julia", 07644, 2332, 4123);

INSERT INTO Patients( patient_id, name, tel, nurse_id, department_id) VALUES
(4321, "John", 07998, 3241, 2223),
(4421, "Bacon", 07938, 3241, 2223),
(4563, "Lucy", 07153, 3521, 2543),
(4123, "Peter", 07367, 3432, 2332);

UPDATE Nurses SET
name = "Diana"
where nurse_id = 3241;

DELETE FROM Departments
WHERE department_id = 2732;

SELECT * FROM Hospitals;
SELECT * FROM Departments;
SELECT * FROM Nurses;
SELECT * FROM Patients;

SELECT * FROM Patients
WHERE department_id = 2223;

SELECT * FROM Nurses
WHERE patient_id = 4123;


 
