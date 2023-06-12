CREATE TABLE Chart (
    Id INT,
    Name VARCHAR(255),
    Manager VARCHAR(255),
    ManagerId INT,
    PRIMARY KEY (Id),
    FOREIGN KEY (ManagerId) REFERENCES Chart(Id)
);
