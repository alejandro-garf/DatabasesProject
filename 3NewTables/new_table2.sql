CREATE TABLE DataBreachStats (
  BreachID INT AUTO_INCREMENT PRIMARY KEY,
  CountryCode CHAR(3),
  CompanyName VARCHAR(255) NOT NULL,
  RecordsLeaked BIGINT,
  Year INT CHECK (Year >= 2000),
  FOREIGN KEY (CountryCode) REFERENCES Country(Code)
);