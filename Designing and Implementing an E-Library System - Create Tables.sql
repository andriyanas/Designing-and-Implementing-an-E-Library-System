-- Creating the users table
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    username VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(25)
);

-- Creating the libraries table
CREATE TABLE libraries (
    library_id SERIAL PRIMARY KEY,
    library_name VARCHAR(255) NOT NULL,
    location TEXT NOT NULL
);

-- Creating the books table
CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL,
    quantity INT NOT NULL CHECK (quantity >= 0)
);

-- Creating the loans table
CREATE TABLE loans (
    loan_id SERIAL PRIMARY KEY,
    book_id INT REFERENCES books(book_id),
    user_id INT REFERENCES users(user_id),
    library_id INT REFERENCES libraries(library_id),
    loan_date DATE NOT NULL,
    due_date DATE NOT NULL,
    return_date DATE
);

-- Creating the holds table
CREATE TABLE holds (
    hold_id SERIAL PRIMARY KEY,
    book_id INT REFERENCES books(book_id),
    user_id INT REFERENCES users(user_id),
    library_id INT REFERENCES libraries(library_id),
    hold_date DATE NOT NULL,
    expiry_date DATE NOT NULL
);
