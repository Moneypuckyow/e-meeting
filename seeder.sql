-- Department
INSERT INTO Department (name) VALUES 
('IT'), ('HR'), ('Finance');

-- User
INSERT INTO "User" (name, email, department_id) VALUES
('Alex', 'alex@company.com', 1),
('Budi', 'budi@company.com', 2),
('Citra', 'citra@company.com', 3);

-- MeetingRoom
INSERT INTO MeetingRoom (name, capacity, location, facilities) VALUES
('Ruang A', 10, 'Lantai 1', 'Proyektor, Whiteboard'),
('Ruang B', 20, 'Lantai 2', 'TV, AC, Speakerphone');

-- Booking
INSERT INTO Booking (user_id, room_id, start_time, end_time, status) VALUES
(1, 1, '2025-09-22 09:00:00', '2025-09-22 10:00:00', 'approved'),
(2, 2, '2025-09-22 14:00:00', '2025-09-22 15:30:00', 'pending');

-- MeetingParticipant
INSERT INTO MeetingParticipant (booking_id, user_id) VALUES
(1, 2), (1, 3),
(2, 1), (2, 3);