SELECT * FROM users WHERE last_login > NOW() - INTERVAL 30 DAY;
