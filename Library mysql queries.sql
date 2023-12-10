CREATE SCHEMA  Library;
USE Library;

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    BookName VARCHAR(250),
    AuthorName VARCHAR(250),
    Genre VARCHAR(250),
    Pages INT
);

CREATE TABLE  Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(250),
    Address VARCHAR(250)
);

CREATE TABLE  BooksBorrowed (
    SlNo INT  PRIMARY KEY,
    BookID INT,
    CustomerID INT,
    DaysBookRetained INT,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Cost (
    MaxPages INT PRIMARY KEY,
    CostperDay INT
);

INSERT INTO books (BookID, BookName, AuthorName, Genre, Pages)
VALUES
(1, 'The Guide', 'R.K. Narayan', 'Fiction', 300),
(2, 'The God of Small Things', 'Arundhati Roy', 'Fiction', 350),
(3, 'My Experiments with Truth', 'Mahatma Gandhi', 'Autobiography', 450),
(4, 'Discovery of India', 'Jawaharlal Nehru', 'History', 600),
(5, 'The White Tiger', 'Aravind Adiga', 'Fiction', 320),
(6, 'Wings of Fire', 'A.P.J. Abdul Kalam', 'Biography', 400),
(7, 'Interpreter of Maladies', 'Jhumpa Lahiri', 'Short Stories', 280),
(8, 'A Suitable Boy', 'Vikram Seth', 'Fiction', 1500),
(9, 'The Namesake', 'Jhumpa Lahiri', 'Fiction', 320),
(10, 'Inheritance of Loss', 'Kiran Desai', 'Fiction', 450),
(11, 'Half Girlfriend', 'Chetan Bhagat', 'Romance', 280),
(12, 'Five Point Someone', 'Chetan Bhagat', 'Humor', 270),
(13, 'The Palace of Illusions', 'Chitra Banerjee Divakaruni', 'Mythology', 360),
(14, 'Train to Pakistan', 'Khushwant Singh', 'Historical Fiction', 250),
(15, 'I Too Had a Love Story', 'Ravinder Singh', 'Romance', 220),
(16, 'A Fine Balance', 'Rohinton Mistry', 'Fiction', 620),
(17, 'The Immortals of Meluha', 'Amish Tripathi', 'Mythology', 400),
(18, '2 States', 'Chetan Bhagat', 'Romance', 320),
(19, 'The Argumentative Indian', 'Amartya Sen', 'Philosophy', 380),
(20, 'One Night at the Call Center', 'Chetan Bhagat', 'Humor', 290),
(21, 'The Lowland', 'Jhumpa Lahiri', 'Fiction', 340),
(22, 'An Era of Darkness', 'Shashi Tharoor', 'History', 330),
(23, 'The Elephant Paradigm', 'Gurcharan Das', 'Economics', 260),
(24, 'Shiva Trilogy: The Secret of the Nagas', 'Amish Tripathi', 'Mythology', 350),
(25, 'The Three Mistakes of My Life', 'Chetan Bhagat', 'Drama', 290),
(26, 'A Brief History of Time', 'Stephen Hawking', 'Science', 220),
(27, 'The Alchemist', 'Paulo Coelho', 'Philosophy', 180),
(28, 'White Mughals', 'William Dalrymple', 'History', 400),
(29, 'The Rozabal Line', 'Ashwin Sanghi', 'Thriller', 310),
(30, 'Freedom at Midnight', 'Dominique Lapierre and Larry Collins', 'History', 560),
(31, 'Sita: Warrior of Mithila', 'Amish Tripathi', 'Mythology', 380),
(32, 'The Glass Palace', 'Amitav Ghosh', 'Historical Fiction', 500),
(33, 'Serious Men', 'Manu Joseph', 'Satire', 320),
(34, 'English, August', 'Upamanyu Chatterjee', 'Humor', 240),
(35, 'The Great Indian Novel', 'Shashi Tharoor', 'Satire', 360),
(36, 'The Inheritance of Loss', 'Kiran Desai', 'Fiction', 440),
(37, 'Five Queen Road', 'Sorabh Pant', 'Humor', 300),
(38, 'The Shadow Lines', 'Amitav Ghosh', 'Fiction', 280),
(39, 'Maximum City', 'Suketu Mehta', 'Travel', 600),
(40, 'A Fine Family', 'Gurcharan Das', 'Fiction', 320),
(41, 'The White Tiger', 'Aravind Adiga', 'Fiction', 320),
(42, 'The Guide', 'R.K. Narayan', 'Fiction', 300),
(43, 'The God of Small Things', 'Arundhati Roy', 'Fiction', 350),
(44, 'Wings of Fire', 'A.P.J. Abdul Kalam', 'Biography', 400),
(45, 'The Namesake', 'Jhumpa Lahiri', 'Fiction', 320),
(46, 'Half Girlfriend', 'Chetan Bhagat', 'Romance', 280),
(47, 'The Palace of Illusions', 'Chitra Banerjee Divakaruni', 'Mythology', 360),
(48, 'Train to Pakistan', 'Khushwant Singh', 'Historical Fiction', 250),
(49, 'I Too Had a Love Story', 'Ravinder Singh', 'Romance', 220),
(50, 'A Suitable Boy', 'Vikram Seth', 'Fiction', 1500);

INSERT INTO customers (CustomerID, CustomerName, Address)
VALUES
(1, 'Rajesh Reddy', 'Vijayawada'),
(2, 'Priya Naidu', 'Telangana'),
(3, 'Suresh Kumar', 'Kurnool'),
(4, 'Deepika ', 'Warangal'),
(5, 'Ravi ', 'Guntur'),
(6, 'Shalini ', 'Nizamabad'),
(7, 'Akhil', 'Tirupati'),
(8, 'Anusha', 'Karimnagar'),
(9, 'Prakash', 'Vizag'),
(10, 'Madhuri', 'Adilabad'),
(11, 'Harish', 'Ongole'),
(12, 'Deepthi Reddy', 'Kurnool'),
(13, 'Srinivas','Nellore'),
(14, 'Priyanka', 'Nellore'),
(15, 'Vijay', 'Tirupati');


INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES ('1',' 1', '1', '14');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES ('2', '2', '3', '21');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('3', '3', '5', '30');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('4', '4', '7', '14');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('5', '5', '9', '7');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('6','6', '11', '21');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('7', '7', '13', '14');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('8', '8', '15', '30');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('9', '9', '15', '21');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('10', '10' , '13','14');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('11', '11', '2', '7');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('12', '12', '3', '30');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('13', '13', '4', '21');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('14', '24', '2', '14');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('15', '15', '10', '7');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('16', '12', '2', '14');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('17', '18', '4', '21');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('18', '22', '6', '30');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('19', '22', '8', '14');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('20', '24', '10', '7');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('21', '25', '12', '21');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('22', '28', '14', '14');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('23', '32', '3', '30');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('24', '36', '1', '21');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('25', '33', '12', '14');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('26', '32', '2', '27');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('27', '38', '11', '13');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('28', '40', '6', '12');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('29', '42', '8', '48');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('30', '44', '5', '20');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('31', '46', '7', '30');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('32', '48', '13', '21');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('33', '50', '6', '14');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('34', '19', '8', '7');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('35', '21', '15', '30');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('36', '23', '4', '21');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('37', '25', '2', '14');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('38', '27', '12', '7');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('39', '29', '8', '30');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('40', '31', '5', '21');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('41', '33', '1', '14');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('42', '35', '3', '7');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('43', '37', '5', '30');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('44', '39', '7', '21');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('45', '41', '9', '14');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('46', '43', '11', '7');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('47', '45', '13', '30');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('48', '47', '15', '21');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('49','49', '11', '14');
INSERT INTO BooksBorrowed (SlNo, BookID, CustomerID, DaysBookRetained) VALUES('50', '2', '10',' 7');

SELECT Genre, COUNT(*) as BooksbyGenre
FROM Books
GROUP BY Genre;

SELECT COUNT(*) as TotalBooksBorrowed
FROM BooksBorrowed;

SELECT books.bookid, books.bookname, COUNT(booksborrowed.bookid) AS borrow_count
FROM books 
JOIN booksborrowed  ON books.bookid = booksborrowed.bookid
GROUP BY books.bookid, books.bookname
HAVING COUNT(booksborrowed.bookid) = 1;

SELECT CustomerName,BookName
FROM BooksBorrowed
JOIN Customers ON BooksBorrowed.CustomerID = Customers.CustomerID
JOIN Books ON BooksBorrowed.BookID = Books.BookID;

INSERT INTO Cost (MaxPages, CostPerDay)
VALUES
    (100, 10),
    (200, 15),
    (300, 30),
    (1000, 50);
    
    
select * from BooksBorrowed;
    

SELECT SUM(CostPerDay * DaysBookRetained) as TotalEarnings
FROM BooksBorrowed
JOIN Cost ON BooksBorrowed.DaysBookRetained <= Cost.MaxPages;

SELECT Customers.CustomerName, SUM(CostPerDay * DaysBookRetained) as AmountPaid
FROM BooksBorrowed
JOIN Customers ON BooksBorrowed.CustomerID = Customers.CustomerID
JOIN Books ON BooksBorrowed.BookID = Books.BookID
JOIN Cost ON Books.Pages <= Cost.MaxPages
GROUP BY Customers.CustomerName
ORDER BY AmountPaid DESC
 
















 




