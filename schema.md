# Schema relationnel

Categorie(__idCategorie__, libellé)
Plat(__idPlat__, libellé, prix, #idCategorie)
Client(__idClient__, nom, prenom, numero)
Serveur(__idServeur__, nom, prenom)
SalleTable(__idSalleTable__, libellé)
Commande(__idCommande__, date, #idClient ?, #idServeur, #idSalleTable)
DetailsCommande(__idDetailCommande__, #idCommande, #idPlat, quantité)

* Etape1
    - prix en entier
    - idPlat en entier

* Etape 2 
    - Ajouter un champ catégorie Varchar dans la table __Plat__ n'est pas pratique 
    *Probleme* : si on veut insérer un nouveau plat alors categorie devient un champ à remplir et son écriture dans la table plat peut varier par exemple " Plat Malagasy, plat Malagasy, plat malagasy, PLAT MALAGASY ", s'il l'on veut repartir les plats par catégories, les plats de cette categorie ne seront pas considérer comme étant de la même catégorie par faute de syntaxe

* Etape 3 
    - Quantité de plats d'une commande dans la table __DetailsCommande__

* Etape 4 
    - #idClient dans __Commande__ n'est pas NOT NULL car le client veut seulement connaitre l'identité des habitués
    - Pour ne perdre aucune commande on utilise LEFT JOIN de Commande -> Client 

* Etape 5 
    - Une commande c'est la liste de plat pris par les clients d'une table
    - 'table' ne peut pas être un champ de table parce que en sql table designe une table 
