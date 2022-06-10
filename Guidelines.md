# Projet POO validant - THP - Développeur(++) - Hiver 2022

## Jour 1 / 3

### Spécifications v0 :heavy_check_mark:

Je souhaite faire une application où je recense l'inventaire de mon magasin. L'application serait en CLI, c'est-à-dire que tout va s'exécuter depuis mon terminal. Quand je lance l'application, cette dernière va me demander si je veux accéder à la liste des item ou bien quitter l'application.

Si je choisis de quitter l'application, cela quitte le programme.

Si je choisis d'afficher les items, le programme va afficher tous les items sans ordre particulier. Voici la liste des objets de ma boutique. À partir de cette liste, je peux revenir en arrière à l'écran d'accueil.

Si la mission se passe bien, je vais te garder pour améliorer le programme, j'ai plein d'idées !

### Spécifications v2 :heavy_check_mark:

L'entrepreneuse a adoré ton programme. Elle te recontacte une semaine plus tard en te disant :

Bonne nouvelle, j'ai pu travailler sur mon inventaire. J'ai répertorié le prix des objets de mon inventaire.

J'aimerais donc que tu affiches aussi le prix quand tu affiches la liste des objets.

### Sépcifications v3 :heavy_check_mark:

L'entrepreneuse trouve ton programme au top du game. Elle te recontacte une semaine plus tard en te disant :

Excellente nouvelle, j'ai maintenant répertorié aussi la quantité de mes stocks. Est-ce que tu pourrais aussi ajouter la quantité des stocks quand tu affiches la liste des objets ? Voici notre inventaire actualisé.

### Spécifications v4 :heavy_check_mark:

L'entrepreneuse trouve ton programme vraiment génial. Elle te recontacte une semaine plus tard en te disant :

J'ai une super nouvelle ! J'ai maintenant répertorié aussi la marque des objets de mon inventaire. Est-ce que tu pourrais aussi **ajouter la marque** quand tu affiches la liste des objets ? Voici notre inventaire actualisé.

### Spécifications v5 :heavy_check_mark:

L'entrepreneuse et toi faites un excellent combo. Ta capacité à livrer une application au top fait qu'elle pense à toi pour toute amélioration. Il se trouve qu'elle a un gros chantier à te proposer. Voici ce qu'elle te dit :

Merci pour tout ! Quand on y pense, la liste des objets n'est pas ultra pratique à lire : il y a trop d'informations. J'aurais besoin de changer quelques éléments et je pense que le mieux est d'avoir une fonctionnalité qui affiche une liste qui n'affiche pas les détails des objets. **Je peux sélectionner un objet de la liste pour afficher les détails**.

Je voudrais que la liste de mon inventaire n'affiche que le nom des objets. À partir de cette liste, je veux pouvoir choisir un des objets pour afficher les détails en le sélectionnant (en rentrant un chiffre ou une lettre dans l'application, par exemple).

Quand je suis sur la vue qui affiche les détails d'un de mes objets précis (prix, quantité, marque), je peux revenir à la liste des objets.

### Spécifications v6 :heavy_check_mark:

Tu reçois un email de l'entrepreneuse qui demande ceci :

Hello !

Ta fonctionnalité pour voir les items est parfaite. Je viens de recevoir un stock d'items et j'aimerais pouvoir **créer un item**. Est-ce possible de créer un item ?

En gros, quand je suis à l'écran de base, on va ajouter la possibilité de créer un item. Donc si je résume, à l'écran de base, on me proposera soit de voir la liste des objets, soit de créer un objet, soit de sortir du programme.

Pour la création, le programme me demandera le nom de l'objet, son prix, sa quantité en stock et sa marque.
Une fois que l'objet est créé, le programme doit afficher la vue de l'objet concerné.

### Spécifications v7 :heavy_check_mark:

There's one more feature.

Suite à un rdv avec l'entrepreneuse, elle te dit qu'elle a réussi à mettre un prix qui est négatif à la création d'un objet elle te demande donc :

Est-ce que tu peux faire en sorte que le programme retourne un message à l'utilisateur quand ce dernier rentre des paramètres un peu chelous dans l'application ? Genre un nom d'objet qui fait 10000 caractères ou un prix négatif ?

### Spécifications v8 :heavy_check_mark:

L'entrepreneuse t'appelle en urgence pour te demander une fonctionnalité supplémentaire :

Catastrophe ! J'ai mal rentré un objet dans l'inventaire. Il faudrait pouvoir modifier un objet une fois ce dernier créé. À partir de la vue qui affiche les détails d'un objet, il faut laisser à l'utilisateur la possibilité de modifier un objet. Le programme va proposer en plus la possibilité de modifier un objet.

### Spécifications v9 :heavy_check_mark:

