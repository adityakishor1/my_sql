SELECT m.title, COUNT(r.movie_id) AS rental_count
FROM Movies m
JOIN Rentals r ON m.movie_id = r.movie_id
GROUP BY m.title
ORDER BY rental_count DESC
LIMIT 10;