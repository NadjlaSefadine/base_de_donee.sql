# base_de_donee.sql
# 🍽️ Restaurant ombre d'afrique
Ce projet est un système de gestion pour le restaurant ombre d'afrique.  
Il couvre la gestion du personnel, des plats, des ingrédients, des commandes, des réservations, des clients et des fournisseurs.

##  Description

Le système permet de :
- Gérer les plats et leurs ingrédients
- Gérer les commandes et les factures clients
- Suivre les réservations de tables
- Gérer le personnel et leur préparation des plats
- Gérer les fournisseurs pour les stocks d'ingrédients

## Schéma conceptuel

# Le modèle conceptuel de données (MCD) comprend les entités suivantes :
![Capture d’écran du 2025-07-05 14-00-09](https://github.com/user-attachments/assets/9fc3b425-20a0-49c0-8232-f8253e117189)

- Personnel
- Plat
- Ingrédient
-  Commande
- Client
- Table
- Réservation
- Facture
- Fournisseur
- 
 Avec des relations comme :
- Préparer (Personnel prépare Plat)
- Composer (Plat est composé d'Ingrédients)
- Contenir (Commande contient Plat)
- Réserver (Client réserve Table)
- Faire (Client fait Facture)
- Acheter (Fournisseur fournit Ingrédient)
  
# le modèle logique de données (MLD) comprend suivantes :

Client( – id_client, nom, téléphone, adresse, préférences )
Commande( – id_commande, date/heure, type, montant_total )
Plat(– id_plat , nom, description, prix_unitaire  )
Paiement(– id_paiement , mode, montant, date )
Facture( – id_facture , date, montant_HT, TTC, taxe  )
Fournisseur(– id_fournisseur , nom, contact, spécialité  )
Livraison(– id_livraison , date, adresse, quantités  )
réservation(- id_réservation,date,heure,client,table)
personnel(- id_personnel,-nom,prénom, téléphone, fonction, salaire


## ⚙️ Structure des tables

Chaque table contient des champs comme :
- `Personnel`: id_personnel, nom, prénom, téléphone, adresse, fonction, salaire
- `Plat`: id_plat, nom, description, type, prix, catégorie, préparation, code
- `Ingrédient`: id_ingrédient, nom, stock
- `Commande`: id_commande, date_heure, type, montant, responsable, statut
- `Client`: id_client, nom, téléphone, adresse, préférences
- `Table`: id_table, capacité, état
- `Réservation`: id_réservation, date, nom, heure, client, table
- `Facture`: id_facture, date_facture, id_paiement, mode_paiement, montant_HT, taxes, carte_bancaire, mobile_money, montant_TTC
- `Fournisseur`: id_fournisseur, nom, contact, spécialité, conditions_paiement

## Technologies recommandées

- SGBD : PostgreSQL / MySQL
- Drawo.io
- Frontend : HTML5, CSS3, JavaScript
##  Installation

1. Cloner le dépôt :
   git clone https://github.com/NadjlaSefadine/base_de_donee.sql