Vous discutez des fonctionnalités intéressantes à apporter à l'application et l'entrepreneuse te fait part d'un point de douleur :

Actuellement, je n'arrive pas à supprimer un de mes objets en base. Du coup je galère quand c'est le cas.

Ni une ni deux, force de proposition que tu es, tu lui proposes une fonctionnalité de destroy des objets :

à partir de l'écran qui affiche les détails d'un objet, il y a une possibilité supplémentaire dans la liste où je peux détruire l'objet concerné
le programme va demander une simple confirmation avant de le faire
la destruction de l'objet va le supprimer du fichier CSV
une fois l'objet supprimé, le programme te redirigera sur l'écran d'accueil

## Jour 2 / 3

### Spécifications v10 :x:

Il faudrait proposer une interface pour les gens qui iront sur l'application pour qu'ils puissent voir la liste de nos produits. Le problème est que je n'ai pas envie qu'ils puissent voir les détails des produits, les modifier, ou les créer. Je pense que le mieux est de proposer une seconde interface : interface client qui sera différente de l'interface admin.

Quand je démarre l'application, l'écran d'accueil va me proposer soit de voir la liste des objets, soit de voir le dashboard admin, soit de quitter le programme

Si jamais je choisis de voir la liste des objets, le programme va juste afficher tous les objets de l'application, sans les détails (juste le name). Cette interface sera pratique pour que les gens puissent voir dans les grandes lignes ce que nous proposons. À partir de cette liste, le programme me proposera de revenir à l'écran d'accueil.

Si jamais je choisis de voir le dashboard admin, le programme va me demander un mot de passe pour me connecter (un truc hyper sécurisé du genre 1234 ou azerty fera amplement le taf). Si j'échoue, le programme me demandera de ressayer. Si je réussis, j'irai dans l'accueil de l'interface admin (la liste des objets avec les fonctionnalités relatives, que tu as déjà codée). Je peux quitter l'interface admin pour revenir à l'écran principal.

### Spécifications v11 :x:

Quand une personne accède à la liste des objets, il faudrait que cette dernière de base affiche les objets par ordre alphabétique.

### Spécifications v12 :x:

Quand une personne admin accède à la liste des objets, est-ce qu'on peut aussi avoir les objets dans l'ordre alphabétique de base ?

### Spécifications v13 :x:

Quand une personne va sur l'interface utilisateur, actuellement, nous lui affichons la liste des produits par ordre alphabétique. Juste le name

Les gens aimeraient pouvoir voir aussi les autres détails : prix, quantité, marque. Nous allons donc proposer aux gens de pouvoir les afficher.

Quand une personne va sur la liste des produits, elle peut en choisir un précis pour que l'application affiche les détails. À partir de cette vue, la personne pourra revenir à la liste des objets proposés.

### Spécifications v14 :x:

Quand on va sur l'interface d'un produit, le programme va proposer d'acheter un exemplaire du produit. La personne sur l'application peut choisir cette option.

L'option ira sur un écran de confirmation du genre :

<code>
Vous avez choisi d'acheter le produit "Ergonomic Copper Lamp" pour le prix de $86.99.

Confirmez-vous ce choix ? (y/n)
</code>

Une fois que la confirmation est faite, cela va créer un achat sur l'application. Cet achat va réduire de 1 la quantité de cet objet.

Bien entendu, il n'est pas possible d'acheter un objet en quantité 0.

Une fois l'objet acheté, l'application va envoyer un message de confirmation à la personne. Puis elle retournera sur la vue de l'objet concerné.

### Spécifications v15 :x:

Actuellement, nous ne pouvons acheter un seul objet. Ce serait bien de pouvoir acheter plusieurs objets d'un coup et de modifier le prix total. Quand on est sur la vue de l'objet, le programme propose d'acheter l'objet, et demandera combien d'objets il veut acheter.

Puis l'écran de confirmation ressemblera à quelque chose comme ça :

<code>
Vous avez choisi d'acheter une quantité de 3 du produit "Ergonomic Copper Lamp" au prix unitaire de $86.99.

Cela sera un total de $86.99 x 3 = $260.97

Confirmez-vous ce choix ? (y/n)  
</code>

Bien entendu, il n'est pas possible d'acheter plus d'objets que la quantité de l'objet. Par exemple, si tu as en stock 3 exemplaires de Synergistic Granite Hat, il sera impossible d'en acheter plus de 3. Le programme renverra un message d'erreur au moment du choix de la quantité.

Enfin, un achat d'objet mettra à jour la quantité de l'objet concerné.

### Spécifications v16 :x:

Actuellement, les gens accèdent à la liste des objets dans l'ordre alphabétique. Cependant, on a remarqué qu'ils aimeraient bien pouvoir trier les objets par prix, du plus bas au plus haut.

