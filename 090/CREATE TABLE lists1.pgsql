CREATE TABLE lists1 (
    lID SERIAL PRIMARY KEY,
    pID INT REFERENCES people1 NOT NULL,
    lName VARCHAR(50) NOT NULL
    );