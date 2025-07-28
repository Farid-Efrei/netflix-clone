# 🎬 Netflix Clone - Angular

<div align="center">
  <img src="src/assets/logo/netflix.jpg" alt="Netflix Clone Logo" width="200"/>
  
  [![Angular](https://img.shields.io/badge/Angular-19.2.7-red.svg)](https://angular.io/)
  [![TypeScript](https://img.shields.io/badge/TypeScript-5.0+-blue.svg)](https://www.typescriptlang.org/)
  [![Bootstrap](https://img.shields.io/badge/Bootstrap-5.3+-purple.svg)](https://getbootstrap.com/)
  [![TMDB API](https://img.shields.io/badge/TMDB-API-green.svg)](https://www.themoviedb.org/)
  
  *Une reproduction fidèle de l'interface Netflix, développée avec passion* 🎭
</div>

---

## 📖 À Propos du Projet

Bienvenue dans **Netflix Clone**, une application web moderne qui reproduit l'expérience utilisateur de Netflix. Ce projet combine ma passion pour le cinéma 🎬 et mon amour pour le développement web, créant une plateforme élégante pour explorer l'univers du 7ème art.

### ✨ Fonctionnalités Principales

- **🏠 Page d'Accueil Dynamique** : Interface immersive avec films tendances et catégories par genres
- **🔍 Recherche Intelligente** : Système de recherche en temps réel avec suggestions automatiques
- **📱 Design Responsive** : Expérience optimisée sur desktop, tablette et mobile
- **🎨 Thème Cyborg** : Interface sombre élégante avec le thème Bootswatch Cyborg
- **🌍 Multi-langue** : Support français avec fallback anglais pour les contenus indisponibles
- **📺 Détails de Films** : Pages détaillées avec synopsis, notes, dates de sortie
- **🎯 Navigation Fluide** : Routage Angular avec gestion d'état avancée

### 🎭 L'Expérience Cinématographique

En tant qu'étudiant passionné de cinéma, j'ai voulu créer plus qu'une simple copie - une véritable célébration du 7ème art. Chaque composant a été pensé pour offrir une expérience immersive, de la navigation fluide aux détails visuels soignés.

---

## 🛠️ Stack Technique

### Frontend
- **Angular 19.2.7** - Framework principal avec les dernières fonctionnalités
- **TypeScript 5.0+** - Typage statique pour un code robuste
- **RxJS** - Programmation réactive avec Signals et Observables
- **Bootstrap 5.3** - Framework CSS pour le design responsive
- **Bootswatch Cyborg** - Thème sombre élégant
- **Font Awesome** - Iconographie moderne

### API & Services
- **TMDB API** - Base de données complète de films et séries
- **Angular HTTP Client** - Gestion des appels API
- **State Management** - Architecture custom avec Signals Angular

### Outils de Développement
- **Angular CLI 19.2.7** - Outils de développement et build
- **SCSS** - Préprocesseur CSS avancé
- **VS Code** - Environnement de développement optimisé

---

## 🚀 Installation et Lancement

### Prérequis
```bash
Node.js >= 18.19.0
npm >= 10.2.0
Angular CLI >= 19.2.7
```

### 🔧 Installation

1. **Clonez le repository**
```bash
git clone https://github.com/FairyTale-Dev/netflix-clone.git
cd netflix-clone
```

2. **Installez les dépendances**
```bash
npm install
```

3. **Configuration de l'API TMDB**
   - Créez un compte sur [TMDB](https://www.themoviedb.org/)
   - Obtenez votre clé API
   - Ajoutez votre clé dans `src/environments/environment.ts`

```typescript
export const environment = {
  production: false,
  tmdbApiKey: 'VOTRE_CLE_API_TMDB',
  tmdbBaseUrl: 'https://api.themoviedb.org/3'
};
```

### 🎬 Lancement de l'Application

**Serveur de développement**
```bash
ng serve
```
➡️ Ouvrez [http://localhost:4200](http://localhost:4200) dans votre navigateur

**Build de production**
```bash
ng build --prod
```

**Tests unitaires**
```bash
ng test
```

---

## 📁 Architecture du Projet

```
src/
├── app/
│   ├── home/                    # Page d'accueil
│   │   ├── main-content/        # Contenu principal
│   │   ├── movie-selector/      # Sélecteur de films
│   │   │   └── movie-list/      # Liste des films
│   │   │       └── movie-card/  # Cartes de films
│   │   └── more-infos/          # Détails des films
│   ├── navbar/                  # Barre de navigation
│   ├── search/                  # Fonctionnalité de recherche
│   └── service/                 # Services et modèles
│       ├── model/               # Interfaces TypeScript
│       └── tmdb.service.ts      # Service API TMDB
├── assets/                      # Ressources statiques
└── environments/                # Configuration d'environnement
```

---

## 🎨 Fonctionnalités Détaillées

### 🏠 Page d'Accueil
- **Films Tendances** : Carrousel des films populaires du moment
- **Catégories par Genre** : Navigation par Action, Aventure, Animation, etc.
- **Interface Immersive** : Design Netflix-like avec animations fluides

### 🔍 Recherche Avancée
- **Recherche en Temps Réel** : Résultats instantanés dès 2 caractères
- **Navigation Intelligente** : Retour automatique à l'accueil si recherche vide
- **Gestion d'État** : Utilisation des query params pour la navigation

### 📱 Design Responsive
- **Mobile First** : Interface optimisée pour tous les écrans
- **Thème Cyborg** : Design sombre élégant et moderne
- **Animations CSS** : Transitions fluides et professionnelles

---

## 🌟 Notes de l'Auteur

*Salut ! Je suis **FairyTale-Dev**, un étudiant rêveur et passionné de cinéma* 🎭

Ce projet est né de ma fascination pour l'univers du cinéma et ma passion pour le développement web. En tant qu'étudiant, j'ai voulu créer quelque chose qui combine mes deux amours : la technologie et le 7ème art.

Chaque ligne de code a été écrite avec soin, chaque composant pensé pour offrir la meilleure expérience possible. Mon objectif était de créer plus qu'une simple copie de Netflix - une véritable célébration du cinéma dans le monde numérique.

### 🎯 Objectifs du Projet
- **Apprentissage** : Maîtriser Angular 19 et ses dernières fonctionnalités
- **Passion** : Combiner amour du cinéma et développement web
- **Excellence** : Créer une application de qualité professionnelle
- **Innovation** : Explorer les nouvelles possibilités d'Angular Signals

### 🔮 Perspectives d'Évolution
- Ajout d'un système d'authentification
- Création de listes de favoris personnalisées
- Intégration de bandes-annonces vidéo
- Mode hors-ligne avec PWA
- Recommandations personnalisées

---

## 🤝 Contribution

Les contributions sont les bienvenues ! N'hésitez pas à :
- 🐛 Signaler des bugs
- 💡 Proposer de nouvelles fonctionnalités
- 🔧 Améliorer le code existant
- 📖 Enrichir la documentation

---

## 📞 Contact

**FairyTale-Dev** - Étudiant passionné de cinéma et développement web

[![GitHub](https://img.shields.io/badge/GitHub-FairyTale--Dev-black.svg)](https://github.com/FairyTale-Dev)

---

<div align="center">
  
*"Le cinéma, c'est l'écriture moderne dont l'encre est la lumière"* ✨

**Développé avec ❤️ par FairyTale-Dev**

</div>
