# Library Management System (Sql developer task1)

This project is a relational database design for a **Library Management System**, implemented using **MySQL** and designed visually through **MySQL Workbench** using an EER diagram.

---

##Features Implemented

- Database schema created for:
  - Authors
  - Books
  - Members
  - Borrowing system
- **Many-to-Many** relationship between Books and Authors
- **One-to-Many** relationship between Members and Borrow records
- Used `FOREIGN KEY` and `PRIMARY KEY` constraints properly
- Designed using **EER Diagram** in MySQL Workbench

## Schema Overview
### Tables Created:
- `Author(author_id, name, nationality)`
- `Book(book_id, title, genre, published_year)`
- `BookAuthor(book_id, author_id)` *(Many-to-Many bridge table)*
- `Member(member_id, name, email, phone)`
- `Borrow(borrow_id, member_id, book_id, borrow_date, return_date)`
## Relationships
`BookAuthor.book_id` → `Book.book_id` *(Foreign Key)*
`BookAuthor.author_id` → `Author.author_id` *(Foreign Key)*
`Borrow.member_id` → `Member.member_id` *(Foreign Key)*
`Borrow.book_id` → `Book.book_id` *(Foreign Key)*

## Installation

### 1. Import into MySQL Workbench:
- Open MySQL Workbench
- Go to **File > Open Model...**
- Select `LibraryDB.mwb`
## Files Included

- `LibraryDB.mwb` → MySQL Workbench model
- `ERdiagram.sql` → SQL schema script
- `LibraryDB.png` / `LibraryDB.pdf` → EER diagram
- `README.md` → Documentation file


