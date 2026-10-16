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
