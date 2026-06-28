create database Library_Management;
use Library_Management;
create table books(
book_id int primary key,
title varchar(200),
author varchar(100),
genre varchar(50),
published_year int,
quantity int);


INSERT INTO books (book_id, title, author, genre, published_year, quantity) VALUES
(101, 'The Shadow of the Wind', 'Carlos Ruiz Zafón', 'Biography', 1981, 7),
(102, 'To Kill a Mockingbird', 'Harper Lee', 'Sci-Fi', 2013, 1),
(103, '1984', 'George Orwell', 'Self-Help', 1993, 2),
(104, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Thriller', 2021, 6),
(105, 'The Catcher in the Rye', 'J.D. Salinger', 'Biography', 2017, 3),
(106, 'The Hobbit', 'J.R.R. Tolkien', 'Self-Help', 1988, 5),
(107, 'Fahrenheit 451', 'Ray Bradbury', 'Mystery', 2012, 1),
(108, 'Pride and Prejudice', 'Jane Austen', 'History', 1994, 6),
(109, 'The Chronicles of Narnia', 'C.S. Lewis', 'Self-Help', 1968, 8),
(110, 'Animal Farm', 'George Orwell', 'Romance', 1988, 3),
(111, 'Brave New World', 'Aldous Huxley', 'Fiction', 1999, 4),
(112, 'The Book Thief', 'Markus Zusak', 'Sci-Fi', 1978, 6),
(113, 'The Alchemist', 'Paulo Coelho', 'Self-Help', 1985, 3),
(114, 'The Kite Runner', 'Khaled Hosseini', 'Biography', 2004, 3),
(115, 'Life of Pi', 'Yann Martel', 'Fiction', 1957, 1),
(116, 'Sapiens: A Brief History', 'Yuval Noah Harari', 'History', 2012, 1),
(117, 'Educated', 'Tara Westover', 'History', 1956, 8),
(118, 'Becoming', 'Michelle Obama', 'Self-Help', 2019, 3),
(119, 'Thinking, Fast and Slow', 'Daniel Kahneman', 'Romance', 1997, 8),
(120, 'Atomic Habits', 'James Clear', 'Sci-Fi', 1954, 4),
(121, 'The Power of Habit', 'Charles Duhigg', 'Thriller', 1993, 9),
(122, 'Deep Work', 'Cal Newport', 'History', 2009, 2),
(123, 'Grit', 'Angela Duckworth', 'Poetry', 1965, 3),
(124, 'Quiet', 'Susan Cain', 'Fiction', 2013, 3),
(125, 'The Silent Patient', 'Alex Michaelides', 'History', 2017, 2),
(126, 'Gone Girl', 'Gillian Flynn', 'Fantasy', 1954, 9),
(127, 'The Girl with the Dragon Tattoo', 'Stieg Larsson', 'Romance', 1966, 7),
(128, 'The Da Vinci Code', 'Dan Brown', 'Self-Help', 2006, 5),
(129, 'Angels & Demons', 'Dan Brown', 'Romance', 2021, 5),
(130, 'Inferno', 'Dan Brown', 'Fantasy', 2011, 4),
(131, 'Dune', 'Frank Herbert', 'Romance', 1987, 8),
(132, 'Neuromancer', 'William Gibson', 'Sci-Fi', 1964, 4),
(133, 'Foundation', 'Isaac Asimov', 'Poetry', 1964, 5),
(134, 'Hyperion', 'Dan Simmons', 'Poetry', 2010, 8),
(135, 'The Left Hand of Darkness', 'Ursula K. Le Guin', 'Poetry', 1978, 6),
(136, 'Steve Jobs', 'Walter Isaacson', 'Romance', 1988, 4),
(137, 'Elon Musk', 'Ashlee Vance', 'Fiction', 1959, 10),
(138, 'Leonardo da Vinci', 'Walter Isaacson', 'Romance', 2019, 4),
(139, 'Alexander Hamilton', 'Ron Chernow', 'Romance', 2015, 6),
(140, 'Einstein: His Life', 'Walter Isaacson', 'Romance', 2006, 6),
(141, 'A Game of Thrones', 'George R.R. Martin', 'Fantasy', 2024, 4),
(142, 'A Clash of Kings', 'George R.R. Martin', 'Poetry', 1964, 2),
(143, 'A Storm of Swords', 'George R.R. Martin', 'Mystery', 1988, 2),
(144, 'A Feast for Crows', 'George R.R. Martin', 'Sci-Fi', 2011, 3),
(145, 'A Dance with Dragons', 'George R.R. Martin', 'Mystery', 1964, 5),
(146, 'The Name of the Wind', 'Patrick Rothfuss', 'Thriller', 1974, 9),
(147, 'The Wise Man''s Fear', 'Patrick Rothfuss', 'Self-Help', 1999, 9),
(148, 'The Way of Kings', 'Brandon Sanderson', 'Mystery', 1970, 7),
(149, 'Words of Radiance', 'Brandon Sanderson', 'Poetry', 1970, 6),
(150, 'Oathbringer', 'Brandon Sanderson', 'Biography', 1960, 2),
(151, 'The Fellowship of the Ring', 'J.R.R. Tolkien', 'Self-Help', 1960, 7),
(152, 'The Two Towers', 'J.R.R. Tolkien', 'Biography', 1961, 8),
(153, 'The Return of the King', 'J.R.R. Tolkien', 'Biography', 2007, 7),
(154, 'Catch-22', 'Joseph Heller', 'History', 1997, 8),
(155, 'Slaughterhouse-Five', 'Kurt Vonnegut', 'Self-Help', 2012, 10),
(156, 'The Road', 'Cormac McCarthy', 'Thriller', 2015, 6),
(157, 'No Country for Old Men', 'Cormac McCarthy', 'Romance', 2000, 10),
(158, 'Blood Meridian', 'Cormac McCarthy', 'Thriller', 2009, 3),
(159, 'All the Light We Cannot See', 'Anthony Doerr', 'Self-Help', 2023, 10),
(160, 'The Nightingale', 'Kristin Hannah', 'Fantasy', 2021, 2),
(161, 'The Help', 'Kathryn Stockett', 'Poetry', 2001, 7),
(162, 'A Thousand Splendid Suns', 'Khaled Hosseini', 'Biography', 2019, 7),
(163, 'The Handmaid''s Tale', 'Margaret Atwood', 'Self-Help', 1997, 8),
(164, 'The Testaments', 'Margaret Atwood', 'Self-Help', 1979, 9),
(165, 'Good Omens', 'Neil Gaiman', 'Mystery', 1958, 8),
(166, 'American Gods', 'Neil Gaiman', 'Biography', 1998, 9),
(167, 'Anansi Boys', 'Neil Gaiman', 'Fantasy', 2019, 8),
(168, 'Stardust', 'Neil Gaiman', 'Fiction', 1992, 10),
(169, 'Neverwhere', 'Neil Gaiman', 'Self-Help', 1952, 9),
(170, 'Coraline', 'Neil Gaiman', 'Romance', 1962, 5),
(171, 'The Graveyard Book', 'Neil Gaiman', 'Sci-Fi', 1992, 9),
(172, 'Ocean at the End of the Lane', 'Neil Gaiman', 'Fantasy', 1961, 8),
(173, 'The Ocean at the End of the Lane', 'Neil Gaiman', 'Poetry', 2018, 5),
(174, 'The Shining', 'Stephen King', 'Biography', 1966, 6),
(175, 'It', 'Stephen King', 'History', 2005, 3),
(176, 'Misery', 'Stephen King', 'Self-Help', 2022, 6),
(177, 'The Stand', 'Stephen King', 'History', 2005, 5),
(178, 'The Dark Tower', 'Stephen King', 'Fiction', 2008, 10),
(179, 'Salem''s Lot', 'Stephen King', 'History', 1985, 2),
(180, 'Pet Sematary', 'Stephen King', 'Fiction', 1986, 3),
(181, 'The Green Mile', 'Stephen King', 'Romance', 1973, 5),
(182, 'Rita Hayworth and Shawshank Redemption', 'Stephen King', 'Biography', 1977, 8),
(183, 'Carrie', 'Stephen King', 'Fiction', 1998, 2),
(184, 'Doctor Sleep', 'Stephen King', 'Poetry', 2018, 9),
(185, 'The Outsider', 'Stephen King', 'Mystery', 1970, 7),
(186, 'Billy Summers', 'Stephen King', 'Romance', 1996, 7),
(187, 'Fairy Tale', 'Stephen King', 'History', 1972, 8),
(188, 'Holly', 'Stephen King', 'Mystery', 2015, 3),
(189, 'The Institute', 'Stephen King', 'Biography', 1950, 4),
(190, 'Elevation', 'Stephen King', 'History', 1992, 1),
(191, 'The Outsiders', 'S.E. Hinton', 'Sci-Fi', 2006, 1),
(192, 'Lord of the Flies', 'William Golding', 'Romance', 1963, 7),
(193, 'Of Mice and Men', 'John Steinbeck', 'Poetry', 1967, 7),
(194, 'Old Man and the Sea', 'Ernest Hemingway', 'Sci-Fi', 2013, 9),
(195, 'The Pearl', 'John Steinbeck', 'Romance', 1991, 1),
(196, 'The Grapes of Wrath', 'John Steinbeck', 'Mystery', 2019, 10),
(197, 'East of Eden', 'John Steinbeck', 'Fiction', 1950, 3),
(198, 'Cannery Row', 'John Steinbeck', 'Self-Help', 2006, 9),
(199, 'Tortilla Flat', 'John Steinbeck', 'Fantasy', 2023, 7),
(200, 'The Winter of Our Discontent', 'John Steinbeck', 'Poetry', 1952, 9);


create table members(
member_id int primary key,
member_name varchar(100),
email varchar(100),
registration_date date);

INSERT INTO members (member_id, member_name, email, registration_date) VALUES
(201, 'Usman Shah', 'usman.shah404@library.com', '2023-12-14'),
(202, 'Sara Sultan', 'sara.sultan632@library.com', '2023-11-20'),
(203, 'Ayesha Abbas', 'ayesha.abbas141@library.com', '2022-01-20'),
(204, 'Mustafa Sheikh', 'mustafa.sheikh215@library.com', '2022-02-14'),
(205, 'Omar Farooqi', 'omar.farooqi599@library.com', '2023-10-18'),
(206, 'Fatima Hussain', 'fatima.hussain74@library.com', '2022-11-23'),
(207, 'Sana Malik', 'sana.malik990@library.com', '2022-12-12'),
(208, 'Zain Malik', 'zain.malik694@library.com', '2023-05-18'),
(209, 'Hassan Javed', 'hassan.javed833@library.com', '2022-05-24'),
(210, 'Fatima Butt', 'fatima.butt597@library.com', '2023-06-25'),
(211, 'Asma Farooqi', 'asma.farooqi977@library.com', '2024-09-02'),
(212, 'Hassan Khan', 'hassan.khan411@library.com', '2022-05-29'),
(213, 'Hamza Hussain', 'hamza.hussain162@library.com', '2023-07-28'),
(214, 'Sara Raza', 'sara.raza377@library.com', '2022-07-11'),
(215, 'Sana Farooqi', 'sana.farooqi978@library.com', '2023-04-18'),
(216, 'Hamza Ahmed', 'hamza.ahmed623@library.com', '2024-03-24'),
(217, 'Usman Abbas', 'usman.abbas677@library.com', '2022-06-03'),
(218, 'Zainab Malik', 'zainab.malik312@library.com', '2024-06-12'),
(219, 'Muhammad Hussain', 'muhammad.hussain689@library.com', '2024-09-17'),
(220, 'Zain Qureshi', 'zain.quureshi419@library.com', '2024-01-22'),
(221, 'Fatima Farooqi', 'fatima.farooqi680@library.com', '2024-04-06'),
(222, 'Asma Malik', 'asma.malik507@library.com', '2024-06-01'),
(223, 'Ahmed Javed', 'ahmed.javed754@library.com', '2024-08-01'),
(224, 'Asma Qureshi', 'asma.quureshi344@library.com', '2023-06-02'),
(225, 'Ahmed Hussain', 'ahmed.hussain598@library.com', '2022-08-16'),
(226, 'Hassan Abbas', 'hassan.abbas511@library.com', '2024-06-25'),
(227, 'Mustafa Javed', 'mustafa.javed241@library.com', '2022-10-23'),
(228, 'Sara Farooqi', 'sara.farooqi210@library.com', '2024-08-20'),
(229, 'Ayesha Siddiqui', 'ayesha.siddiqui848@library.com', '2023-11-23'),
(230, 'Fatima Abbas', 'fatima.abbas756@library.com', '2022-10-26'),
(231, 'Omar Khan', 'omar.khan144@library.com', '2022-11-26'),
(232, 'Mustafa Raza', 'mustafa.raza740@library.com', '2023-07-06'),
(233, 'Zain Lodhi', 'zain.lodhi515@library.com', '2022-07-15'),
(234, 'Hamza Malik', 'hamza.malik242@library.com', '2024-02-23'),
(235, 'Usman Ahmed', 'usman.ahmed504@library.com', '2023-08-28'),
(236, 'Asma Sultan', 'asma.sultan818@library.com', '2022-11-20'),
(237, 'Amna Farooqi', 'amna.farooqi919@library.com', '2024-05-18'),
(238, 'Usman Farooqi', 'usman.farooqi440@library.com', '2022-03-31'),
(239, 'Sana Khan', 'sana.khan112@library.com', '2023-09-02'),
(240, 'Sara Ahmed', 'sara.ahmed212@library.com', '2024-05-25'),
(241, 'Ali Lodhi', 'ali.lodhi503@library.com', '2024-07-11'),
(242, 'Hassan Lodhi', 'hassan.lodhi635@library.com', '2023-04-12'),
(243, 'Zainab Qureshi', 'zainab.quureshi881@library.com', '2024-07-21'),
(244, 'Ayesha Qureshi', 'ayesha.quureshi414@library.com', '2022-12-14'),
(245, 'Ayesha Butt', 'ayesha.butt909@library.com', '2023-11-12'),
(246, 'Muhammad Javed', 'muhammad.javed211@library.com', '2024-06-21'),
(247, 'Ahmed Lodhi', 'ahmed.lodhi808@library.com', '2022-05-19'),
(248, 'Usman Malik', 'usman.malik233@library.com', '2023-04-20'),
(249, 'Hina Malik', 'hina.malik316@library.com', '2024-01-20'),
(250, 'Ahmed Malik', 'ahmed.malik505@library.com', '2024-01-09'),
(251, 'Asma Khan', 'asma.khan506@library.com', '2023-06-25'),
(252, 'Sara Khan', 'sara.khan119@library.com', '2023-03-03'),
(253, 'Usman Farooqi', 'usman.farooqi943@library.com', '2023-05-18'),
(254, 'Fatima Shah', 'fatima.shah332@library.com', '2022-10-03'),
(255, 'Muhammad Lodhi', 'muhammad.lodhi616@library.com', '2024-07-23'),
(256, 'Amna Farooqi', 'amna.farooqi101@library.com', '2023-11-20'),
(257, 'Hina Ahmed', 'hina.ahmed911@library.com', '2024-01-26'),
(258, 'Zain Malik', 'zain.malik313@library.com', '2023-10-08'),
(259, 'Mustafa Raza', 'mustafa.raza229@library.com', '2022-10-22'),
(260, 'Asma Sheikh', 'asma.sheikh501@library.com', '2022-09-08'),
(261, 'Hamza Malik', 'hamza.malik314@library.com', '2023-03-31'),
(262, 'Hassan Javed', 'hassan.javed115@library.com', '2023-03-24'),
(263, 'Zainab Ahmed', 'zainab.ahmed422@library.com', '2024-02-25'),
(264, 'Hina Malik', 'hina.malik606@library.com', '2024-02-09'),
(265, 'Maryamp Khan', 'maryamp.khan512@library.com', '2023-11-19'),
(266, 'Sara Hussain', 'sara.hussain712@library.com', '2022-08-05'),
(267, 'Ahmed Sheikh', 'ahmed.sheikh551@library.com', '2022-03-07'),
(268, 'Omar Ahmed', 'omar.ahmed504@library.com', '2022-04-12'),
(269, 'Asma Farooqi', 'asma.farooqi414@library.com', '2022-06-25'),
(270, 'Zainab Shah', 'zainab.shah323@library.com', '2023-03-03'),
(271, 'Sara Lodhi', 'sara.lodhi808@library.com', '2022-10-04'),
(272, 'Maryamp Ahmed', 'maryamp.ahmed519@library.com', '2022-09-19'),
(273, 'Raza Lodhi', 'raza.lodhi101@library.com', '2023-08-01'),
(274, 'Ali Hussain', 'ali.hussain502@library.com', '2023-12-28'),
(275, 'Zain Malik', 'zain.malik911@library.com', '2024-08-10'),
(276, 'Zainab Lodhi', 'zainab.lodhi671@library.com', '2024-08-06'),
(277, 'Zainab Malik', 'zainab.malik882@library.com', '2023-10-24'),
(278, 'Ali Malik', 'ali.malik501@library.com', '2024-01-20'),
(279, 'Maryamp Sultan', 'maryamp.sultan512@library.com', '2022-07-22'),
(280, 'Amna Farooqi', 'amna.farooqi216@library.com', '2023-02-09'),
(281, 'Ahmed Raza', 'ahmed.raza414@library.com', '2023-10-03'),
(282, 'Sana Farooqi', 'sana.farooqi223@library.com', '2023-12-10'),
(283, 'Ayesha Lodhi', 'ayesha.lodhi404@library.com', '2024-03-31'),
(284, 'Ahmed Khan', 'ahmed.khan552@library.com', '2023-09-19'),
(285, 'Mustafa Hussain', 'mustafa.hussain404@library.com', '2023-05-16'),
(286, 'Zain Butt', 'zain.butt212@library.com', '2022-04-20'),
(287, 'Zainab Abbas', 'zainab.abbas314@library.com', '2022-03-11'),
(288, 'Sara Sheikh', 'sara.sheikh911@library.com', '2022-02-09'),
(289, 'Amna Raza', 'amna.raza101@library.com', '2022-10-21'),
(290, 'Fatima Malik', 'fatima.malik505@library.com', '2023-05-11'),
(291, 'Hina Hussain', 'hina.hussain414@library.com', '2023-07-25'),
(292, 'Hassan Sultan', 'hassan.sultan303@library.com', '2023-05-18'),
(293, 'Ayesha Malik', 'ayesha.malik404@library.com', '2024-07-07'),
(294, 'Omar Lodhi', 'omar.lodhi111@library.com', '2023-07-30'),
(295, 'Zainab Malik', 'zainab.malik990@library.com', '2022-12-02'),
(296, 'Raza Raza', 'raza.raza404@library.com', '2022-10-22'),
(297, 'Fatima Lodhi', 'fatima.lodhi101@library.com', '2024-07-22'),
(298, 'Ahmed Farooqi', 'ahmed.farooqi505@library.com', '2022-04-25'),
(299, 'Hassan Lodhi', 'hassan.lodhi911@library.com', '2022-11-28'),
(300, 'Muhammad Khan', 'muhammad.khan505@library.com', '2024-03-04');



create table loans(
loan_id int primary key,
member_id int,
book_id int,
loan_date date,
due_date date,
return_date date,
Status varchar(20),
foreign key(member_id)references members(member_id),
foreign key(book_id)references books(book_id));

INSERT INTO loans (loan_id, member_id, book_id, loan_date, due_date, return_date, Status) VALUES
(5001, 237, 185, '2024-06-25', '2024-07-09', '2024-07-07', 'Returned'),
(5002, 282, 137, '2024-02-09', '2024-02-23', '2024-02-18', 'Returned'),
(5003, 214, 186, '2022-09-08', '2022-09-22', NULL, 'Borrowed'),
(5004, 211, 140, '2024-09-17', '2024-10-01', NULL, 'Overdue'),
(5005, 296, 172, '2023-01-26', '2023-02-09', NULL, 'Overdue'),
(5006, 269, 133, '2022-08-05', '2022-08-19', '2022-08-15', 'Returned'),
(5007, 288, 169, '2022-03-31', '2022-04-14', NULL, 'Overdue'),
(5008, 221, 196, '2024-06-03', '2024-06-17', '2024-06-13', 'Returned'),
(5009, 290, 160, '2023-08-01', '2023-08-15', '2023-08-08', 'Returned'),
(5010, 235, 114, '2023-10-24', '2023-11-07', '2023-11-02', 'Returned'),
(5011, 219, 142, '2024-09-19', '2024-10-03', NULL, 'Borrowed'),
(5012, 276, 135, '2024-09-19', '2024-10-03', NULL, 'Overdue'),
(5013, 218, 145, '2024-08-06', '2024-08-20', NULL, 'Borrowed'),
(5014, 289, 126, '2022-12-07', '2022-12-21', NULL, 'Borrowed'),
(5015, 299, 147, '2023-03-03', '2023-03-17', '2023-03-21', 'Returned'),
(5016, 214, 185, '2022-10-04', '2022-10-18', '2022-10-11', 'Returned'),
(5017, 260, 110, '2022-10-22', '2022-11-05', NULL, 'Borrowed'),
(5018, 217, 189, '2022-06-25', '2022-07-09', '2022-06-30', 'Returned'),
(5019, 215, 181, '2023-05-18', '2023-06-01', '2023-05-24', 'Returned'),
(5020, 258, 154, '2023-11-20', '2023-12-04', '2023-11-25', 'Returned'),
(5021, 203, 102, '2022-03-07', '2022-03-21', NULL, 'Overdue'),
(5022, 299, 156, '2023-03-03', '2023-03-17', '2023-03-23', 'Returned'),
(5023, 273, 172, '2023-10-08', '2023-10-22', '2023-10-20', 'Returned'),
(5024, 248, 137, '2023-05-06', '2023-05-20', '2023-05-18', 'Returned'),
(5025, 275, 198, '2024-09-02', '2024-09-16', '2024-09-10', 'Returned'),
(5026, 290, 131, '2023-08-01', '2023-08-15', NULL, 'Borrowed'),
(5027, 230, 142, '2022-11-19', '2022-12-03', '2022-12-03', 'Returned'),
(5028, 224, 184, '2023-07-09', '2023-07-23', '2023-07-22', 'Returned'),
(5029, 213, 126, '2023-09-02', '2023-09-16', NULL, 'Borrowed'),
(5030, 298, 189, '2022-10-03', '2022-10-17', NULL, 'Overdue'),
(5031, 252, 194, '2023-04-20', '2023-05-04', '2023-04-25', 'Returned'),
(5032, 201, 157, '2024-01-20', '2024-02-03', '2024-02-06', 'Returned'),
(5033, 273, 169, '2023-10-08', '2023-10-22', '2023-10-16', 'Returned'),
(5034, 269, 146, '2022-08-05', '2022-08-19', NULL, 'Overdue'),
(5035, 206, 172, '2022-12-02', '2022-12-16', NULL, 'Borrowed'),
(5036, 281, 154, '2023-11-20', '2023-12-04', '2023-12-02', 'Returned'),
(5037, 212, 154, '2022-07-16', '2022-07-30', '2022-08-02', 'Returned'),
(5038, 251, 184, '2023-07-31', '2023-08-14', NULL, 'Borrowed'),
(5039, 296, 127, '2023-01-26', '2023-02-09', NULL, 'Borrowed'),
(5040, 219, 102, '2024-09-19', '2024-10-03', '2024-09-30', 'Returned'),
(5041, 212, 104, '2022-07-16', '2022-07-30', '2022-07-28', 'Returned'),
(5042, 237, 182, '2024-06-25', '2024-07-09', '2024-07-01', 'Returned'),
(5043, 278, 172, '2024-01-20', '2024-02-03', '2024-02-05', 'Returned'),
(5044, 284, 184, '2023-09-19', '2023-10-03', NULL, 'Borrowed'),
(5045, 232, 150, '2023-07-30', '2023-08-13', NULL, 'Overdue'),
(5046, 287, 153, '2022-04-12', '2022-04-26', '2022-04-25', 'Returned'),
(5047, 257, 194, '2024-02-29', '2024-03-14', '2024-03-13', 'Returned'),
(5048, 234, 169, '2024-03-04', '2024-03-18', NULL, 'Overdue'),
(5049, 226, 195, '2024-07-22', '2024-08-05', '2024-08-11', 'Returned'),
(5050, 262, 158, '2023-03-24', '2023-04-07', NULL, 'Borrowed'),
(5051, 272, 126, '2022-09-19', '2022-10-03', '2022-09-24', 'Returned'),
(5052, 206, 163, '2022-12-02', '2022-12-16', '2022-12-20', 'Returned'),
(5053, 290, 191, '2023-05-11', '2023-05-25', NULL, 'Borrowed'),
(5054, 240, 199, '2024-07-07', '2024-07-21', NULL, 'Overdue'),
(5055, 224, 144, '2023-07-09', '2023-07-23', '2023-07-16', 'Returned'),
(5056, 274, 118, '2024-02-25', '2024-03-10', NULL, 'Overdue'),
(5057, 237, 172, '2024-06-25', '2024-07-09', '2024-07-14', 'Returned'),
(5058, 234, 153, '2024-03-04', '2024-03-18', NULL, 'Overdue'),
(5059, 219, 137, '2024-09-19', '2024-10-03', NULL, 'Borrowed'),
(5060, 219, 187, '2024-09-19', '2024-10-03', '2024-10-01', 'Returned'),
(5061, 280, 124, '2023-02-09', '2023-02-23', NULL, 'Borrowed'),
(5062, 290, 194, '2023-05-11', '2023-05-25', '2023-05-21', 'Returned'),
(5063, 236, 132, '2022-12-10', '2022-12-24', '2022-12-20', 'Returned'),
(5064, 214, 172, '2022-07-11', '2022-07-25', '2022-07-29', 'Returned'),
(5065, 269, 107, '2022-06-25', '2022-07-09', '2022-07-15', 'Returned'),
(5066, 258, 148, '2023-10-08', '2023-10-22', NULL, 'Overdue'),
(5067, 280, 155, '2023-02-09', '2023-02-23', NULL, 'Borrowed'),
(5068, 258, 126, '2023-10-08', '2023-10-22', '2023-10-17', 'Returned'),
(5069, 261, 107, '2023-03-31', '2023-04-14', '2023-04-14', 'Returned'),
(5070, 210, 169, '2023-06-25', '2023-07-09', '2023-07-06', 'Returned'),
(5071, 251, 108, '2023-06-25', '2023-07-09', '2023-07-02', 'Returned'),
(5072, 251, 127, '2023-06-25', '2023-07-09', NULL, 'Overdue'),
(5073, 253, 114, '2023-05-18', '2023-06-01', NULL, 'Borrowed'),
(5074, 251, 130, '2023-06-25', '2023-07-09', '2023-07-09', 'Returned'),
(5075, 237, 131, '2024-06-25', '2024-07-09', NULL, 'Overdue'),
(5076, 276, 122, '2024-08-06', '2024-08-20', '2024-08-20', 'Returned'),
(5077, 203, 143, '2022-01-20', '2022-02-03', '2022-01-26', 'Returned'),
(5078, 267, 168, '2022-03-07', '2022-03-21', '2022-03-26', 'Returned'),
(5079, 281, 123, '2023-10-03', '2023-10-17', '2023-10-08', 'Returned'),
(5080, 290, 146, '2023-05-11', '2023-05-25', NULL, 'Overdue'),
(5081, 271, 192, '2022-10-04', '2022-10-18', NULL, 'Borrowed'),
(5082, 283, 145, '2024-03-31', '2024-04-14', '2024-04-17', 'Returned'),
(5083, 208, 149, '2023-05-18', '2023-06-01', '2023-05-29', 'Returned'),
(5084, 240, 149, '2024-07-07', '2024-07-21', NULL, 'Borrowed'),
(5085, 252, 197, '2023-03-03', '2023-03-17', '2023-03-12', 'Returned'),
(5086, 218, 163, '2024-06-12', '2024-06-26', '2024-06-22', 'Returned'),
(5087, 268, 140, '2022-04-12', '2022-04-26', '2022-04-30', 'Returned'),
(5088, 222, 148, '2024-06-01', '2024-06-15', '2024-06-19', 'Returned'),
(5089, 292, 198, '2023-05-18', '2023-06-01', '2023-05-29', 'Returned'),
(5090, 246, 172, '2024-06-21', '2024-07-05', NULL, 'Overdue'),
(5091, 259, 133, '2022-10-22', '2022-11-05', '2022-10-29', 'Returned'),
(5092, 256, 116, '2023-11-20', '2023-12-04', '2023-12-07', 'Returned'),
(5093, 223, 178, '2024-08-01', '2024-08-15', '2024-08-16', 'Returned'),
(5094, 260, 169, '2022-09-08', '2022-09-22', '2022-09-19', 'Returned'),
(5095, 237, 197, '2024-05-18', '2024-06-01', NULL, 'Borrowed'),
(5096, 264, 150, '2024-02-09', '2024-02-23', '2024-02-28', 'Returned'),
(5097, 240, 198, '2024-07-07', '2024-07-21', NULL, 'Borrowed'),
(5098, 212, 185, '2022-05-29', '2022-06-12', '2022-06-15', 'Returned'),
(5099, 269, 113, '2022-06-25', '2022-07-09', NULL, 'Borrowed'),
(5100, 222, 168, '2024-06-01', '2024-06-15', '2024-06-11', 'Returned');

# select and filtering :
# retrieve all books from the library database ;
select * from books;
select title from books;
# -- Task 2: Find all members who registered after January 1, 2024.
select member_name,email from members where registration_date ='2024-12-30';
-- Task 3: List all books that belong to the 'Fiction' genre.
select title from books where genre ='fiction';
-- Task 4: Find books published between the years 2010 and 2020.
select title from books where published_year between 2010 and 2020;
-- Task 5: Display all books that are currently available in stock (Quantity > 0).
select title from books where quantity > 0;
-- Task 6: Get a list of unique authors present in the library database.
select distinct author from books;
-- Task 7: Find all members whose names start with the letter 'A'.
select * from members where member_name like 'A%';
-- Task 8: Find the oldest book available in the library.
select * from books where published_year = (select min(published_year) from books);
-- Task 9: Retrieve all member details sorted alphabetically by their name.
select * from members order by member_name asc;
-- Task 10: Find all book loans that have a status of 'Borrowed'.
select * from loans where status ='borrowed';
-- Phase 2: WHERE Constraints & Basic Logic (Easy)
-- Task 11: List all books written by a specific author (e.g., 'J.K. Rowling').
select title from books where author ='J.k.Rowling';
-- Task 12: Find all loans that are currently overdue.
select * from loans where status ='overdue';
-- Task 14: List all members who do not have an email address registered.
select * from members where email is null;
-- Task 14: Find books that have less than 3 copies available in the library.
select title from books where quantity < 3;
-- Task 15: Select all loans made in the current month.
SELECT * FROM loans 
WHERE MONTH(loan_date) = MONTH(CURRENT_DATE()) 
  AND YEAR(loan_date) = YEAR(CURRENT_DATE()); 
-- Task 16: List books that are either in the 'Sci-Fi' or 'Fantasy' genre.
select book_id,title,author from books where genre = 'sci-fi' or genre ='fantasy';
-- Task 17: Find members who registered in the year 2023.
SELECT member_id, member_name, email, registration_date 
FROM members WHERE YEAR(registration_date) = 2023;
-- Task 18: Find all loans where the book was returned exactly on the due date.
select * from loans where return_date = due_date;
-- Task 19: Display the top 5 most recently published books.
select * from books order by published_year desc limit 5;
-- Task 20: Find books whose titles contain the word 'Harry'.
select * from books where title like '%Harry%';
-- Phase 3: Aggregations & Grouping (Intermediate)
-- Task 21: Count the total number of books available in the library.
select count(quantity) as total_books from books ;
-- Task 22: Count how many books exist under each genre.
select genre,count(*) from books group by genre order by genre;
-- Task 23: Find the total number of active members in the library.
select count(member_id) as total_member from members;
-- Task 24: Find the average quantity of books stored per genre.
select genre,round(avg(quantity),1) as averge_books from books group by genre order by genre desc;
-- Task 25: Find the total number of books borrowed by each member.
select member_id,count(*) as total_books_borrowed from loans group by member_id;
-- Task 26: Count the number of 'Borrowed' vs 'Returned' books.
select status,count(*) as total_books from loans group by status;
-- Task 27: List genres that have more than 5 books in total.alter
select genre,count(*) as more_than_five_books from books group by genre having count(*)>5;
-- Task 28: Find the maximum quantity of copies any single book has.
select max(quantity) as max_copies from books;
-- Task 29: Count how many new members joined the library each year.
select year(registration_date) as join_year,count(*) from members group by year(registration_date);
-- Task 30: Find members who have borrowed more than 3 books in total.
select member_id,count(*) as total_borrowed from loans group by member_id having count(*)>3;
-- task 31:Find the names and emails of members who joined after 2024.
select member_name,email from members where year(registration_date)> 2024;
-- Task 32:Display books only from the 'Fiction' genre.
select * from books where genre ='fiction';
-- Task 33:Display the titles of books published between 2010 and 2020.
select * from books where published_year between 2010 and 2020;
-- Task 34:List all books that are currently available in the library (Quantity > 0).
select * from books where quantity > 0;
-- Task 35:xtract a list of unique authors.
select distinct author from books;
-- Task 36:Find the names of members whose names start with the letter 'A'.
select * from members where member_name like 'A%';
-- Task 37:Find the oldest book available in the library.
select * from books order by published_year asc limit 1;
-- Task 38:Sort the list of members alphabetically (A-Z).
select * from members order by member_name asc;
-- Task 39:Retrieve details of all loans that are still in 'Borrowed' status.
select * from loans where status ='borrowed';
-- Phase 4: Basic JOINS (Intermediate)
-- Task 40: Display all loan records with Member Name and Book Title.
select l.loan_id,l.member_id,l.book_id,l.loan_date,l.status,m.member_name,b.title from books b join
loans l on l.book_id = b.book_id join members m on m.member_id = l.member_id;
-- Task 41: Find the names of members who have borrowed a 'Fiction' book.
select m.member_name from members m join loans l on m.member_id = l.member_id join books b on 
b.book_id = l.book_id where b.genre ='Fiction';  
-- Task 42: List books that have never been borrowed by anyone (Using LEFT JOIN).
SELECT b.book_id, b.title FROM books b LEFT JOIN loans l ON b.book_id = l.book_id 
WHERE l.loan_id IS NULL;
-- Task 43: Find the names of members who currently hold overdue books.
select m.member_id,m.member_name from members m join loans l on m.member_id = l.member_id where
l.status ='Overdue';
-- Task 44: Show all books borrowed by a specific member name.
select b.book_id,b.title,b.author,l.loan_date,l.due_date,l.status  from books b join
loans l on b.book_id = l.book_id join members m on m.member_id = l.member_id where 
m.member_name ='Usman Shah';
-- Task 45: Get a list of authors whose books have been borrowed at least once.
select b.author from books b inner join loans l on b.book_id = l.book_id ;
-- Task 46: Display loan details including Member Email and Book Genre.
select l.loan_id,l.loan_date,l.due_date,l.status,m.email,b.genre from books b join loans l on 
b.book_id = l.book_id join members m on m.member_id = l.member_id ;
-- Task 47: Find the most recent person to borrow a specific book.
select m.member_name,l.loan_id,l.loan_date from loans l join members m on l.member_id = m.member_id 
order by l.loan_date desc limit 10;
-- Task 48: Combine Member Details and Loan Status for all records.
select m.member_name,m.email,l.loan_id,l.loan_date,l.status from loans l join members m on m.member_id
= l.member_id;
-- Task 49: Find members who have borrowed books written by a specific author.
select m.member_name,b.book_id,b.title,b.author,l.status from books b join loans l on b.book_id = l.book_id
join members m on m.member_id = l.member_id where b.author ='Harper Lee';
-- Phase 5: Intermediate Queries & Modifying Data 
-- Task 50: Find books whose quantity is higher than the average quantity of all books.
select book_id,title,quantity from books where quantity > (select avg(quantity) from books);
-- Task 51: Find the name of the member who has borrowed the most books.
select m.member_name,count(l.loan_date)as most_borrowed_book from loans l join members m on l.member_id
= m.member_id group by m.member_name order by most_borrowed_book desc ;
-- Task 52: List all members who have never borrowed any book from the library.
select m.member_id,m.member_name from members m left join loans l on m.member_id = l.member_id where
l.loan_id is null;
-- Task 53: Update the status of a specific loan to 'Returned' and set the return date.
select * from loans;
update loans 
set status ='Returned',
loan_date ='2026-6-23'
where loan_id = 5001;
-- Task 54: Increase the quantity of all books in a specific genre by 2.
-- Safe mode ko band karne ke liye
SET SQL_SAFE_UPDATES = 0;
UPDATE books
SET quantity = quantity + 2
WHERE genre = 'Fiction';
SET SQL_SAFE_UPDATES = 1;
-- Task 55: Insert a new member record into the loan table.
insert into loans (loan_id,member_id,book_id,loan_date,due_date,return_date,status)
values('5000','238','186','2026-06-23','2026-08-20','2026-09-10','Returned');
-- Task 56: Delete a loan record that was created by mistake.
delete from loans where loan_id =5000;
-- Task 57: Find members who returned their borrowed books before the actual due date.
select m.member_id,m.member_name,b.title,l.due_date,l.return_date from members m join loans l on 
l.member_id = m.member_id join books b on b.book_id = l.book_id where l.return_date < l.due_date;
-- Task 58: List all books that were borrowed on a specific date.
SELECT b.book_id, b.title, b.author, l.loan_date FROM books b JOIN loans l ON b.book_id = l.book_id 
WHERE l.loan_date = '2026-06-23';
-- Task 59: Find total books borrowed per genre by joining Books and Loans tables.
select b.genre,count(l.loan_id) as total_book_borrowed from books b join loans l on b.book_id = l.book_id
group by b.genre order by total_book_borrowed desc ;












