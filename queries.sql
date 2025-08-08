-- Top 3 drivers by points
SELECT dname, dpoints
FROM driver
ORDER BY dpoints DESC
FETCH FIRST 3 ROWS ONLY;

-- Teams with more than 50 points
SELECT Name, Points
FROM team
WHERE Points > 50;

-- Winners of all races
SELECT r.Circuit, d.dname AS Winner
FROM race r
JOIN driver d ON r.Winner = d.DID;
