CREATE TABLE auth_user (
    id CHAR(36) PRIMARY KEY,
    email         VARCHAR(255) NOT NULL UNIQUE,
    password      VARCHAR(255) NOT NULL,
    role          VARCHAR(100) NOT NULL,
    created_at    TIMESTAMP ,
    updated_at    TIMESTAMP 
);