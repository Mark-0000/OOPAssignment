# Create Database
CREATE DATABASE 21609OOPassignment;

# Use Database
USE 21609OOPassignment;

# Creating Tables
CREATE TABLE Student (
	studentID int NOT NULL AUTO_INCREMENT,
	FirstName varchar(255) Not NULL,
	LastName varchar(255) NOT NULL,
    	Birthdate varchar(40),
    	Contacts varchar(40),
	Password varchar(20),
    	PRIMARY KEY (studentID)
);
# Set increment starts at 1000
ALTER TABLE Student AUTO_INCREMENT=1000;

CREATE TABLE Faculty (
	facultyID int NOT NULL AUTO_INCREMENT,
	FirstName varchar(255) Not NULL,
	LastName varchar(255) NOT NULL,
    	Birthdate varchar(40),
    	Contacts varchar(40),
	Password varchar(20),
    	PRIMARY KEY (facultyID)
);
# Set increment starts at 2000
ALTER TABLE Faculty AUTO_INCREMENT=2000;

CREATE TABLE Course(
	CourseID int NOT NULL AUTO_INCREMENT,
	CourseTitle varchar(10) Not NULL,
	Room varchar(10),
	FacultyID int(4),
	PRIMARY KEY (CourseID)
);
# Set increment starts at 3000
ALTER TABLE Course AUTO_INCREMENT=3000;

CREATE TABLE Exam(
	StudentID int(4) NOT NULL,
	Date varchar(12),
	Status varchar(12),
	result double(100, 5),
	CourseID int(4),
	FOREIGN KEY (StudentID) REFERENCES Student(StudentID) ON DELETE CASCADE
);

CREATE TABLE Assignment(
	StudentID int(4) NOT NULL,
	Date varchar(12),
	Status varchar(12),
	result double(100, 5),
	CourseID int(4),
	FOREIGN KEY (StudentID) REFERENCES Student(StudentID) ON DELETE CASCADE
);


CREATE TABLE Payment(
	StudentID int(4) NOT NULL,
	Amount double(100,5),
	Balance double (100,5),
	Date varchar(10),
	FOREIGN KEY (StudentID) REFERENCES Student(StudentID) ON DELETE CASCADE
);

# insert into faculty(firstname,lastname,birthdate,contacts) values("John","Doe","1972-06-21","+087123445"); sample incerement in faculty