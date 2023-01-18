CREATE TABLE Students (
    St_ID int,
    St_Name varchar(255),
	PRIMARY KEY (St_ID)
);

CREATE TABLE Courses (
    Sub_ID int,
    Sub_Name varchar(255),
	PRIMARY KEY (Sub_ID)
);

INSERT INTO Students(St_ID,St_Name)
VALUES (1,'Robert'),(2,'Steve'),(3, 'Jack'),(4,'Heisenberg') ,(5, 'Neal');

INSERT INTO Courses(Sub_ID,Sub_Name)
VALUES (1,'Physics'),(2,'Chemistry'),(3, 'Math') ,(4,'Biology'),(5,'English');


CREATE TABLE Junction_table (
    Student_ID INT NOT NULL,
    Course_ID INT NOT NULL,
	PRIMARY KEY (Student_ID, Course_ID) ,
    FOREIGN KEY (Student_ID) REFERENCES Students(St_ID),
    FOREIGN KEY (Course_ID) REFERENCES Courses(Sub_ID)
);

INSERT INTO Junction_table(Student_ID, Course_ID)
VALUES (1,2),(5,4),(2,3),(3,2),(4,5) ;

SELECT St_Name, Sub_Name 
FROM Students
    LEFT JOIN Junction_table ON (Students.St_ID=Student_ID)
    LEFT JOIN Courses ON (Courses.Sub_ID=Course_ID)

SELECT * FROM Students 
SELECT * FROM Courses
SELECT * FROM Junction_table

TRUNCATE TABLE Junction_table ;
TRUNCATE TABLE Students ;
