CREATE TABLE CyberDefenseFunding (
  FundingID INT AUTO_INCREMENT PRIMARY KEY,
  CountryCode CHAR(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  AgencyName VARCHAR(255) NOT NULL,
  AnnualBudgetUSD BIGINT,
  Year INT CHECK (Year >= 2000),
  FOREIGN KEY (CountryCode) REFERENCES Country(Code)
);