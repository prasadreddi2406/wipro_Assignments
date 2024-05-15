CREATE DATABASE Assignment4;
CREATE TABLE Books(
	BookID INT PRIMARY KEY,
    Title VARCHAR(30),
    AuthorID INT
);
CREATE TABLE Author(
	AuthorID INT PRIMARY KEY,
    AuthorName VARCHAR(30)
);
CREATE TABLE Borrowers(
	BorrowerID INT PRIMARY KEY,
    BorrowerNmae VARCHAR(30),
    BookID INT,
    BorrowDate DATE
);
ALTER TABLE Books
ADD PublicationYear INT;