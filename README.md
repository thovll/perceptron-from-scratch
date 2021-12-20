- main_classification_binaire.m

Permet d'effectuer une classification binaire pour des données contenant x et y pouvant être représenté dans un plan.

Trois parties :

1. Chargement des données d'entrainement puis apprentissage des poids du perceptron et affichage de la fonction de coût et de la convergence des poids.

2. Chargement des données de test puis calcul de la pression du réseau.

3. Affichage sur un plan 2D des valeurs des données de test ainsi que de la valeur du perceptron sur l'espace x y avec x,y appartenant à [-12, 12].



- main_classification_binaire_chiffres.m

Permet une classification entre deux chiffres différents (par défaut entre 0 et 1 mais fonctionne sur toutes les autres paires de chiffres).

1. Chargement et mise en forme des données d'entrainement.

2. Calcul des poids.

3. Chargement et mise en forme des données de test.

4. Test et précision.

5. Calcul de la matrice de confusion.



- load_data.m

Permet de charger et de mettre en forme les données d'entrainement et de test pour le programme main_classification_multiclasse_monocouche.m



- main_classification_multiclasse_monocouche.m

Permet une classification des chiffres de 0 à 9.

1. Calcul des poids du réseau.

2. Mise en forme d'un tableau contenant toutes les valeurs des poids.

3. Test de précision pour le chiffre 0.

3. Test de précision pour le chiffre 1.

4. Affichage des sorties du réseau pour chacun des chiffres (par défaut pour le chiffre 7 mais peut être utilisé sur n'importe quel chiffre).


- main_classification_multiclasse_1couhe_cachee.m

Non fonctionnel, problème de passage des équations aux matrices...
A faire.
