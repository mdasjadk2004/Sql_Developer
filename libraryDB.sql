CREATE TABLE `Author` (
  `author_id` int PRIMARY KEY,
  `name` varchar(100),
  `nationality` varchar(50)
);

CREATE TABLE `Book` (
  `book_id` int PRIMARY KEY,
  `title` varchar(200),
  `genre` varchar(50),
  `published_year` int
);

CREATE TABLE `BookAuthor` (
  `book_id` INT,
  `author_id` INT,
  PRIMARY KEY (`book_id`, `author_id`)
);


CREATE TABLE `Member` (
  `member_id` int PRIMARY KEY,
  `name` varchar(100),
  `email` varchar(100),
  `phone` varchar(15)
);

CREATE TABLE `Borrow` (
  `borrow_id` int PRIMARY KEY,
  `member_id` int,
  `book_id` int,
  `borrow_date` date,
  `return_date` date
);

ALTER TABLE `BookAuthor` ADD FOREIGN KEY (`book_id`) REFERENCES `Book` (`book_id`);

ALTER TABLE `BookAuthor` ADD FOREIGN KEY (`author_id`) REFERENCES `Author` (`author_id`);

ALTER TABLE `Borrow` ADD FOREIGN KEY (`member_id`) REFERENCES `Member` (`member_id`);

ALTER TABLE `Borrow` ADD FOREIGN KEY (`book_id`) REFERENCES `Book` (`book_id`);
