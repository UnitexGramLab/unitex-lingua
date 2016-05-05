**************************************************************
*	Auteur : N. DOUMI
*	e-mail : ndoumi2006@gmail.com, noureddine.doumi@univ-saida.dz
*	dernière mise à jour :	10/10/2014
**************************************************************

Comment sont produits les graphes de flexion ?

Les dictionnaires des formes simples des catégories grammaticales verbe, nom commun et adjectif sont produits en appliquant les graphes flexionnels sur les lemmes de DELAS, les graphes représentent les paradigmes flexionnels des catégories précédentes. Ces paradigmes sont nombreux dans l'arabe et sont en fonction par exemple de la morphologie des verbes, de leurs longueurs et de leurs défectuosités.

D’où l'idée de générer les graphes flexionnels d'une façon semi automatique et ainsi un utilisateur d'Unitex peut compiler ses propres dictionnaires en utilisant le système de génération des graphes.

Ce système fonctionne d'une façon semi automatique, il a besoin par exemple dans le cas des verbes de 5 formes : l'accompli actif, l'inaccompli actif, l'impératif, l'accompli passif et l'inaccompli passif. à partir de ces 5 formes il génère un graphe qui produit 264 formes fléchies du verbe.

Les commentaires des lecteurs sont les bienvenus dans les emails indiqués ci-dessus.

N.B: Le jeu d'étiquettes avec les codes des catégories syntaxiques et les codes des information flexionnelles sont cités dans le fichier tagset.pdf du même répertoire.

Des statistiques sur le contenu des dictionnaires

1- Verbes

Lemmes							16855 entrées (soit une couverture de plus de 70% des verbes arabes)
Formes fléchies voyellées		4447056 entrées
Formes fléchies non voyellées	6633299 entrées

2- Nom et adjectif

Lemmes							1780 entrées
Formes fléchies voyellées		86553 entrées
Formes fléchies non voyellées	107415 entrées

3- Adverbes

Formes voyellées				86 entrées
Formes non voyellées			95 entrées

4- Pronoms

Formes voyellées				181 entrées
Formes non voyellées			198 entrées

5- Particules

Formes voyellées				164 entrées
Formes non voyellées			205 entrées

6- Prénoms						8353 entrées
7- Pays 						802 entrées
8- Villes						7977 entrées

Total des entrées 				11292384 entrées

Le contenu des dictionaires électroniques détaillé dans les statistiques ci-dessus est distribué avec Unitex depuis 2011 et organisé dans le reprtoire dela du module arabe sous les noms de fichiers suivants : DELAF_V, DELAF_V-d, DELAF_N, DELAF_N-d, 5noms, 5noms-d, Adv, Adv-d, particules, particules-d, pronoms, pronmos-d, prenoms, ville et pays. 
Ces fichiers peuvent être en format bin ou inf.

Références
1- Noureddine Doumi, Ahmed Lehireche, Denis Maurel, Ahmed Abdelali,"A Semi-Automatic and Low Cost Approach to Build Scalable Lemma-based Lexical Resources for Arabic Verbs", International Journal of Information Technology and Computer Science(IJITCS), Vol.8, No.2, pp.1-13, 2016. DOI: 10.5815/ijitcs.2016.02.01
http://www.mecs-press.org/ijitcs/ijitcs-v8-n2/IJITCS-V8-N2-1.pdf

2- Doumi, N., Lehireche, A., Maurel, D., & Ali Cherif, M. (2013). La conception d'un jeu de ressources libres pour le TAL arabe sous Unitex. Paper presented at the TRADETAL2013, 6ème Colloque international en Traductologie et TAL, Oran - Algeria, 5-6 may 2013
https://www.researchgate.net/publication/259894480_Conception_d%27un_jeu_de_ressources_libres_pour_le_TAL_arabe_sous_Unitex