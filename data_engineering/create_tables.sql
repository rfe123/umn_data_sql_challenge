-- Create all Tables
CREATE TABLE titles (
    title_id VARCHAR(5) PRIMARY KEY,
    title VARCHAR(50)
);

CREATE TABLE employees (
    emp_no INTEGER PRIMARY KEY,
    emp_title_id VARCHAR(5),
    birth_date DATE,
    first_name VARCHAR(25),
    last_name VARCHAR(25),
    sex VARCHAR(1),
    hire_date DATE,
    CONSTRAINT fk_title_id
      FOREIGN KEY(emp_title_id) 
	  REFERENCES titles(title_id)
);

CREATE TABLE departments (
    dept_no VARCHAR(4) PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE dept_emp (
    emp_no INTEGER,
    dept_no VARCHAR(4),
    PRIMARY KEY (dept_no, emp_no),
    CONSTRAINT fk_emp (
      FOREIGN KEY(emp_no) 
	  REFERENCES employees(emp_no)),
    CONSTRAINT fk_dept (
      FOREIGN KEY(dept_no) 
	  REFERENCES departments(dept_no)),
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(4),
    emp_no INTEGER,
    PRIMARY KEY (dept_no, emp_no),
    CONSTRAINT fk_emp (
      FOREIGN KEY(emp_no) 
	  REFERENCES employees(emp_no)),
    CONSTRAINT fk_dept (
      FOREIGN KEY(dept_no) 
	  REFERENCES departments(dept_no)),
);

CREATE TABLE salaries (
    emp_no INTEGER,
    salary INTEGER,
    CONSTRAINT fk_emp (
      FOREIGN KEY(emp_no) 
	  REFERENCES employees(emp_no))
);


