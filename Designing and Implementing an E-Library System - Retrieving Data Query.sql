-- Average loan duration
SELECT AVG(return_date - loan_date) AS avg_loan_duration
FROM loans
WHERE return_date IS NOT NULL;
-- Books currently on loan
SELECT COUNT(*) AS books_on_loan
FROM Loans
WHERE return_date IS NULL;

-- Most borrowed books
SELECT b.title, COUNT(l.loan_id) AS borrow_count
FROM loans l
JOIN books b ON l.book_id = b.book_id
GROUP BY b.title
ORDER BY borrow_count DESC;

-- Users with most borrowed books
SELECT u.username, COUNT(l.loan_id) AS borrow_count
FROM loans l
JOIN users u ON l.user_id = u.user_id
GROUP BY u.username
ORDER BY borrow_count DESC;

-- Libraries with highest number of holds
SELECT l.library_name, COUNT(h.hold_id) AS hold_count
FROM holds h
JOIN libraries l ON h.library_id = l.library_id
GROUP BY l.library_name
ORDER BY hold_count DESC;

-- Most common categories of borrowed books
SELECT b.category, COUNT(l.loan_id) AS borrow_count
FROM loans l
JOIN books b ON l.book_id = b.book_id
GROUP BY b.category
ORDER BY borrow_count DESC;
