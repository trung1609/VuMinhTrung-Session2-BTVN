
CREATE SCHEMA elearning;



CREATE TABLE elearning.assignments (
    assignment_id serial primary key,
    course_id int not null,
    title varchar(100) NOT NULL,
    due_date date NOT NULL
);



CREATE TABLE elearning.courses (
    course_id serial primary key,
    course_name varchar(100) NOT NULL,
    instructor_id int NOT NULL,
	foreign key(instructor_id) references elearning.Instructor(instructor_id)
);


CREATE TABLE elearning.enrollments (
    enrollment_id serial primary key,
    student_id int NOT NULL,
    course_id int NOT NULL,
    enroll_date timestamp DEFAULT now(),
	foreign key(student_id) references elearning.Students(student_id),
	foreign key(course_id) references elearning.Courses(course_id)
);


CREATE TABLE elearning.instructor (
    instructor_id serial primary key,
    first_name varchar(100) NOT NULL,
    last_name varchar(100) NOT NULL,
    email varchar(255) NOT NULL Unique
);



CREATE TABLE elearning.students (
    student_id serial primary key,
    first_name varchar(100) NOT NULL,
    last_name varchar(100) NOT NULL,
    email varchar(255) NOT NULL unique
);



CREATE TABLE elearning.submissions (
    submission_id serial primary key,
    assignment_id int not null,
    student_id int not null,
    submission_date date NOT NULL,
    grade numeric(5,2) CHECK (grade >= 0 AND grade <= 100)
);


