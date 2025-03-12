CREATE TABLE Hospital (
    hospital_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(255) NOT NULL
);

CREATE TABLE Department (
    department_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE Doctor (
    doctor_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE HospitalDepartment (
    hospital_department_id SERIAL PRIMARY KEY,
    hospital_id INT REFERENCES Hospital(hospital_id),
    department_id INT REFERENCES Department(department_id)
);

CREATE TABLE HospitalDoctor (
    hospital_doctor_id SERIAL PRIMARY KEY,
    hospital_id INT REFERENCES Hospital(hospital_id),
    doctor_id INT REFERENCES Doctor(doctor_id)
);

CREATE TABLE DepartmentDoctor (
    department_doctor_id SERIAL PRIMARY KEY,
    department_id INT REFERENCES Department(department_id),
    doctor_id INT REFERENCES Doctor(doctor_id)
);


-- 医院
INSERT INTO Hospital (name, address) VALUES ('City Hospital', '123 Main St'), ('General Hospital', '456 Elm St');

-- 科室
INSERT INTO Department (name) VALUES ('Cardiology'), ('Neurology'), ('Orthopedics');

-- 医生
INSERT INTO Doctor (name) VALUES ('Dr. Smith'), ('Dr. Brown'), ('Dr. Johnson');

-- 关联表
INSERT INTO HospitalDepartment (hospital_id, department_id) VALUES (1, 1), (1, 2), (2, 3);
INSERT INTO HospitalDoctor (hospital_id, doctor_id) VALUES (1, 1), (1, 2), (2, 3);
INSERT INTO DepartmentDoctor (department_id, doctor_id) VALUES (1, 1), (2, 2), (3, 3);


SELECT * from Hospital;

SELECT table_name FROM information_schema.tables WHERE table_schema = 'public';
