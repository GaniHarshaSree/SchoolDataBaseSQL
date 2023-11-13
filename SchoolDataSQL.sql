use 
SchoolDB  
--Subject Table  
Create Table Subjects   
(  
  subjectId int primary key Identity (1,1),   
subjectName varchar(50),   TeacherName varchar(50)  
)  
INSERT INTO Subjects  
VALUES  
    ('Science','Harsha'),
	('Chemistry','Sree'),  
    ('Social','Surya'),  
    ('English','Vamshi'),  
    ('Computer Science','Nani')  
  
--Classes Table  
Create Table Classes   
(  
  ClassId int primary key Identity (1,1),  
  ClassName varchar(50),  
  ClassFloor int  
)  
INSERT INTO Classes   
VALUES  
    ('Class 1',0),  
    ('Class 2',0),  
    ('Class 3',1),  
    ('Class 4',1),  
    ('Class 5',2),  
    ('Class 6',2),  
    ('Class 7',2)  
  
--Student Table 

create Table Student  
(  
  RollNo int primary key Identity (1,1),
  studentName varchar(50),
  classId int foreign key references Classes(ClassId),
  subjectId int foreign key references Subjects(subjectId)   
)  
INSERT into Student   
Values   
('Mahi',3,1),  
('Virat',1,4),  
('Yuvaraj',2,3),  
('Rohit',4,1),  
('Hardik',7,5),  
('Siraj',5,3),  
('Gill',6,4),  
('Sachin',7,2) 
--printing Values 
select * from Subjects
select * from Classes
select * from Student
