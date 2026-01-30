-- ================================
-- DATABASE
-- ================================
CREATE DATABASE social_media_db;
USE social_media_db;

-- ================================
-- USERS TABLE
-- ================================
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (username, email, password) VALUES
('alice', 'alice@mail.com', 'pass123'),
('bob', 'bob@mail.com', 'pass123'),
('charlie', 'charlie@mail.com', 'pass123'),
('david', 'david@mail.com', 'pass123'),
('emma', 'emma@mail.com', 'pass123'),
('frank', 'frank@mail.com', 'pass123'),
('grace', 'grace@mail.com', 'pass123'),
('henry', 'henry@mail.com', 'pass123'),
('irene', 'irene@mail.com', 'pass123'),
('jack', 'jack@mail.com', 'pass123');

-- ================================
-- ROLES TABLE
-- ================================
CREATE TABLE roles (
    role_id INT PRIMARY KEY AUTO_INCREMENT,
    role_name VARCHAR(50) UNIQUE NOT NULL
);

INSERT INTO roles (role_name) VALUES
('Admin'),
('Moderator'),
('User'),
('Content Creator'),
('Verified User'),
('Advertiser'),
('Support'),
('Analyst'),
('Guest'),
('Banned');



-- ================================
-- POSTS TABLE
-- ================================
CREATE TABLE posts (
    post_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    content TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

INSERT INTO posts (user_id, content) VALUES
(1, 'Hello world!'),
(2, 'My first post'),
(3, 'Enjoying this app'),
(4, 'Moderator announcement'),
(5, 'New content coming soon'),
(6, 'Good morning everyone'),
(7, 'Verified and proud'),
(8, 'Just joined!'),
(9, 'Advertising tips'),
(10, 'Guest post here');

-- ================================
-- COMMENTS TABLE
-- ================================
CREATE TABLE comments (
    comment_id INT PRIMARY KEY AUTO_INCREMENT,
    post_id INT,
    user_id INT,
    comment TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (post_id) REFERENCES posts(post_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

INSERT INTO comments (post_id, user_id, comment) VALUES
(1, 2, 'Nice post!'),
(2, 3, 'Welcome!'),
(3, 4, 'Glad you like it'),
(4, 5, 'Thanks for info'),
(5, 6, 'Looking forward'),
(6, 7, 'Good morning!'),
(7, 8, 'Congrats'),
(8, 9, 'Hello!'),
(9, 10, 'Great tips'),
(10, 1, 'Welcome guest');





