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

### Spécifications v5 :x:

L'entrepreneuse et toi faites un excellent combo. Ta capacité à livrer une application au top fait qu'elle pense à toi pour toute amélioration. Il se trouve qu'elle a un gros chantier à te proposer. Voici ce qu'elle te dit :

Merci pour tout ! Quand on y pense, la liste des objets n'est pas ultra pratique à lire : il y a trop d'informations. J'aurais besoin de changer quelques éléments et je pense que le mieux est d'avoir une fonctionnalité qui affiche une liste qui n'affiche pas les détails des objets. **Je peux sélectionner un objet de la liste pour afficher les détails**.

Je voudrais que la liste de mon inventaire n'affiche que le nom des objets. À partir de cette liste, je veux pouvoir choisir un des objets pour afficher les détails en le sélectionnant (en rentrant un chiffre ou une lettre dans l'application, par exemple).

Quand je suis sur la vue qui affiche les détails d'un de mes objets précis (prix, quantité, marque), je peux revenir à la liste des objets.

### Spécifications v6 :x:

Tu reçois un email de l'entrepreneuse qui demande ceci :

Hello !

Ta fonctionnalité pour voir les items est parfaite. Je viens de recevoir un stock d'items et j'aimerais pouvoir **créer un item**. Est-ce possible de créer un item ?

En gros, quand je suis à l'écran de base, on va ajouter la possibilité de créer un item. Donc si je résume, à l'écran de base, on me proposera soit de voir la liste des objets, soit de créer un objet, soit de sortir du programme.

Pour la création, le programme me demandera le nom de l'objet, son prix, sa quantité en stock et sa marque.
Une fois que l'objet est créé, le programme doit afficher la vue de l'objet concerné.

### Spécifications v7 :x:

There's one more feature.

Suite à un rdv avec l'entrepreneuse, elle te dit qu'elle a réussi à mettre un prix qui est négatif à la création d'un objet elle te demande donc :

Est-ce que tu peux faire en sorte que le programme retourne un message à l'utilisateur quand ce dernier rentre des paramètres un peu chelous dans l'application ? Genre un nom d'objet qui fait 10000 caractères ou un prix négatif ?

### Spécifications v8 :x:

L'entrepreneuse t'appelle en urgence pour te demander une fonctionnalité supplémentaire :

Catastrophe ! J'ai mal rentré un objet dans l'inventaire. Il faudrait pouvoir modifier un objet une fois ce dernier créé. À partir de la vue qui affiche les détails d'un objet, il faut laisser à l'utilisateur la possibilité de modifier un objet. Le programme va proposer en plus la possibilité de modifier un objet.

### Spécifications v9 :x:

Vous discutez des fonctionnalités intéressantes à apporter à l'application et l'entrepreneuse te fait part d'un point de douleur :

Actuellement, je n'arrive pas à supprimer un de mes objets en base. Du coup je galère quand c'est le cas.

Ni une ni deux, force de proposition que tu es, tu lui proposes une fonctionnalité de destroy des objets :

à partir de l'écran qui affiche les détails d'un objet, il y a une possibilité supplémentaire dans la liste où je peux détruire l'objet concerné
le programme va demander une simple confirmation avant de le faire
la destruction de l'objet va le supprimer du fichier CSV
une fois l'objet supprimé, le programme te redirigera sur l'écran d'accueil

## Jour 2 / 3

### Spécifications v10

## Jour 3 / 3
