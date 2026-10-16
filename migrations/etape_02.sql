CREATE TABLE Categorie(
    idCategorie INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    libelle VARCHAR(50) NOT NULL
);

INSERT INTO Categorie(libelle) VALUES 
('Plat Malagasy'),
('Plat chinois'),
('Soupe'),
('Dessert et goûter'),
('Boisson'),
('Autres');

ALTER TABLE Plat ADD COLUMN idCategorie INT,
ADD CONSTRAINT fk_plat_categorie FOREIGN KEY (idCategorie) REFERENCES Categorie(idCategorie);

UPDATE Plat SET idCategorie = 1 WHERE idPlat = 1;
UPDATE Plat SET idCategorie = 1 WHERE idPlat = 2;
UPDATE Plat SET idCategorie = 1 WHERE idPlat = 3;
UPDATE Plat SET idCategorie = 2 WHERE idPlat = 4;
UPDATE Plat SET idCategorie = 3 WHERE idPlat = 5;
UPDATE Plat SET idCategorie = 4 WHERE idPlat = 6;
UPDATE Plat SET idCategorie = 5 WHERE idPlat = 7;