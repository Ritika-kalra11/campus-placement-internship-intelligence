-- ====================================================================
-- PROJECT: Campus Placement & Internship Management System
-- DATABASE: MySQL 8.0
-- AUTHOR: Ritika Kalra
-- ====================================================================

CREATE DATABASE IF NOT EXISTS internship_management;
USE internship_management;

-- --------------------------------------------------------------------
-- 1. TABLE: Student
-- --------------------------------------------------------------------
DROP TABLE IF EXISTS application;
DROP TABLE IF EXISTS placement;
DROP TABLE IF EXISTS internship;
DROP TABLE IF EXISTS company;
DROP TABLE IF EXISTS student;

CREATE TABLE student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dob DATE,
    gender VARCHAR(10),
    department VARCHAR(50),
    specialization VARCHAR(50),
    cgpa_10 DECIMAL(3,2),
    cgpa_12 DECIMAL(3,2),
    graduation_cgpa DECIMAL(3,2),
    year_of_study INT,
    email VARCHAR(100),
    contact_no VARCHAR(15)
);

INSERT INTO student 
(first_name, last_name, dob, gender, department, specialization, cgpa_10, cgpa_12, graduation_cgpa, year_of_study, email, contact_no)
VALUES
('Ritika', 'Kalra', '2002-06-15', 'Female', 'MCA', 'AI/ML', 9.2, 8.8, 9.0, 2, 'ritika.kalra@mca.edu', '9876543210'),
('Aman', 'Sharma', '2001-09-20', 'Male', 'MCA', 'Data Science', 8.6, 8.4, 8.9, 1, 'aman.sharma@mca.edu', '9998887776'),
('Neha', 'Verma', '2002-05-12', 'Female', 'MCA', 'Cloud Computing', 9.1, 9.0, 9.2, 2, 'neha.verma@mca.edu', '8877665544'),
('Rohit', 'Kumar', '2001-11-02', 'Male', 'MCA', 'General', 8.8, 8.6, 8.7, 1, 'rohit.kumar@mca.edu', '9988776655'),
('Priya', 'Singh', '2002-08-10', 'Female', 'MCA', 'AI/ML', 9.3, 9.0, 9.1, 2, 'priya.singh@mca.edu', '9911223344'),
('Arjun', 'Mehta', '2001-02-21', 'Male', 'MCA', 'Data Science', 8.7, 8.5, 8.8, 3, 'arjun.mehta@mca.edu', '9900112233'),
('Simran', 'Kaur', '2002-01-14', 'Female', 'MCA', 'Cloud Computing', 9.0, 8.8, 9.1, 1, 'simran.kaur@mca.edu', '9811122233'),
('Vivek', 'Gupta', '2001-07-25', 'Male', 'MCA', 'General', 8.5, 8.3, 8.6, 2, 'vivek.gupta@mca.edu', '9800114455'),
('Tanya', 'Malik', '2003-03-18', 'Female', 'BCA', 'AR/VR', 8.9, 8.7, NULL, 2, 'tanya.malik@bca.edu', '9001122334'),
('Karan', 'Sethi', '2003-09-09', 'Male', 'BCA', 'UI/UX', 8.2, 8.0, NULL, 1, 'karan.sethi@bca.edu', '9122334455'),
('Meena', 'Joshi', '2004-01-27', 'Female', 'BCA', 'Data Science', 8.6, 8.4, NULL, 3, 'meena.joshi@bca.edu', '9344556677'),
('Raj', 'Bansal', '2003-05-15', 'Male', 'BCA', 'AR/VR', 8.7, 8.5, NULL, 2, 'raj.bansal@bca.edu', '9887766554'),
('Anjali', 'Nair', '2003-04-02', 'Female', 'BCA', 'UI/UX', 8.4, 8.2, NULL, 1, 'anjali.nair@bca.edu', '9776655443'),
('Deepak', 'Chauhan', '2003-12-08', 'Male', 'BCA', 'Data Science', 8.9, 8.7, NULL, 3, 'deepak.chauhan@bca.edu', '9665544332'),
('Rashi', 'Patel', '2004-02-10', 'Female', 'BSc Computer Science', 'AI/ML', 8.8, 8.6, NULL, 3, 'rashi.patel@bsc.edu', '9554433221'),
('Sahil', 'Jain', '2004-07-12', 'Male', 'BSc Computer Science', 'Data Science', 8.4, 8.2, NULL, 2, 'sahil.jain@bsc.edu', '9443322110'),
('Nisha', 'Bora', '2004-09-19', 'Female', 'BSc Computer Science', 'Cloud Computing', 8.5, 8.3, NULL, 1, 'nisha.bora@bsc.edu', '9332211009'),
('Harsh', 'Yadav', '2003-11-25', 'Male', 'BSc Computer Science', 'Cyber Security', 8.6, 8.5, NULL, 2, 'harsh.yadav@bsc.edu', '9221100998'),
('Kriti', 'Arora', '2004-05-22', 'Female', 'BSc Computer Science', 'AI/ML', 9.0, 8.9, NULL, 3, 'kriti.arora@bsc.edu', '9110099887'),
('Manav', 'Garg', '2004-08-11', 'Male', 'BSc Computer Science', 'Cloud Computing', 8.3, 8.0, NULL, 1, 'manav.garg@bsc.edu', '9009988776');

