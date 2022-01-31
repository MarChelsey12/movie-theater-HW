CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    phone_number VARCHAR(13)
);

DROP TABLE IF EXISTS conncession CASCADE;
CREATE TABLE conncession(
    order_id SERIAL PRIMARY KEY,
    item VARCHAR(50),
    price DECIMAL(4,2)
);

CREATE TABLE movie(
    theater_id SERIAL PRIMARY KEY,
    show_time TIMESTAMP,
    title VARCHAR(250),
    "desc" TEXT,
    genre VARCHAR(100),
    rating VARCHAR(50),
    duration INTEGER
);

CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    seat_row varchar(1),
    seat_num INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE movie_ticket(
    ticket_id INTEGER,
    theater_id INTEGER,
    FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id) ON DELETE CASCADE,
    FOREIGN KEY (theater_id) REFERENCES movie(theater_id) ON DELETE CASCADE
);

CREATE TABLE payment(
    payment_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    ticket_id INTEGER,
    order_id INTEGER,
    amount DECIMAL(6,2), 
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id) ON DELETE CASCADE,
    FOREIGN KEY (order_id) REFERENCES conncession(order_id)
);
