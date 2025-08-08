CREATE TABLE team (
    TID INT PRIMARY KEY,
    Name VARCHAR2(50) UNIQUE,
    Debut_year INT,
    Team_Principal VARCHAR2(30),
    Points INT DEFAULT NULL
);

CREATE TABLE driver (
    TID INT,
    DID INT PRIMARY KEY,
    dname VARCHAR2(30),
    dpoints INT,
    role VARCHAR2(30),
    ICE INT,
    MGU_H INT,
    MGU_K INT,
    Turbocharger INT,
    ES INT,
    CE INT,
    Exhaust INT,
    FOREIGN KEY (TID) REFERENCES team(TID) ON DELETE SET NULL
);

CREATE TABLE engine (
    EID INT PRIMARY KEY,
    TID INT,
    Ename VARCHAR2(30),
    FOREIGN KEY (TID) REFERENCES team(TID) ON DELETE SET NULL
);

CREATE TABLE engineers (
    EID INT PRIMARY KEY,
    Ename VARCHAR2(30),
    DID INT,
    FOREIGN KEY (DID) REFERENCES driver(DID) ON DELETE SET NULL
);

CREATE TABLE race (
    Circuit VARCHAR2(30),
    Winner INT,
    FOREIGN KEY (Winner) REFERENCES driver(DID) ON DELETE SET NULL
);
