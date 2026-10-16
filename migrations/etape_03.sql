CREATE TABLE Commande(
    idCommande INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    dateCommande DATE NOT NULL
);

CREATE TABLE DetailsCommande(
    idDetailCommande INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    idCommande INT,
    idPlat INT,
    quantite INT NOT NULL,
    CONSTRAINT fk_details_commande_commande FOREIGN KEY (idCommande) REFERENCES Commande(idCommande),
    CONSTRAINT fk_details_commande_plat FOREIGN KEY (idPlat) REFERENCES Plat(idPlat)
);

INSERT INTO Commande(dateCommande) VALUES 
('2024-06-01'),
('2024-06-02'),
('2024-06-03');

INSERT INTO DetailsCommande(idCommande, idPlat, quantite) VALUES 
(1, 1, 2),
(1, 3, 1),
(2, 2, 3),
(2, 5, 2),
(3, 4, 1),
(3, 6, 4);
