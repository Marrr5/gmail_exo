import 'package:flutter/material.dart';
import 'package:gmail_exo/pages/acceuil.dart';

void main() {
  runApp(const MonApplication());
}

class MonApplication extends StatelessWidget {
  const MonApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gmail', // C'est le titre de l'application en général. Il ne s'affiche pas.
      home: PageAcceuil(), // C'est la page index de l'application, c'est à dire la première page qui s'affiche quand on ouvre l'application
      routes: { //pour specifier toutes les pages qui sont contenues dans notre application
        "/acceuil": (context) => PageAcceuil(),
      },
      onUnknownRoute: (context) => MaterialPageRoute( //permet de gérer les routes inconnues
        builder: (context) => PageAcceuil(), //redirige vers la page d'acceuil si la route est inconnue
      ),
    );
  }
}
