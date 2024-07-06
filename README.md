Designing and Implementing an E-Library System

Project Objectives

The e-library application manages multiple libraries, each with a diverse collection of borrowable books. Users can borrow books, place holds on unavailable ones, and manage their accounts. Key functionalities include:

User registration
Book categorization
Loan management
Hold system (for seamless borrowing)
Designing the Database

Creating a relational database for the e-library system involves several steps:

a. Mission Statement

To design a robust and scalable e-library application that:

Manages multiple libraries efficiently.
Tracks book availability.
Provides a seamless user experience for borrowing and placing holds.
b. ERD Design

The Entity-Relationship Diagram (ERD) illustrates relationships between entities:

Users: Information about registered users.
Libraries: Details of each library.
Books: Information on titles, authors, categories, and quantities.
Loans: Records of books borrowed by users.
Holds: Records of books placed on hold by users.
Implementing the Design

The ERD is implemented in PostgreSQL by translating it into SQL DDL (Data Definition Language) statements. These statements create tables and relationships in the database.

Populating the Database

A dummy dataset for each table is generated using Python and the Faker library. This dataset adheres to the database's rules and relational logic.

Retrieving Data

SQL queries are used to retrieve insights from the database:

Average loan duration? Number of books currently on loan?
Most borrowed books? Users who borrowed the most?
Libraries with the highest number of holds?
Most common categories of borrowed books?
References

PostgreSQL Documentation: https://www.postgresql.org/docs/
Faker Library Documentation: https://faker.readthedocs.io/en/master/
Pandas Documentation: https://pandas.pydata.org/pandas-docs/stable/
Tabulate Documentation: https://pypi.org/project/tabulate/
Project Scope

This project demonstrates the design, implementation, and querying of an e-library system. It leverages PostgreSQL and Python for effective database management and data generation.

For the complete code, ERD, and dataset, visit my GitHub repository.
