# K-HERO-ZEN

Un jeu d'arcade de type "endless runner" développé avec Godot Engine 4.4, où vous incarnez un héros volant qui doit survivre le plus longtemps possible en évitant les obstacles et en collectant du carburant.

## 🎮 Description du Jeu

**K-HERO-ZEN** est un jeu de survie en 2D où le joueur contrôle un personnage volant dans un environnement en défilement horizontal. L'objectif est de survivre le plus longtemps possible en évitant les obstacles tout en maintenant votre niveau de carburant.

### Fonctionnalités Principales

- **Mécaniques de Vol** : Contrôlez votre héros avec un système de physique réaliste
- **Système de Carburant** : Votre santé diminue constamment, collectez du carburant pour survivre
- **Obstacles Dynamiques** : Des obstacles apparaissent aléatoirement en haut et en bas de l'écran
- **Score en Temps Réel** : Votre score augmente automatiquement avec le temps de survie
- **Interface Utilisateur** : Barre de santé/carburant et affichage du score

## 🕹️ Comment Jouer

### Contrôles
- **Espace** ou **Clic Gauche** : Faire voler le héros vers le haut
- La gravité fait naturellement descendre le personnage

### Objectifs
1. **Survivez** : Évitez tous les obstacles qui apparaissent
2. **Collectez du Carburant** : Ramassez les objets de carburant pour maintenir votre santé
3. **Battez votre Record** : Tentez de survivre le plus longtemps possible

### Mécaniques de Jeu
- **Santé/Carburant** : Diminue constamment de 2 points par seconde
- **Carburant** : Chaque collecte restaure 5 points de santé (maximum 100)
- **Game Over** : Se déclenche quand la santé atteint 0 ou en cas de collision avec un obstacle

## 🛠️ Installation et Lancement

### Prérequis
- **Godot Engine 4.4** ou version supérieure
- Système d'exploitation : Windows, macOS, ou Linux

### Installation
1. Clonez ou téléchargez ce repository
2. Ouvrez Godot Engine
3. Importez le projet en sélectionnant le fichier `project.godot`
4. Lancez le jeu en appuyant sur F5 ou en cliquant sur "Play"

### Configuration d'Affichage
- **Résolution** : 1600x960 pixels
- **Mode d'Étirement** : Canvas Items
- **Rendu** : GL Compatibility

## 📁 Structure du Projet

```
K-HERO-ZEN/
├── assets/           # Ressources graphiques
│   ├── Background.png    # Arrière-plan du jeu
│   ├── jerican.png      # Sprite du carburant
│   ├── lyxavion.png     # Sprite du joueur
│   └── pic.png          # Sprite des obstacles
├── scenes/           # Scènes Godot
│   ├── fuel.tscn        # Scène de l'objet carburant
│   ├── game.tscn        # Scène principale du jeu
│   ├── menu.tscn        # Menu principal
│   └── obstacle.tscn    # Scène des obstacles
├── scripts/          # Scripts GDScript
│   ├── game.gd          # Logique principale du jeu
│   ├── game_over.gd     # Gestion de l'écran de game over
│   ├── menu.gd          # Logique du menu
│   ├── player.gd        # Contrôles du joueur
│   └── scrolling.gd     # Gestion du défilement
├── icon.svg         # Icône du projet
├── project.godot    # Configuration du projet Godot
└── README.md        # Ce fichier
```

## 🎯 Fonctionnalités Techniques

### Système de Génération Procédurale
- Les obstacles apparaissent aléatoirement en positions haute ou basse
- Le carburant est positionné stratégiquement pour éviter les conflits avec les obstacles
- Vitesse de défilement constante à 700 pixels/seconde

### Gestion des Collisions
- Détection de collision pour les obstacles (Game Over)
- Détection de collision pour le carburant (Récupération de santé)
- Système de groupes pour identifier les différents types d'objets

### Interface Utilisateur
- Barre de progression pour la santé/carburant
- Affichage du score en temps réel avec formatage décimal
- Écran de Game Over avec option de redémarrage

## 🚀 Développement Futur

### Améliorations Possibles
- Système de power-ups
- Différents types d'obstacles
- Niveaux de difficulté croissante
- Sauvegarde des meilleurs scores
- Effets sonores et musique
- Animations et effets visuels

## � Auteur

**Fairytale-Dev** - Étudiant idéaliste passionné de développement de jeux vidéo, d'applications et de choses plus ou moins utiles.

## �📝 Licence

Ce projet est distribué sous licence MIT. Voir le fichier `LICENSE` pour plus de détails.

## 👨‍💻 Développement

Développé avec **Godot Engine 4.4** en utilisant le langage **GDScript**.

### Compatibilité
- Godot Engine 4.4+
- GL Compatibility rendering
- Support multi-plateforme (Windows, macOS, Linux)

---

**Amusez-vous bien avec K-HERO-ZEN !** 🎮✨
