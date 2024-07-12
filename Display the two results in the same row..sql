SELECT first_name, last_name, allergies
FROM patients
WHERE allergies = 'Penicillin'
   OR allergies = 'Morphine'
ORDER BY allergies ASC, first_name ASC, last_name ASC;

-- alternatively 

SELECT first_name,
       last_name,
       allergies
FROM patients
WHERE allergies IN ('Penicillin', 'Morphine')
ORDER BY allergies,
         first_name,
         last_name;