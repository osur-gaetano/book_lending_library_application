# Book Lending Library Application (Rails 8)

## Setup Instructions

1. **Clone the repository:**
   ```bash
   git clone git@github.com:osur-gaetano/book_lending_library_application.git
   cd book_lending_library
   ```

2. **Set up the application:**
   ```bash
   bundle install
   bin/rails db:create db:migrate db:seed
   bin/rails db:fixtures:load
   ```

3. **Run the server:**
   ```bash
   bin/rails server
   ```

4. **Access the application:**
   Open your browser and go to `http://localhost:3000`

   default log in account credentials:
   ```bash
   email_address: one@example.com
   password: password

   email_address: two@example.com
   password: password
   ```
5. **Run tests:**
   ```bash
   bin/rails test
   ```

## Application Structure

### Models

1. **User**
   - Fields: `email`, `encrypted_password`
   - Authentication: Default Rails 8 authentication

2. **Book**
   - Fields: `title`, `author`, `isbn`, `status`
   - Validations:
     - Presence of title, author, and ISBN
     - Unique ISBN

3. **Borrowing**
   - Fields: `user_id`, `book_id`, `borrowed_date`, `due_date`, `returned_date`
   - Validations:
     - Ensure a book can be borrowed only if not already borrowed
     - Presence of user_id and book_id

### Features

1. **User Authentication**
   - Registration, login, logout (using Rails 8 default auth)

2. **Book Management**
   - Browse available books (showing availability status)
   - View book details (with a borrow button if available)

3. **Borrowing System**
   - Borrow a book (if available) and create a Borrowing record
   - Automatically set a due date (2 weeks from borrowing date)
   - Return a book and mark it as returned
   - View borrowed books in the user profile



## Seed Data

Add sample books to the database:

```
bin/rails db:seed


```

Run the seed command:

```bash
bin/rails db:seed
```

## Future Improvements

1. Add admin functionality for managing books.
2. Implement notifications for upcoming due dates.
3. Enhance user experience with improved UI and UX.

## License

MIT License
