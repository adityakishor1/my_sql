-- Show first name, last name, and gender of patients who's gender is 'M'
SELECT first_name,
       last_name,
       gender
FROM patients
WHERE gender = 'M';