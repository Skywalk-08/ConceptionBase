CREATE TABLE Serveur(
    idServeur INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL
);

INSERT INTO Serveur (nom, prenom) VALUES
('Rakoto', 'Njaka'),
('Rasoa', 'Lalao');

ALTER TABLE Commande ADD COLUMN idServeur INT,
ADD CONSTRAINT fk_commande_serveur FOREIGN KEY (idServeur) REFERENCES Serveur(idServeur);

UPDATE Commande SET idServeur = 1 WHERE idCommande = 1;
UPDATE Commande SET idServeur = 2 WHERE idCommande = 2;
UPDATE Commande SET idServeur = 1 WHERE idCommande = 3;

ALTER TABLE Commande ALTER COLUMN idServeur SET NOT NULL;

CREATE TABLE SalleTable(
    idSalleTable INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    libelle VARCHAR(50) NOT NULL
);

INSERT INTO SalleTable (libelle) VALUES
('Table1'),
('Table2'),
('Table3');

ALTER TABLE Commande ADD COLUMN idSalleTable INT,
ADD CONSTRAINT fk_commande_salle_table FOREIGN KEY (idSalleTable) REFERENCES SalleTable(idSalleTable);

UPDATE Commande SET idSalleTable = 1 WHERE idCommande = 1;
UPDATE Commande SET idSalleTable = 2 WHERE idCommande = 2;