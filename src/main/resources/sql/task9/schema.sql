CREATE TABLE IF NOT EXISTS commercial_project
(
    id       INTEGER PRIMARY KEY,
    name     VARCHAR(50),
    customer varchar(50)
);

create sequence proj_seq start with 1 increment by 50;

create table if not exists intensive
(
    id   INTEGER primary key,
    name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS employee
(
    id       INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    name     VARCHAR(50),
    email    varchar(50),
    salary   bigint,
    position varchar(50)
);

CREATE TABLE IF NOT EXISTS student
(
    id           INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    name         VARCHAR(50),
    email        varchar(50),
    mentor_id    INTEGER REFERENCES employee (id),
    intensive_id INTEGER REFERENCES intensive (id)
);

CREATE TABLE IF NOT EXISTS project_employee
(
    employee_id INTEGER REFERENCES employee (id),
    project_id  INTEGER ,
    PRIMARY KEY (employee_id, project_id)
);