-- 1. List countries and the number of cybersecurity threats reported
SELECT Country.Name, COUNT(*) AS ThreatCount
FROM Country
JOIN CyberThreats ON Country.Code = CyberThreats.CountryCode
GROUP BY Country.Name;

-- 2. List countries and the agency name + budget for cyber defense
SELECT Country.Name, CyberDefenseFunding.AgencyName, CyberDefenseFunding.AnnualBudgetUSD
FROM Country
JOIN CyberDefenseFunding ON Country.Code = CyberDefenseFunding.CountryCode;

-- 3. Show companies breached in countries with more than 50 million people
SELECT d.CompanyName, d.RecordsLeaked, c.Name
FROM DataBreachStats d
JOIN Country c ON d.CountryCode = c.Code
WHERE c.Population > 50000000;

-- 4. List cyber threats in countries from the European region
SELECT ct.ThreatType, ct.Severity, c.Name
FROM CyberThreats ct
JOIN Country c ON ct.CountryCode = c.Code
WHERE c.Region = 'Western Europe';

-- 5. Match countries and cyber threat types reported in 2024
SELECT c.Name, ct.ThreatType, ct.DateReported
FROM Country c
JOIN CyberThreats ct ON c.Code = ct.CountryCode
WHERE YEAR(ct.DateReported) = 2024;

-- 6. List countries with both threat reports and breach data
SELECT DISTINCT c.Name
FROM Country c
JOIN CyberThreats ct ON c.Code = ct.CountryCode
JOIN DataBreachStats db ON c.Code = db.CountryCode;

-- 7. Countries with cyber defense budgets over $500M
SELECT c.Name, cf.AnnualBudgetUSD
FROM Country c
JOIN CyberDefenseFunding cf ON c.Code = cf.CountryCode
WHERE cf.AnnualBudgetUSD > 500000000;

-- 8. Countries that reported a ‘Phishing Campaign’
SELECT DISTINCT c.Name
FROM CyberThreats ct
JOIN Country c ON ct.CountryCode = c.Code
WHERE ct.ThreatType = 'Phishing Campaign';

-- 9. Count breaches per country and total records leaked
SELECT c.Name, COUNT(*) AS BreachCount, SUM(db.RecordsLeaked) AS TotalLeaked
FROM Country c
JOIN DataBreachStats db ON c.Code = db.CountryCode
GROUP BY c.Name;

-- 10. Match countries with threats and defense spending in same year
SELECT c.Name, ct.DateReported, cf.Year, cf.AnnualBudgetUSD
FROM Country c
JOIN CyberThreats ct ON c.Code = ct.CountryCode
JOIN CyberDefenseFunding cf ON c.Code = cf.CountryCode
WHERE YEAR(ct.DateReported) = cf.Year;
