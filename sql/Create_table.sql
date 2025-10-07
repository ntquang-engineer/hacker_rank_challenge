use duadata_challenge;
-- tạo bảng Customer
CREATE TABLE Customer (
    Customer_id NVARCHAR(255),
    Customer_name NVARCHAR(255),
    Gender NVARCHAR(255),
    email NVARCHAR(255),
    Date_of_birth DATETIME,
    Address NVARCHAR(255),
    Field NVARCHAR(255),
    Time_exploring_DA NVARCHAR(255),
    Target NVARCHAR(255),
    DA_learning_place NVARCHAR(255),
    SQL_experience NVARCHAR(255),
    Tools_experience NVARCHAR(255),
    Contest_source NVARCHAR(255),
    Study_time_per_day NVARCHAR(255)
);

-- tạo bảng Enrollment
CREATE TABLE Enrollment (
    Submit_date DATETIME,
    Lesson NVARCHAR(255),
    Student_id NVARCHAR(255),
    Score INT
);

-- tạo bảng Quiz
CREATE TABLE Quiz (
    Lesson NVARCHAR(255),
    Post_date DATETIME,
    Name_lesson NVARCHAR(255)
);


