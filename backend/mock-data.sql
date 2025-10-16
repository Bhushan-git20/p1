-- Mock Data for Placement Prediction System
-- Run this AFTER schema.sql
-- This script can be run multiple times safely (uses ON CONFLICT to handle duplicates)

-- Clear existing mock data (optional - uncomment if you want to reset)
-- TRUNCATE TABLE placements, tests, students, jobs, users CASCADE;

-- Insert Admin User (password: admin123)
INSERT INTO users (id, email, name, password, role, is_active) VALUES
('a1111111-1111-1111-1111-111111111111', 'admin@placement.com', 'Admin User', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewY5NU7w.FHqvS2m', 'admin', true)
ON CONFLICT (id) DO NOTHING;

-- Insert Faculty Users (password: faculty123)
INSERT INTO users (id, email, name, password, role, is_active) VALUES
('f1111111-1111-1111-1111-111111111111', 'faculty1@placement.com', 'Dr. Rajesh Kumar', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewY5NU7w.FHqvS2m', 'faculty', true),
('f2222222-2222-2222-2222-222222222222', 'faculty2@placement.com', 'Prof. Priya Sharma', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewY5NU7w.FHqvS2m', 'faculty', true)
ON CONFLICT (id) DO NOTHING;

-- Insert 15 Student Users (password: student123)
INSERT INTO users (id, email, name, password, role, is_active) VALUES
('b1111111-1111-1111-1111-111111111111', 'student1@college.edu', 'Arjun Patel', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewY5NU7w.FHqvS2m', 'student', true),
('b2222222-2222-2222-2222-222222222222', 'student2@college.edu', 'Sneha Reddy', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewY5NU7w.FHqvS2m', 'student', true),
('b3333333-3333-3333-3333-333333333333', 'student3@college.edu', 'Vikram Singh', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewY5NU7w.FHqvS2m', 'student', true),
('b4444444-4444-4444-4444-444444444444', 'student4@college.edu', 'Ananya Gupta', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewY5NU7w.FHqvS2m', 'student', true),
('b5555555-5555-5555-5555-555555555555', 'student5@college.edu', 'Rohan Mehta', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewY5NU7w.FHqvS2m', 'student', true),
('b6666666-6666-6666-6666-666666666666', 'student6@college.edu', 'Kavya Iyer', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewY5NU7w.FHqvS2m', 'student', true),
('b7777777-7777-7777-7777-777777777777', 'student7@college.edu', 'Aditya Verma', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewY5NU7w.FHqvS2m', 'student', true),
('b8888888-8888-8888-8888-888888888888', 'student8@college.edu', 'Neha Joshi', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewY5NU7w.FHqvS2m', 'student', true),
('b9999999-9999-9999-9999-999999999999', 'student9@college.edu', 'Karthik Nair', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewY5NU7w.FHqvS2m', 'student', true),
('ba101010-1010-1010-1010-101010101010', 'student10@college.edu', 'Divya Pillai', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewY5NU7w.FHqvS2m', 'student', true),
('bb111101-1111-1111-1111-111111111011', 'student11@college.edu', 'Rahul Desai', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewY5NU7w.FHqvS2m', 'student', true),
('bc211111-1211-1211-1211-121212121212', 'student12@college.edu', 'Ishita Kapoor', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewY5NU7w.FHqvS2m', 'student', true),
('bd311111-1311-1311-1311-131313131313', 'student13@college.edu', 'Siddharth Menon', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewY5NU7w.FHqvS2m', 'student', true),
('be411111-1411-1411-1411-141414141414', 'student14@college.edu', 'Pooja Bhat', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewY5NU7w.FHqvS2m', 'student', true),
('bf511111-1511-1511-1511-151515151515', 'student15@college.edu', 'Aman Chatterjee', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewY5NU7w.FHqvS2m', 'student', true)
ON CONFLICT (id) DO NOTHING;

-- Insert 15 Student Profiles
INSERT INTO students (id, user_id, department, gpa, skills) VALUES
('c1111111-1111-1111-1111-111111111111', 'b1111111-1111-1111-1111-111111111111', 'Computer Science', 8.5, ARRAY['Python', 'Java', 'React', 'SQL']),
('c2222222-2222-2222-2222-222222222222', 'b2222222-2222-2222-2222-222222222222', 'Computer Science', 9.2, ARRAY['JavaScript', 'Node.js', 'MongoDB', 'AWS']),
('c3333333-3333-3333-3333-333333333333', 'b3333333-3333-3333-3333-333333333333', 'Information Technology', 8.0, ARRAY['C++', 'Docker', 'Kubernetes', 'DevOps']),
('c4444444-4444-4444-4444-444444444444', 'b4444444-4444-4444-4444-444444444444', 'Computer Science', 9.5, ARRAY['Python', 'Machine Learning', 'TensorFlow', 'Data Science']),
('c5555555-5555-5555-5555-555555555555', 'b5555555-5555-5555-5555-555555555555', 'Electronics', 7.8, ARRAY['Java', 'Spring Boot', 'Microservices', 'REST API']),
('c6666666-6666-6666-6666-666666666666', 'b6666666-6666-6666-6666-666666666666', 'Computer Science', 8.9, ARRAY['React', 'TypeScript', 'Next.js', 'UI/UX']),
('c7777777-7777-7777-7777-777777777777', 'b7777777-7777-7777-7777-777777777777', 'Information Technology', 8.3, ARRAY['Python', 'Django', 'PostgreSQL', 'Redis']),
('c8888888-8888-8888-8888-888888888888', 'b8888888-8888-8888-8888-888888888888', 'Computer Science', 9.0, ARRAY['Android', 'Kotlin', 'Flutter', 'Firebase']),
('c9999999-9999-9999-9999-999999999999', 'b9999999-9999-9999-9999-999999999999', 'Computer Science', 8.7, ARRAY['React Native', 'JavaScript', 'GraphQL', 'Apollo']),
('ca101010-1010-1010-1010-101010101010', 'ba101010-1010-1010-1010-101010101010', 'Information Technology', 8.4, ARRAY['Java', 'Python', 'Cloud Computing', 'Azure']),
('cb111101-1111-1111-1111-111111111011', 'bb111101-1111-1111-1111-111111111011', 'Computer Science', 9.3, ARRAY['Go', 'Rust', 'System Design', 'Distributed Systems']),
('cc121212-1212-1212-1212-121212121212', 'bc211111-1211-1211-1211-121212121212', 'Electronics', 8.1, ARRAY['IoT', 'Python', 'Arduino', 'Embedded Systems']),
('cd131313-1313-1313-1313-131313131313', 'bd311111-1311-1311-1311-131313131313', 'Computer Science', 8.6, ARRAY['PHP', 'Laravel', 'MySQL', 'Vue.js']),
('ce141414-1414-1414-1414-141414141414', 'be411111-1411-1411-1411-141414141414', 'Information Technology', 8.8, ARRAY['Python', 'Flask', 'NLP', 'AI']),
('cf151515-1515-1515-1515-151515151515', 'bf511111-1511-1511-1511-151515151515', 'Computer Science', 9.1, ARRAY['Full Stack', 'MERN', 'TypeScript', 'GraphQL'])
ON CONFLICT (id) DO NOTHING;

-- Insert 15 Jobs
INSERT INTO jobs (id, company, position, lpa, description, requirements, is_active) VALUES
('j1111111-1111-1111-1111-111111111111', 'Google', 'Software Engineer', 18.5, 'Build innovative products used by billions of users worldwide', 'Strong coding skills, Data Structures, Algorithms', true),
('j2222222-2222-2222-2222-222222222222', 'Microsoft', 'SDE II', 16.0, 'Work on cloud services and enterprise solutions', 'Azure, C#, .NET, Cloud Architecture', true),
('j3333333-3333-3333-3333-333333333333', 'Amazon', 'Software Development Engineer', 17.5, 'Build scalable systems for e-commerce and cloud', 'Java, Python, AWS, System Design', true),
('j4444444-4444-4444-4444-444444444444', 'Goldman Sachs', 'Technology Analyst', 15.0, 'Develop trading platforms and financial systems', 'Java, Python, SQL, Financial Domain', true),
('j5555555-5555-5555-5555-555555555555', 'Flipkart', 'Software Engineer', 12.5, 'Build India''s largest e-commerce platform', 'Java, Spring Boot, Microservices', true),
('j6666666-6666-6666-6666-666666666666', 'Adobe', 'Computer Scientist', 14.0, 'Work on creative cloud products', 'C++, JavaScript, Machine Learning', true),
('j7777777-7777-7777-7777-777777777777', 'Uber', 'Backend Engineer', 13.5, 'Build ride-sharing and delivery platforms', 'Go, Python, Distributed Systems', true),
('j8888888-8888-8888-8888-888888888888', 'Netflix', 'Full Stack Engineer', 16.5, 'Create world-class streaming experiences', 'React, Node.js, AWS, CDN', true),
('j9999999-9999-9999-9999-999999999999', 'PayPal', 'Software Engineer', 14.5, 'Build secure payment processing systems', 'Java, Spring, Security, Payment Gateway', true),
('j1010101-1010-1010-1010-101010101010', 'Salesforce', 'Member Technical Staff', 15.5, 'Develop CRM and cloud solutions', 'Java, Apex, Lightning, Salesforce Platform', true),
('j1111101-1111-1111-1111-111111111011', 'Oracle', 'Applications Developer', 13.0, 'Work on enterprise database and cloud apps', 'Java, Oracle DB, PL/SQL', true),
('j1211111-1211-1211-1211-121212121212', 'Cisco', 'Software Engineer', 12.0, 'Build networking and security solutions', 'C, C++, Networking, Linux', true),
('j1311111-1311-1311-1311-131313131313', 'Intel', 'Software Development Engineer', 14.8, 'Work on chip design and validation tools', 'C++, Python, Hardware, Embedded', true),
('j1411111-1411-1411-1411-141414141414', 'IBM', 'Application Developer', 11.5, 'Develop AI and cloud solutions', 'Python, AI, Watson, Cloud', true),
('j1511111-1511-1511-1511-151515151515', 'Accenture', 'Technology Consultant', 10.5, 'Digital transformation and consulting', 'Full Stack, Agile, Client Management', true)
ON CONFLICT (id) DO NOTHING;

-- Insert 15 Placements (matching some students with jobs)
INSERT INTO placements (id, student_id, job_id, lpa, status) VALUES
('d1111111-1111-1111-1111-111111111111', 'c1111111-1111-1111-1111-111111111111', 'j1111111-1111-1111-1111-111111111111', 18.5, 'placed'),
('d2222222-2222-2222-2222-222222222222', 'c2222222-2222-2222-2222-222222222222', 'j2222222-2222-2222-2222-222222222222', 16.0, 'placed'),
('d3333333-3333-3333-3333-333333333333', 'c3333333-3333-3333-3333-333333333333', 'j3333333-3333-3333-3333-333333333333', 17.5, 'placed'),
('d4444444-4444-4444-4444-444444444444', 'c4444444-4444-4444-4444-444444444444', 'j4444444-4444-4444-4444-444444444444', 15.0, 'placed'),
('d5555555-5555-5555-5555-555555555555', 'c5555555-5555-5555-5555-555555555555', 'j5555555-5555-5555-5555-555555555555', 12.5, 'placed'),
('d6666666-6666-6666-6666-666666666666', 'c6666666-6666-6666-6666-666666666666', 'j6666666-6666-6666-6666-666666666666', 14.0, 'placed'),
('d7777777-7777-7777-7777-777777777777', 'c7777777-7777-7777-7777-777777777777', 'j7777777-7777-7777-7777-777777777777', 13.5, 'placed'),
('d8888888-8888-8888-8888-888888888888', 'c8888888-8888-8888-8888-888888888888', 'j8888888-8888-8888-8888-888888888888', 16.5, 'placed'),
('d9999999-9999-9999-9999-999999999999', 'c9999999-9999-9999-9999-999999999999', 'j9999999-9999-9999-9999-999999999999', 14.5, 'placed'),
('da101010-1010-1010-1010-101010101010', 'ca101010-1010-1010-1010-101010101010', 'j1010101-1010-1010-1010-101010101010', 15.5, 'placed'),
('db111101-1111-1111-1111-111111111011', 'cb111101-1111-1111-1111-111111111011', 'j1111101-1111-1111-1111-111111111011', 13.0, 'placed'),
('dc211111-1211-1211-1211-121212121212', 'cc121212-1212-1212-1212-121212121212', 'j1211111-1211-1211-1211-121212121212', 12.0, 'placed'),
('dd311111-1311-1311-1311-131313131313', 'cd131313-1313-1313-1313-131313131313', 'j1311111-1311-1311-1311-131313131313', 14.8, 'placed'),
('de411111-1411-1411-1411-141414141414', 'ce141414-1414-1414-1414-141414141414', 'j1411111-1411-1411-1411-141414141414', 11.5, 'placed'),
('df511111-1511-1511-1511-151515151515', 'cf151515-1515-1515-1515-151515151515', 'j1511111-1511-1511-1511-151515151515', 10.5, 'placed')
ON CONFLICT (id) DO NOTHING;

-- Insert Sample Tests
INSERT INTO tests (id, title, category, questions, created_by) VALUES
('t1111111-1111-1111-1111-111111111111', 'Data Structures Fundamentals', 'Technical', 
'[
    {"question": "What is the time complexity of binary search?", "options": ["O(n)", "O(log n)", "O(n^2)", "O(1)"], "correct": 1},
    {"question": "Which data structure uses LIFO?", "options": ["Queue", "Stack", "Array", "Tree"], "correct": 1},
    {"question": "In a binary tree, maximum nodes at level L is?", "options": ["2^L", "L^2", "2L", "L"], "correct": 0},
    {"question": "Best case time complexity of Quick Sort?", "options": ["O(n^2)", "O(n log n)", "O(n)", "O(log n)"], "correct": 1},
    {"question": "Which is not a stable sorting algorithm?", "options": ["Merge Sort", "Bubble Sort", "Quick Sort", "Insertion Sort"], "correct": 2}
]'::jsonb,
'f1111111-1111-1111-1111-111111111111'),

('t2222222-2222-2222-2222-222222222222', 'Object Oriented Programming', 'Technical',
'[
    {"question": "What is encapsulation?", "options": ["Hiding implementation", "Multiple inheritance", "Method overloading", "Type casting"], "correct": 0},
    {"question": "Which keyword is used for inheritance in Java?", "options": ["implements", "extends", "inherits", "super"], "correct": 1},
    {"question": "What is polymorphism?", "options": ["One interface, multiple implementations", "Data hiding", "Code reuse", "None"], "correct": 0},
    {"question": "Abstract class can have constructor?", "options": ["Yes", "No", "Only in C++", "Only in Python"], "correct": 0},
    {"question": "Interface can have variables?", "options": ["No", "Yes, only static final", "Yes, any type", "Only private"], "correct": 1}
]'::jsonb,
'f1111111-1111-1111-1111-111111111111'),

('t3333333-3333-3333-3333-333333333333', 'Database Management', 'Technical',
'[
    {"question": "What does SQL stand for?", "options": ["Standard Query Language", "Structured Query Language", "Simple Query Language", "System Query Language"], "correct": 1},
    {"question": "Which is not a type of JOIN?", "options": ["INNER", "OUTER", "CROSS", "PARALLEL"], "correct": 3},
    {"question": "Primary key can be NULL?", "options": ["Yes", "No", "Sometimes", "Depends on DBMS"], "correct": 1},
    {"question": "What is normalization?", "options": ["Removing redundancy", "Adding indexes", "Creating views", "Backup process"], "correct": 0},
    {"question": "Which command is DDL?", "options": ["SELECT", "UPDATE", "CREATE", "DELETE"], "correct": 2}
]'::jsonb,
'f2222222-2222-2222-2222-222222222222')
ON CONFLICT (id) DO NOTHING;

-- Success message
DO $$
BEGIN
    RAISE NOTICE '========================================';
    RAISE NOTICE 'Mock data inserted successfully!';
    RAISE NOTICE '========================================';
    RAISE NOTICE 'Admin credentials: admin@placement.com / admin123';
    RAISE NOTICE 'Faculty credentials: faculty1@placement.com / faculty123';
    RAISE NOTICE 'Student credentials: student1@college.edu / student123';
    RAISE NOTICE '(Also student2 through student15 with same password)';
    RAISE NOTICE '========================================';
END $$;
