-- Check if the `users` table already exists
-- If it does, drop the table
DROP TABLE IF EXISTS users;

-- Create the `users` table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255)
);
