CREATE TABLE CyberThreats (
  ThreatID INT AUTO_INCREMENT PRIMARY KEY,
  CountryCode CHAR(3),
  ThreatType VARCHAR(255) NOT NULL,
  Severity INT CHECK (Severity BETWEEN 1 AND 5),
  DateReported DATE NOT NULL,
  FOREIGN KEY (CountryCode) REFERENCES Country(Code)
);