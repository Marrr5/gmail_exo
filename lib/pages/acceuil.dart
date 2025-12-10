import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gmail_exo/components/drawer.dart';

class PageAcceuil extends StatelessWidget {
  const PageAcceuil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ClassDrawer(),
    
      appBar: AppBar(
        titleSpacing: 0, //supprime l'espace par défaut avant le titre
        backgroundColor: Colors.white,
        elevation: 1, //ombre légère sous la barre d'application
        title: Container( //barre de recherche
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(25), //bordure arrondie
          ),
          child: const TextField( //champ de texte pour recevoir la saisie de l'utilisateur
            decoration: InputDecoration(
              hintText: "Rechercher...", //texte d'indication en fond de la barre de recherche
              border: InputBorder.none, //supprime la bordure par défaut du champ de texte
              prefixIcon: Icon(Icons.search), //icône de recherche au début du champ
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle, color: Colors.black87), //icône de profil utilisateur
            onPressed: () {},
          ),
        ],
      ),

      //Contenu principal (un seul message)
      body: ListView(     //permet de créer une liste déroulante pour parcourir la boite de réception
        children: [

          ListTile( // un message
            leading: const CircleAvatar(child: Text("A")), //bulle avec la première lettre du nom de l'expéditeur
            title: const Text("Alice"),
            subtitle: const Text("Salut, voici le message…"),
            trailing: const Text("12:30"),
            onTap: () {},
          ),

          ListTile( // un message
            leading: const CircleAvatar(backgroundColor: Color.fromARGB(206, 176, 255, 157), child: Text("E", style: TextStyle(color: Color.fromARGB(255, 24, 56, 32)),)), //bulle avec la première lettre du nom de l'expéditeur
            title: const Text("ESMT"),
            subtitle: const Text("Marie-Ange, voici le message…"),
            trailing: const Text("10:05"),
            onTap: () {},
          ),
        ],
      ),

      //Bouton flottant 
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.edit),
      ),
    );
  }
}