Quand une personne arrive sur l'écran de la liste des objets en stock (donnée dans l'ordre alphabétique), nous lui proposons actuellement d'avoir les détails d'un objet, ou de revenir en arrière.

Il faudrait pouvoir lui proposer d'avoir **la liste des objets, hiérarchisée par prix, du plus bas au plus haut**.

Cette liste proposera ensuite les mêmes possibilités que la liste principale.

### Spécifications v17 :x:

On vient de voir une fonctionnalité où les gens peuvent hiérarchiser la **liste des objets dans l'ordre des prix, du plus bas au plus haut**.

On aimerait aussi avoir cette fonctionnalité **pour la partie admin** !

### Spécifications v18 :x:

Les gens adorent pouvoir classer les objets par prix montant. Est-ce que ce serait possible de faire la **même chose pour l'inverse : d’afficher la liste hiérarchisée du prix le plus haut au prix le plus bas ?**

On s'est renseignés auprès de **l'équipe admin et ils veulent bien aussi cette fonctionnalité** du côté du dashboard admin.

### Spécifications v20 :x:

Bonne nouvelle ! Nous venons de mettre en place la description des objets : on s'est rendus compte que cela permettra aux gens de savoir ce qu'ils vont acheter.

Voici la liste actualisée avec la description.

Il faudrait que l'application la prenne en compte. Voici nos specs :

Il faut que la description soit dans la vue qui affiche les détails d'un objet. Que ce soit du côté admin que du côté client
Quand un admin édite un objet, ce dernier pourra éditer aussi la description de l'objet
Quand un admin crée un objet, il devra aussi remplir la description. Si elle est vide, l'objet ne pourra pas être créé en base

### Spécifications v21 :x:

Il faut mettre les chaussures dans la base de données.

A priori il n'y a qu'à ajouter les chaussures dans la base de données et à nous la gloire. Le hic est qu'il y a un paramètre hyper important dans les chaussures qu'il n'y a pas dans les autres items : la taille (size) ! On est obligé de le prendre en compte, sinon les gens vont galérer.

Voici comment on va prendre ça en compte :

Bien entendu, l'application devra afficher les chaussures quand on lui demander d'afficher tous les objets de l'application (interface utilisateur et interface admin)
Il faut que la taille soit dans la vue qui affiche les détails d'un objet quand celui-ci est une chaussure. Que ce soit du côté admin que du côté client
Quand un admin édite un objet qui est une chaussure, ce dernier pourra éditer aussi la taille de la chaussure
Quand un admin crée un objet qui est une chaussure, il devra aussi remplir la taille. Si elle est vide, l'objet ne pourra pas être créé en base

### Spécifications v22 :x:

Sur l'écran qui liste les objets, il faudrait pouvoir donner aux personnes qui achètent la possibilité de n'afficher que les chaussures.

Parmi les propositions données par l'application (afficher les détails d'un objet précis, trier par prix montant, trier par prix descendant, retour à l'accueil), il faut que l'application propose de n'afficher que les chaussures.

Cet écran affichera les chaussures (par ordre alphabétique) et proposera soit de sélectionner une paire de chaussures pour voir le détail, soit de revenir à l'écran qui affiche tous les objets de la boutique sans distinction particulière.

### Spécifications v23 :x:

Une fonctionnalité demandée qui revient beaucoup dans les tests utilisateurs et la possibilité de hiérarchiser les chaussures par taille (montant et descendant) et par prix (montant et descendant).

Pourrais-tu développer cette fonctionnalité ?

En gros, quand une personne est sur l'écran qui n'affiche que les chaussures, l'application va lui proposer de hiérarchiser les chaussures par taille (montante ou descendante) ou par prix (montant ou descendant).

### Spécifications v24 :x:

Après le succès des chaussures, l'entreprise mère a décidé de se mettre dans un autre créneau : les affiches de cinéma. Tu te dis que ce n'est pas forcément ton choix de prédilection, mais tu leur fais confiance.

Votre inventaire est donc actualisé : voici le nouvel inventaire.

Il faudra donc les ajouter à la base de données. Voici les specs :

Un peu comme les chaussures, il faudra ajouter les posters dans l'application. Les posters ont une taille aussi (la taille du papier, allant de A0 à A2).

Voici comment on va prendre ça en compte :

Bien entendu, l'application devra afficher les posters quand on lui demander d'afficher tous les objets de l'application (interface utilisateur et interface admin)
Il faut que la taille soit dans la vue qui affiche les détails d'un objet quand celui-ci est un poster. Que ce soit du côté admin que du côté client
Quand un admin édite un objet qui est un poster, ce dernier pourra éditer aussi la taille du poster
Quand un admin crée un objet qui est un poster, il devra aussi remplir la taille. Si elle est vide, l'objet ne pourra pas être créé en base