-- --------------------------------------------------------------------
-- 2. TABLE: Company
-- --------------------------------------------------------------------
CREATE TABLE company (
    company_id INT PRIMARY KEY AUTO_INCREMENT,
    company_name VARCHAR(100),
    industry_type VARCHAR(50),
    location VARCHAR(100),
    contact_no VARCHAR(15),
    email VARCHAR(100)
);

INSERT INTO company (company_name, industry_type, location, contact_no, email)
VALUES
('TechNova Pvt Ltd', 'Software Development', 'Gurgaon', '9123456789', 'hr@technova.com'),
('DataSphere Solutions', 'Data Analytics', 'Noida', '7112233445', 'info@datasphere.com'),
('CloudVerse Technologies', 'Cloud Computing', 'Bangalore', '8801234567', 'careers@cloudverse.com'),
('AIgen Labs', 'Artificial Intelligence', 'Hyderabad', '6403344556', 'contact@aigenlabs.com'),
('CyberFort Systems', 'Cyber Security', 'Pune', '6204455667', 'info@cyberfort.com'),
('InnovaSoft Pvt Ltd', 'Web Development', 'Chandigarh', '4172456789', 'jobs@innovasoft.com'),
('VisionAR Studios', 'AR/VR Development', 'Mumbai', '3227788990', 'team@visionar.com'),
('UXCraft Design Hub', 'UI/UX Design', 'Delhi', '7117788665', 'hello@uxcraft.com');

-- --------------------------------------------------------------------
-- 3. TABLE: Internship
-- --------------------------------------------------------------------
CREATE TABLE internship (
    internship_id INT PRIMARY KEY AUTO_INCREMENT,
    company_id INT,
    title VARCHAR(100),
    domain VARCHAR(50),
    duration_months INT,
    start_date DATE,
    end_date DATE,
    stipend DECIMAL(10,2),
    location VARCHAR(100),
    eligibility_criteria VARCHAR(100),
    FOREIGN KEY (company_id) REFERENCES company(company_id)
);

