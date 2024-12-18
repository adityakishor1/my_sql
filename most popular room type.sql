SELECT RoomType, COUNT(*) AS TotalBookings
FROM Bookings
WHERE IsCancelled = 'No'
GROUP BY RoomType
ORDER BY TotalBookings DESC
LIMIT 1;