### Spécifications v25 :x:

Sur l'écran qui liste les objets, il faudrait pouvoir donner aux personnes qui achètent la possibilité de n'afficher que les posters. Nous avons aussi fait des tests, et les gens voudraient aussi pouvoir trier les posters par prix (montant et descendant) et par taille (montant et descendant).

Actuellement, parmi les propositions données par l'application sur l'écran qui recense tous les objets (afficher les détails d'un objet précis, trier par prix montant, trier par prix descendant, affichage uniquement des chaussures, retour à l'accueil), il faut que l'application propose aussi de n'afficher que les posters.

Cet écran affichera les posters (par ordre alphabétique) et proposera soit de sélectionner un poster pour voir le détail, soit de hiérarchiser par prix, soit de hiérarchiser par taille, soit de revenir à l'écran qui affiche tous les objets de la boutique sans distinction particulière.

### Spécifications v26 :x:

Avec tout l'argent que vous vous êtes fait, vous faites appel à une équipe de Data Analystes (qui ont fait THP, les meilleurs) pour analyser votre base.

Leur résultat est sans appel : ils disent que la couleur est un aspect fondamental et qu'ils ont développé un algorithme en Machine Learning Deep qui a nettoyé votre base en y ajoutant la couleur.

L'équipe produit arrive et propose donc au prochain sprint :

[Voici notre base de données actualisée avec les couleurs](https://docs.google.com/spreadsheets/d/15o4gtsQzRG-npfXuxg3aOnKDjLexZjZJr832gyY2Rb0/edit#gid=0).

Il faudrait que l'application prenne en compte la notion de color. Voici nos specs :

Il faut que la couleur soit dans la vue qui affiche les détails d'un objet. Que ce soit du côté admin que du côté client
Quand un admin édite un objet, ce dernier pourra éditer aussi la couleur de l'objet
Quand un admin crée un objet, il devra aussi remplir la couleur. Si elle est vide, l'objet ne pourra pas être créé en base.

### Spécifications v27 :x:

Nous avons reçu un stock conséquent de disques durs externes qu'il faudra mettre dans l'application. [Voici le fichier qui les contient](https://docs.google.com/spreadsheets/d/10DrixQi1M-NIf5lFQ8G_TxNGIfnAnE0bGLgxyH7s_F8/edit#gid=0).

Comme on est confiants que ça va bien se vendre, on va tout implémenter d'un coup.

L'implémentation sera très similaire aux deux dernières, il y aura juste un élément important à prendre en compte : la capacité de stockage du disque dur externe (appelée storage dans le fichier). C'est un élément important.

Bien entendu, l'application devra afficher les disques durs externes quand on lui demander d'afficher tous les objets de l'application (interface utilisateur et interface admin)
Il faut que la taille et la capacité de stockage soient dans la vue qui affiche les détails d'un objet quand celui-ci est un disque dur externe. Que ce soit du côté admin que du côté client
Quand un admin édite un objet qui est un disque dur externe, ce dernier pourra éditer aussi la taille du disque dur externe ainsi que sa capacité de stockage
Quand un admin crée un objet qui est un disque dur externe, il devra aussi remplir la taille ainsi que la capacité de stockage. Si l'un des deux attributs est vide, l'objet ne pourra pas être créé en base
Sur l'écran qui liste les objets, il faudrait pouvoir donner aux personnes qui achètent la possibilité de n'afficher que les disques durs. Nous avons aussi fait des tests, et les gens voudraient aussi pouvoir trier les disques durs par prix (montant et descendant), par taille (montant et descendant) et par capacité (montant et descendant).

Actuellement, parmi les propositions données par l'application sur l'écran qui recense tous les objets (afficher les détails d'un objet précis, trier par prix montant, trier par prix descendant, affichage uniquement des chaussures, affichage uniquement des posters, retour à l'accueil), il faut que l'application propose aussi de n'afficher que les disques durs.

Cet écran affichera les disques durs (par ordre alphabétique) et proposera soit de sélectionner un disque dur pour voir le détail, soit de hiérarchiser par prix, soit de hiérarchiser par taille, soit de hiérarchiser par capacité, soit de revenir à l'écran qui affiche tous les objets de la boutique sans distinction particulière.

### Spécifications v28 :heavy_check_mark:

Actuellement quand une personne veut acheter un objet, si cet objet a 0 en quantité, ce n'est pas possible de l'acheter.

Ce qui serait bien, c'est, dans le cas où un objet n'a pas de stock, dans la vue de l'objet (pas besoin de le faire dans la liste), de le dire explicitement dans l'application. Par exemple un message du genre "Rupture de stock".

## Jour 3 / 3
