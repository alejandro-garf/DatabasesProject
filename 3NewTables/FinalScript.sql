-- Use the existing world database
USE world;

-- ===========================
-- Create Table: CyberThreats
-- ===========================

CREATE TABLE CyberThreats (
  ThreatID INT AUTO_INCREMENT PRIMARY KEY,
  CountryCode CHAR(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  ThreatType VARCHAR(255) NOT NULL,
  Severity INT CHECK (Severity BETWEEN 1 AND 5),
  DateReported DATE NOT NULL,
  FOREIGN KEY (CountryCode) REFERENCES Country(Code)
);

-- =============================
-- Create Table: DataBreachStats
-- =============================

CREATE TABLE DataBreachStats (
  BreachID INT AUTO_INCREMENT PRIMARY KEY,
  CountryCode CHAR(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  CompanyName VARCHAR(255) NOT NULL,
  RecordsLeaked BIGINT,
  Year INT CHECK (Year >= 2000),
  FOREIGN KEY (CountryCode) REFERENCES Country(Code)
);

-- ==================================
-- Create Table: CyberDefenseFunding
-- ==================================

CREATE TABLE CyberDefenseFunding (
  FundingID INT AUTO_INCREMENT PRIMARY KEY,
  CountryCode CHAR(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  AgencyName VARCHAR(255) NOT NULL,
  AnnualBudgetUSD BIGINT,
  Year INT CHECK (Year >= 2000),
  FOREIGN KEY (CountryCode) REFERENCES Country(Code)
);

-- ===================================
-- Insert Sample Data: CyberThreats
-- ===================================

INSERT INTO CyberThreats (CountryCode, ThreatType, Severity, DateReported) VALUES
('USA', 'Ransomware Attack', 5, '2024-01-15'),
('USA', 'Phishing Campaign', 3, '2024-02-10'),
('CHN', 'State-sponsored Espionage', 5, '2024-03-22'),
('RUS', 'Botnet Attack', 4, '2024-01-30'),
('IND', 'DDoS Attack', 4, '2024-04-01'),
('BRA', 'Malware Distribution', 3, '2024-03-11'),
('MEX', 'Phishing Campaign', 2, '2024-02-19'),
('DEU', 'Zero-day Exploit', 5, '2024-03-15'),
('FRA', 'Insider Threat', 2, '2024-04-02'),
('GBR', 'Credential Stuffing', 3, '2024-01-20'),
('JPN', 'Supply Chain Attack', 4, '2024-02-25'),
('CAN', 'Data Breach', 4, '2024-02-05'),
('AUS', 'SQL Injection', 2, '2024-03-10'),
('KOR', 'DNS Hijacking', 3, '2024-01-28'),
('ESP', 'Spyware', 3, '2024-02-15'),
('ITA', 'Man-in-the-Middle Attack', 3, '2024-03-20'),
('ARG', 'Website Defacement', 2, '2024-03-18'),
('ZAF', 'Cross-site Scripting', 2, '2024-04-04'),
('SWE', 'Credential Leak', 2, '2024-02-08'),
('NLD', 'Malware Botnet', 4, '2024-04-10');

-- =====================================
-- Insert Sample Data: DataBreachStats
-- =====================================

INSERT INTO DataBreachStats (CountryCode, CompanyName, RecordsLeaked, Year) VALUES
('USA', 'Facebook', 533000000, 2021),
('USA', 'Yahoo', 3000000000, 2017),
('CHN', 'Alibaba', 1100000000, 2022),
('IND', 'Aadhaar Database', 1000000000, 2018),
('RUS', 'VK', 100000000, 2022),
('BRA', 'TSE', 230000000, 2020),
('MEX', 'Secretaría de la Función Pública', 10000000, 2021),
('DEU', 'Deutsche Telekom', 20000000, 2022),
('FRA', 'Cdiscount', 5000000, 2021),
('GBR', 'British Airways', 500000, 2019),
('JPN', 'Yahoo Japan', 22000000, 2021),
('CAN', 'Desjardins', 2700000, 2019),
('AUS', 'Optus', 9800000, 2022),
('KOR', 'Korea Credit Bureau', 20000000, 2014),
('ESP', 'Telefonica', 1200000, 2020),
('ITA', 'UniCredit', 3000000, 2021),
('ARG', 'Argentinean Gov Database', 32000000, 2021),
('ZAF', 'Experian South Africa', 24000000, 2020),
('SWE', 'Transport Agency', 6000000, 2017),
('NLD', 'Booking.com', 400000, 2020);

-- ========================================
-- Insert Sample Data: CyberDefenseFunding
-- ========================================

INSERT INTO CyberDefenseFunding (CountryCode, AgencyName, AnnualBudgetUSD, Year) VALUES
('USA', 'CISA', 2000000000, 2024),
('CHN', 'Cyber Security Bureau', 1500000000, 2024),
('IND', 'CERT-IN', 500000000, 2024),
('RUS', 'FSB Cyber Unit', 800000000, 2024),
('BRA', 'CGU Cyber Division', 200000000, 2024),
('MEX', 'Policia Cibernetica', 150000000, 2024),
('DEU', 'BSI', 400000000, 2024),
('FRA', 'ANSSI', 300000000, 2024),
('GBR', 'NCSC', 500000000, 2024),
('JPN', 'National Center of Incident Readiness', 350000000, 2024),
('CAN', 'Canadian Centre for Cyber Security', 250000000, 2024),
('AUS', 'Australian Cyber Security Centre', 300000000, 2024),
('KOR', 'KISA', 270000000, 2024),
('ESP', 'INCIBE', 200000000, 2024),
('ITA', 'Italian National Cybersecurity Agency', 250000000, 2024),
('ARG', 'Ministerio de Seguridad', 120000000, 2024),
('ZAF', 'Cyber Security Hub', 100000000, 2024),
('SWE', 'Swedish Civil Contingencies Agency', 150000000, 2024),
('NLD', 'National Cyber Security Centre', 250000000, 2024);
