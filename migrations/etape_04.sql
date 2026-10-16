CREATE TABLE Client(
    idClient INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    numero VARCHAR(255) NOT NULL
);

INSERT INTO Client(nom, prenom, numero) VALUES 
('RABELAZA', 'Aldine', '1234567890'),
('ANDRIAMANDRANTO', 'Aina', '0987654321');

ALTER TABLE Commande ADD COLUMN idClient INT,
ADD CONSTRAINT fk_commande_client FOREIGN KEY (idClient) REFERENCES Client(idClient);

UPDATE Commande SET idClient = 1 WHERE idCommande = 1;
UPDATE Commande SET idClient = 2 WHERE idCommande = 2;