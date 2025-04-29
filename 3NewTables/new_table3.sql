CREATE TABLE CyberDefenseFunding (
  FundingID INT AUTO_INCREMENT PRIMARY KEY,
  CountryCode CHAR(3),
  AgencyName VARCHAR(255) NOT NULL,
  AnnualBudgetUSD BIGINT,
  Year INT CHECK (Year >= 2000),
  FOREIGN KEY (CountryCode) REFERENCES Country(Code)
);