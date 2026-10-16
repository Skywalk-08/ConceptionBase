-- Étape 1: Liste des plats triés par prix décroissant
SELECT * FROM plat ORDER BY prix DESC;

-- Étape 2 : Rangement des plats par catégories, na de misy tsisy plat le categorie
SELECT c.libelle, COUNT(p.idPlat) FROM categorie AS c
LEFT JOIN plat AS p ON c.idCategorie = p.idCategorie
GROUP BY c.libelle;

-- Étape 3 : Montant total de chaque commande
SELECT c.idCommande, SUM(p.prix * dc.quantite) as total FROM Commande as c
JOIN DetailsCommande as dc ON c.idCommande = dc.idCommande
JOIN Plat as p ON dc.idPlat = p.idPlat
GROUP BY c.idCommande;

-- Étape 4 : Liste des commandes avec le nom du client , "client de passage" raha tsy misy client
SELECT c.idCommande, COALESCE(cl.nom, 'Client de passage') as client FROM Commande as c
LEFT JOIN Client as cl ON c.idClient = cl.idClient;

-- Étape 5 : Serveur et table pour chaque commande, "à emporté" si pas de table
SELECT c.idCommande, s.nom as serveur, COALESCE(st.libelle, 'À emporter') as nomtable FROM Commande as c
LEFT JOIN Serveur as s ON c.idServeur = s.idServeur
LEFT JOIN SalleTable as st ON c.idSalleTable = st.idSalleTable; 