INSERT INTO internship 
(company_id, title, domain, duration_months, start_date, end_date, stipend, location, eligibility_criteria)
VALUES
(1,'Web Development Intern', 'Web Development', 3, '2025-01-10', '2025-04-10', 8000.00, 'Bangalore', 'BCA or MCA General specialization students'),
(1,'Software Testing Intern', 'Software Testing', 2, '2025-02-01', '2025-04-01', 7000.00, 'Hyderabad', 'BSc CS or MCA students'),
(1,'Backend Developer Intern', 'Software Engineering', 4, '2025-03-01', '2025-07-01', 10000.00, 'Pune', 'MCA or BSc CS students'),
(2,'Data Analyst Intern', 'Data Science', 3, '2025-02-01', '2025-05-01', 9000.00, 'Gurgaon', 'MCA or BSc Data Science specialization'),
(2,'Business Intelligence Intern', 'Analytics', 2, '2025-03-01', '2025-05-01', 8500.00, 'Delhi', 'BCA Data Science or MCA students'),
(3,'Cloud Engineer Intern', 'Cloud Computing', 3, '2025-01-20', '2025-04-20', 9500.00, 'Pune', 'MCA Cloud Computing or BSc CS students'),
(3,'DevOps Intern', 'DevOps', 4, '2025-02-10', '2025-06-10', 10000.00, 'Hyderabad', 'MCA Cloud or BCA General students'),
(4,'AI Research Intern', 'AI/ML', 4, '2025-01-15', '2025-05-15', 12000.00, 'Bangalore', 'MCA AI/ML or BSc AI/ML students'),
(4,'Python Developer Intern', 'Machine Learning', 3, '2025-03-10', '2025-06-10', 9000.00, 'Pune', 'BCA or MCA students'),
(5,'Cyber Security Intern', 'Cyber Security', 3, '2025-02-15', '2025-05-15', 9500.00, 'Delhi', 'MCA or BSc Cyber Security specialization'),
(5,'Network Analyst Intern', 'Networking', 2, '2025-03-01', '2025-05-01', 8500.00, 'Noida', 'BCA or MCA General students'),
(6,'Frontend Developer Intern', 'UI Development', 3, '2025-01-20', '2025-04-20', 8000.00, 'Gurgaon', 'BCA UI/UX or MCA students'),
(6,'Full Stack Intern', 'Full Stack', 4, '2025-02-01', '2025-06-01', 10000.00, 'Hyderabad', 'MCA or BSc CS students'),
(7,'AR Developer Intern', 'Augmented Reality', 3, '2025-01-25', '2025-04-25', 11000.00, 'Mumbai', 'BCA AR/VR or MCA students'),
(7,'VR Experience Designer Intern', 'Virtual Reality', 3, '2025-02-10', '2025-05-10', 11500.00, 'Bangalore', 'BCA AR/VR or MCA students'),
(8,'UI Designer Intern', 'UI Design', 2, '2025-02-01', '2025-04-01', 8000.00, 'Noida', 'BCA or MCA UI/UX specialization'),
(8,'UX Research Intern', 'UX Design', 3, '2025-03-01', '2025-06-01', 9000.00, 'Gurgaon', 'MCA or BSc Computer Science students');

-- --------------------------------------------------------------------
-- 4. TABLE: Placement
-- --------------------------------------------------------------------
CREATE TABLE placement (
    placement_id INT PRIMARY KEY AUTO_INCREMENT,
    company_id INT,
    title VARCHAR(100),
    domain VARCHAR(50),
    package_lpa DECIMAL(5,2),
    location VARCHAR(100),
    eligibility_criteria VARCHAR(100),
    placement_date DATE,
    FOREIGN KEY (company_id) REFERENCES company(company_id)
);

INSERT INTO placement 
(company_id, title, domain, package_lpa, location, eligibility_criteria, placement_date)
VALUES
(1, 'Software Developer', 'Software Engineering', 6.50, 'Bangalore', 'MCA or BSc CS students', '2025-07-15'),
(1, 'Backend Developer', 'Software Engineering', 7.00, 'Hyderabad', 'MCA or BCA General', '2025-07-20'),
(1, 'QA Engineer', 'Software Testing', 5.80, 'Pune', 'BSc CS or MCA', '2025-07-25'),
(2, 'Data Analyst', 'Data Science', 7.20, 'Hyderabad', 'MCA DS or BSc DS students', '2025-07-18'),
(2, 'Business Intelligence Associate', 'Analytics', 6.80, 'Gurgaon', 'BCA DS or MCA students', '2025-07-22'),
(2, 'Data Engineer', 'Big Data', 8.50, 'Pune', 'MCA or BSc CS students', '2025-07-30'),
(3, 'Cloud Engineer', 'Cloud Computing', 8.00, 'Pune', 'MCA Cloud or BCA General', '2025-07-20'),
(3, 'DevOps Engineer', 'DevOps', 8.70, 'Hyderabad', 'MCA Cloud specialization', '2025-07-28'),
(4, 'AI Engineer', 'AI/ML', 9.00, 'Bangalore', 'MCA AI/ML or BSc AI/ML', '2025-07-25'),
(4, 'Machine Learning Engineer', 'AI/ML', 9.50, 'Pune', 'MCA or BSc CS students', '2025-07-30'),
(4, 'Data Scientist', 'Data Science', 8.80, 'Hyderabad', 'MCA DS specialization', '2025-08-02'),
(5, 'Cyber Security Analyst', 'Cyber Security', 7.50, 'Delhi', 'MCA or BSc Cyber Security', '2025-07-30'),
(5, 'Network Security Engineer', 'Networking', 8.00, 'Bangalore', 'BCA or MCA General', '2025-08-03'),
(6, 'Full Stack Developer', 'Web Development', 6.80, 'Gurgaon', 'BCA or MCA students', '2025-08-05'),
(6, 'Frontend Developer', 'UI Development', 6.50, 'Noida', 'BCA UI/UX or MCA students', '2025-08-10'),
(7, 'AR Developer', 'AR/VR', 7.00, 'Mumbai', 'BCA AR/VR or MCA students', '2025-08-10'),
(7, 'VR Game Designer', 'AR/VR', 7.80, 'Bangalore', 'BCA AR/VR or MCA students', '2025-08-15'),
(8, 'UI Designer', 'UI/UX Design', 6.20, 'Noida', 'BCA UI/UX or MCA students', '2025-08-12'),
(8, 'UX Researcher', 'UI/UX Design', 6.80, 'Gurgaon', 'MCA or BSc CS students', '2025-08-18');

