
CREATE SCHEMA university;



CREATE TABLE university.courses (
    course_id serial primary key,
    course_name varchar(100) NOT NULL,
    credits int
);



CREATE TABLE university.enrollments (
    enrollment_id serial primary key,
    student_id int NOT NULL,
    course_id int NOT NULL,
    enroll_date date
	foreign key(course_id) references sales.Courses(course_id),
	foreign key(student_id) references sales.Students(student_id)
);



CREATE TABLE university.students (
    student_id serial primary key,
    first_name varchar(100) NOT NULL,
    last_name varchar(100) NOT NULL,
    birth_date date,
    email varchar(255) NOT NULL unique
);


