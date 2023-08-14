

CREATE TABLE Titles (
    "title_id" VARCHAR(30)   NOT NULL,
    "title" VARCHAR(30)   NOT NULL,
    PRIMARY KEY ("title_id")
);

CREATE TABLE employee_info (
    "emp_id" INT   NOT NULL,
    "title_id" VARCHAR(30)   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(30)   NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "sex" VARCHAR(30)   NOT NULL,
    "hire_date" DATE   NOT NULL,
    PRIMARY KEY ("emp_id"),
    FOREIGN KEY ("title_id") REFERENCES
    Titles("title_id")
);

CREATE TABLE Salaries (
    "emp_id" INT   NOT NULL,
    "salary" INT   NOT NULL,
    PRIMARY KEY ("emp_id" ),
    FOREIGN KEY ("emp_id") REFERENCES
    employee_info("emp_id")
);

CREATE TABLE departments (
    "dept_id" VARCHAR(30)   NOT NULL,
    "dept_name" VARCHAR(20)   NOT NULL,
    PRIMARY KEY ( "dept_id")
);

CREATE TABLE employee_department (
    "emp_id" INT   NOT NULL,
    "dept_id" VARCHAR(30)   NOT NULL,
    PRIMARY KEY ("emp_id","dept_id"),
    FOREIGN KEY ("emp_id") REFERENCES
    employee_info("emp_id"),
    FOREIGN KEY ("dept_id") REFERENCES
    departments("dept_id")
);

CREATE TABLE manager_department (
    "dept_id" VARCHAR(20)   NOT NULL,
    "emp_id" INT   NOT NULL,
    PRIMARY KEY ( "dept_id","emp_id"), 
	FOREIGN KEY ("emp_id") REFERENCES
    employee_info("emp_id"), 
	FOREIGN KEY ("dept_id") REFERENCES
    departments("dept_id")
);


