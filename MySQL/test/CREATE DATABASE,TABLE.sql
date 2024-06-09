DROP DATABASE test;
CREATE DATABASE test;
USE test;

CREATE TABLE tasks (
    id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    start_date DATE,
    due_date DATE
);

CREATE TABLE checklists (
    id INT,
    task_id INT,
    title VARCHAR(255) NOT NULL,
    is_completed BOOLEAN NOT NULL DEFAULT FALSE,
    PRIMARY KEY (id , task_id),
    FOREIGN KEY (task_id)
        REFERENCES tasks (id)
        ON UPDATE RESTRICT ON DELETE CASCADE
);