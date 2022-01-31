INSERT INTO customer(first_name, last_name, phone_number) VALUES 
('Teresa', 'Green', '1234567891'),
('Pearlie', 'Whites', '2323232323'),
('Tim', 'Burr', '5556667777'),
('Lowden', 'Clear', '2626262266'),
('Hazel', 'Nutt', '8899989898');

INSERT INTO conncession(item, price) VALUES
('Tub O Popcorn', 12.99),
('Frozen JR. Mints', 5.50),
('Movie Combo', 23),
('Super Size Drink', 8.99);

INSERT INTO movie (show_time, title, "desc", genre, rating, duration) VALUES
('1999-01-08, 4:12','The Fish That Saved Pittsburgh ', 'The Pittsburgh, Pennsylvania basketball team is hopeless. Maybe with the aid of an astrologer, and some new astrologically compatible players, they can become winners.', 'comedy', 'PG', 160),
('1999-01-08, 5:35','Attack of the Killer Refrigerator', 'A group of teenagers get drunk and abuse a hapless refrigerator. The machine then goes on a killing rampage, eating the ones who beat him up.', 'drama', 'PG-13', 90),
('1999-01-08, 10:05','Death Bed: The Bed That Eats', 'A bed possessed by a demon spirit consumes its users alive.', 'horror', 'NR', 132);

INSERT INTO ticket(customer_id, seat_row, seat_num) VALUES
(2, 'D', 16),
(5, 'H', 11),
(1, 'G', 7),
(4, 'J', 6),
(3, 'L', 12);

INSERT INTO movie_ticket (ticket_id, theater_id) VALUES
(1, 1),
(3, 3),
(2, 3),
(5, 2),
(4, 2);

INSERT INTO payment (customer_id, ticket_id, order_id, amount) VALUES
(1, NULL, 2, 5.50),
(1, 2, NULL, 11.75),
(3, 4, 1, 27.99),
(4, NULL, 3, 23),
(5, NULL, 3, 23),
(2, 1, NULL, 11.75),
(2, NULL, 4, 8.99),
(5, 3, 2, 19.50),
(4, 5, 1, 23.99);INSERT INTO movie_ticket (ticket_id, theater_id)
VALUES (
    ticket_id:integer,
    theater_id:integer
  );