# Exercise 0

## 5. University management system

A university needs a system to manage students, courses, and professors.

- each student can enroll in multiple courses.
- each course is taught by one professor.
- a teacher can teach multiple courses.

a) Identify entities and their relationships

b) Come up with possible attributes for the entities

c) Draw conceptual ERD with cardinalities

d) Define business rules (e.g. a student can enroll in max 4 courses)


### Solution

b) 
Student: id, name, class
Course: id, name, 
Professor: id, name, department, university

c)
<img src = "../assets/initial_conceptual_model_ex5.png" width=500>

d) Define business rules  
A student can enroll in max 4 courses.  
A course can have 30 students.  
A course can only have one professor.  
A professor can teach 3 courses. 



