-- --------------------------------------------------------------------
-- 5. TABLE: Application
-- --------------------------------------------------------------------
CREATE TABLE application (
    application_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    internship_id INT NULL,
    placement_id INT NULL,
    application_date DATE,
    status VARCHAR(30),
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (internship_id) REFERENCES internship(internship_id),
    FOREIGN KEY (placement_id) REFERENCES placement(placement_id)
);

INSERT INTO application 
(student_id, internship_id, placement_id, application_date, status)
VALUES
(1, 4, NULL, '2025-01-12', 'Applied'),
(1, NULL, 7, '2025-02-10', 'Shortlisted'),
(2, 4, 8, '2025-01-15', 'Selected'),
(3, 2, NULL, '2025-01-18', 'Applied'),
(3, NULL, 4, '2025-02-01', 'Shortlisted'),
(3, NULL, 5, '2025-02-10', 'Selected'),
(4, 6, 6, '2025-01-22', 'Applied'),
(4, NULL, 5, '2025-02-05', 'Shortlisted'),
(5, 1, 2, '2025-01-25', 'Selected'),
(5, NULL, 3, '2025-02-10', 'Applied'),
(6, 2, NULL, '2025-01-28', 'Shortlisted'),
(6, NULL, 4, '2025-02-12', 'Applied'),
(7, 15, 15, '2025-02-01', 'Selected'),
(7, NULL, 14, '2025-02-20', 'Applied'),
(8, 14, 16, '2025-02-03', 'Applied'),
(8, NULL, 17, '2025-02-22', 'Shortlisted'),
(9, 3, NULL, '2025-02-05', 'Applied'),
(9, NULL, 6, '2025-02-25', 'Selected'),
(10, 8, 7, '2025-02-07', 'Shortlisted'),
(10, NULL, 8, '2025-03-01', 'Selected'),
(11, 12, 9, '2025-02-10', 'Applied'),
(11, NULL, 10, '2025-03-05', 'Shortlisted'),
(12, 6, NULL, '2025-02-12', 'Applied'),
(12, NULL, 6, '2025-03-10', 'Selected'),
(13, 14, 16, '2025-02-14', 'Shortlisted'),
(13, NULL, 17, '2025-03-12', 'Selected'),
(14, 9, NULL, '2025-02-15', 'Applied'),
(14, NULL, 4, '2025-03-15', 'Selected'),
(15, 1, 3, '2025-02-18', 'Applied'),
(15, NULL, 2, '2025-03-18', 'Rejected'),
(16, 7, 6, '2025-02-20', 'Selected'),
(17, 8, 7, '2025-02-22', 'Applied'),
(17, NULL, 8, '2025-03-20', 'Selected'),
(18, 11, 9, '2025-02-25', 'Shortlisted');


-- ====================================================================
-- 🌟 ADVANCED ANALYTICAL QUERIES (INTERVIEW & PORTFOLIO READY)
-- ====================================================================

-- --------------------------------------------------------------------
-- QUERY 1: DEPARTMENT-WISE PLACEMENT CONVERSION & SUCCESS RATE (%)
-- Purpose: Evaluates hiring performance across MCA, BCA, and BSc CS.
-- Features: LEFT JOIN, DISTINCT COUNT, Conditional SUM (CASE WHEN).
-- --------------------------------------------------------------------
SELECT 
    s.department,
    COUNT(DISTINCT s.student_id) AS total_students,
    COUNT(DISTINCT CASE WHEN a.status = 'Selected' AND a.placement_id IS NOT NULL THEN s.student_id END) AS placed_students,
    COUNT(DISTINCT CASE WHEN a.status = 'Shortlisted' THEN s.student_id END) AS shortlisted_students,
    ROUND(
        COUNT(DISTINCT CASE WHEN a.status = 'Selected' AND a.placement_id IS NOT NULL THEN s.student_id END) * 100.0 / 
        COUNT(DISTINCT s.student_id), 
        1
    ) AS placement_rate_pct,
    ROUND(AVG(CASE WHEN a.status = 'Selected' THEN p.package_lpa END), 2) AS avg_placed_package_lpa
