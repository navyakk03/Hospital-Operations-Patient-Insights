CREATE DATABASE hospital_db;
USE hospital_db;
CREATE TABLE hospital_patients (
    patient_id INT,
    age INT,
    gender VARCHAR(10),
    diagnosis VARCHAR(100),
    admission_date DATE,
    discharge_date DATE,
    length_of_stay INT,
    total_cost DECIMAL(10,2),
    satisfaction INT,
    age_group VARCHAR(20),
    stay_category VARCHAR(20),
    admission_year INT
);
SELECT COUNT(*) FROM hospital_patient_final;
show tables;
Drop table hospital_patients;

SELECT COUNT(*) AS total_patients
FROM hospital_patient_final;

SELECT 
    admission_year,
    COUNT(*) AS patient_count
FROM hospital_patient_final
GROUP BY admission_year
ORDER BY admission_year;

SELECT 
    ROUND(AVG(length_of_stay), 2) AS avg_los
FROM hospital_patient_final;

SELECT 
    age_group,
    ROUND(AVG(length_of_stay), 2) AS avg_los
FROM hospital_patient_final
GROUP BY age_group;

SELECT 
    stay_category,
    ROUND(AVG(satisfaction), 2) AS avg_satisfaction
FROM hospital_patient_final
GROUP BY stay_category;

SELECT 
    admission_year,
    ROUND(SUM(total_cost), 2) AS total_cost
FROM hospital_patient_final
GROUP BY admission_year
ORDER BY admission_year;
