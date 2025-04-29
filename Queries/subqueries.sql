-- 11. Countries with more than 1 cyber threat
SELECT Name
FROM Country
WHERE Code IN (
  SELECT CountryCode
  FROM CyberThreats
  GROUP BY CountryCode
  HAVING COUNT(*) > 1
);

-- 12. Countries whose largest breach leaked over 1 billion records
SELECT Name
FROM Country
WHERE Code IN (
  SELECT CountryCode
  FROM DataBreachStats
  GROUP BY CountryCode
  HAVING MAX(RecordsLeaked) > 1000000000
);

-- 13. Countries with cyber defense budgets below average
SELECT Name
FROM Country
WHERE Code IN (
  SELECT CountryCode
  FROM CyberDefenseFunding
  WHERE AnnualBudgetUSD < (
    SELECT AVG(AnnualBudgetUSD) FROM CyberDefenseFunding
  )
);

-- 14. Countries that experienced a threat but have no defense agency
SELECT Name
FROM Country
WHERE Code IN (
  SELECT CountryCode FROM CyberThreats
)
AND Code NOT IN (
  SELECT CountryCode FROM CyberDefenseFunding
);

-- 15. Companies in countries with no threats reported
SELECT CompanyName
FROM DataBreachStats
WHERE CountryCode NOT IN (
  SELECT CountryCode FROM CyberThreats
);

-- 16. Countries that had at least one breach after 2020
SELECT Name
FROM Country
WHERE Code IN (
  SELECT CountryCode
  FROM DataBreachStats
  WHERE Year > 2020
);

-- 17. Countries with highest threat severity
SELECT Name
FROM Country
WHERE Code IN (
  SELECT CountryCode
  FROM CyberThreats
  WHERE Severity = 5
);

-- 18. Defense agencies spending more than the max budget in Mexico
SELECT AgencyName
FROM CyberDefenseFunding
WHERE AnnualBudgetUSD > (
  SELECT MAX(AnnualBudgetUSD)
  FROM CyberDefenseFunding
  WHERE CountryCode = 'MEX'
);

-- 19. Countries with more threats than breaches
SELECT Name
FROM Country
WHERE Code IN (
  SELECT ct.CountryCode
  FROM CyberThreats ct
  GROUP BY ct.CountryCode
  HAVING COUNT(*) >
    (SELECT COUNT(*)
     FROM DataBreachStats db
     WHERE db.CountryCode = ct.CountryCode)
);

-- 20. Countries with a breach but no defense budget in 2024
SELECT Name
FROM Country
WHERE Code IN (
  SELECT CountryCode FROM DataBreachStats
)
AND Code NOT IN (
  SELECT CountryCode FROM CyberDefenseFunding WHERE Year = 2024
);
