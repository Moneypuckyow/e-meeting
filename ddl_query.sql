CREATE TABLE Department (
    department_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE "User" (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

CREATE TABLE MeetingRoom (
    room_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    capacity INT NOT NULL,
    location VARCHAR(100),
    facilities TEXT
);

CREATE TABLE Booking (
    booking_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    room_id INT NOT NULL,
    start_time TIMESTAMP NOT NULL,
    end_time TIMESTAMP NOT NULL,
    status VARCHAR(20) DEFAULT 'pending',
    FOREIGN KEY (user_id) REFERENCES "User"(user_id),
    FOREIGN KEY (room_id) REFERENCES MeetingRoom(room_id)
);

CREATE TABLE MeetingParticipant (
    participant_id SERIAL PRIMARY KEY,
    booking_id INT NOT NULL,
    user_id INT NOT NULL,
    FOREIGN KEY (booking_id) REFERENCES Booking(booking_id),
    FOREIGN KEY (user_id) REFERENCES "User"(user_id)
);
