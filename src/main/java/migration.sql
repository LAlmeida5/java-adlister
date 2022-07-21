USE adlister_db;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    password VARCHAR(100)
);

DROP TABLE IF EXISTS ads;

CREATE TABLE ads(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id INT UNSIGNED,
    title VARCHAR(200),
    description VARCHAR(450),
    FOREIGN KEY(user_id) REFERENCES users (id)
);

INSERT INTO users (username, email, password) VALUES ('sleepyjoe','trainwreck@hotmail.com','codeup');




