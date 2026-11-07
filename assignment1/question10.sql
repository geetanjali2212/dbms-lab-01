CREATE TABLE jobs (
    job_id INT,
    job_title VARCHAR(35) NOT NULL DEFAULT ' ',
    min_salary DECIMAL(6,0) DEFAULT 8000,
    max_salary DECIMAL(6,0) DEFAULT NULL
);
