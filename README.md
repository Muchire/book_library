<<<<<<< HEAD

# README
=======
# Book Lending Library
>>>>>>> 207e50b (book_library)

This is a Rails-based book lending library system that allows users to borrow and return books. The system keeps track of borrowing history and ensures books are available for lending.

## Features
- Borrow and return books
- Track lending history
- Simple RESTful API for managing books and lending history

## Setup
### Prerequisites
- Ruby 3.x
- Rails 7.x
- PostgreSQL (or SQLite for local testing)

### Installation
1. Clone the repo:
   ```sh
   git clone https://github.com/Muchire/book_library.git
   cd book_lending_library
   ```

2. Install dependencies:
   ```sh
   bundle install
   ```

3. Set up the database:
   ```sh
   rails db:create db:migrate db:seed
   ```

4. Run the server:
   ```sh
   rails s
   ```

## Running Tests
To run the test suite:
```sh
rails test
```

## API Routes
### Books
- `GET /books` → List all books
- `POST /books` → Add a new book
- `PATCH /books/:id/return_book` → Return a borrowed book

### Lending History
- `POST /books/:id/borrowing_histories` → Borrow a book
- `GET /borrowers/:borrower_name` → View borrowing history by borrower

## Issues & Debugging
- If `return_book_url` isn’t recognized, check your routes: `rails routes | grep return`
- Database issues? Try `rails db:reset`

## Future Improvements
- Add user authentication
- Implement notifications for due dates
- Improve UI for better book management

---

<<<<<<< HEAD
* ...

=======
>>>>>>> 207e50b (book_library)