FROM student s
LEFT JOIN application a ON s.student_id = a.student_id
LEFT JOIN placement p ON a.placement_id = p.placement_id
GROUP BY s.department
ORDER BY placement_rate_pct DESC;


-- --------------------------------------------------------------------
-- QUERY 2: TOP-PAYING TECH DOMAINS WITH RANKING (WINDOW FUNCTION)
-- Purpose: Ranks domains (AI/ML, Cloud, Data Science, etc.) by package.
-- Features: DENSE_RANK() OVER (), AVG, MAX, GROUP BY.
-- --------------------------------------------------------------------
SELECT 
    p.domain,
    COUNT(p.placement_id) AS total_openings,
    MAX(p.package_lpa) AS highest_package_lpa,
    ROUND(AVG(p.package_lpa), 2) AS avg_package_lpa,
    DENSE_RANK() OVER (ORDER BY MAX(p.package_lpa) DESC) AS domain_pay_rank
FROM placement p
GROUP BY p.domain
ORDER BY domain_pay_rank ASC;


-- --------------------------------------------------------------------
-- QUERY 3: ACADEMIC CGPA IMPACT ON PLACEMENT SUCCESS (CGPA TIERING)
-- Purpose: Tests hypothesis: "Do students with CGPA > 9 get higher packages?"
-- Features: CTE, CASE WHEN Tiering, Aggregations.
-- --------------------------------------------------------------------
WITH student_academics AS (
    SELECT 
        s.student_id,
        CONCAT(s.first_name, ' ', s.last_name) AS student_name,
        COALESCE(s.graduation_cgpa, s.cgpa_12) AS effective_cgpa,
        CASE 
            WHEN COALESCE(s.graduation_cgpa, s.cgpa_12) >= 9.0 THEN 'Tier 1: High Achiever (9.0+)'
            WHEN COALESCE(s.graduation_cgpa, s.cgpa_12) >= 8.5 THEN 'Tier 2: Strong Academic (8.5 - 8.99)'
            ELSE 'Tier 3: Moderate Academic (< 8.5)'
        END AS cgpa_bracket,
        MAX(CASE WHEN a.status = 'Selected' AND a.placement_id IS NOT NULL THEN 1 ELSE 0 END) AS is_placed,
        MAX(p.package_lpa) AS package_offered
    FROM student s
    LEFT JOIN application a ON s.student_id = a.student_id
    LEFT JOIN placement p ON a.placement_id = p.placement_id
    GROUP BY s.student_id, student_name, effective_cgpa
)
SELECT 
    cgpa_bracket,
    COUNT(student_id) AS student_count,
    SUM(is_placed) AS total_placed,
    ROUND(SUM(is_placed) * 100.0 / COUNT(student_id), 1) AS selection_rate_pct,
    ROUND(AVG(package_offered), 2) AS avg_package_lpa
FROM student_academics
GROUP BY cgpa_bracket
ORDER BY cgpa_bracket ASC;


-- --------------------------------------------------------------------
-- QUERY 4: DUAL OFFER WINNERS (INTERNSHIP + FULL-TIME PLACEMENT)
-- Purpose: Identifies rockstar students who secured both internship and placement.
-- Features: HAVING clause with conditional count, STRING_AGG / GROUP_CONCAT.
-- --------------------------------------------------------------------
SELECT 
    s.student_id,
    CONCAT(s.first_name, ' ', s.last_name) AS student_name,
    s.department,
    s.specialization,
    COUNT(CASE WHEN a.internship_id IS NOT NULL AND a.status = 'Selected' THEN 1 END) AS internships_selected,
    COUNT(CASE WHEN a.placement_id IS NOT NULL AND a.status = 'Selected' THEN 1 END) AS placements_selected
FROM student s
JOIN application a ON s.student_id = a.student_id
GROUP BY s.student_id, student_name, s.department, s.specialization
HAVING placements_selected >= 1 AND internships_selected >= 1
ORDER BY s.student_id ASC;
