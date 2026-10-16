CREATE TABLE Plat(
    idPlat INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    libelle VARCHAR(50) NOT NULL,
    prix INT NOT NULL
);

INSERT INTO Plat(libelle, prix) VALUES 
('Romazava', 7000),
('Ravitoto sy Henakisoa', 8000),
('Akoho sy voanio', 8500),
('Mi sao', 6000),
('Soupe chinoise', 5000),
('Mofo gasy (les 4)', 1000),
('Ranon''ampango', 500);