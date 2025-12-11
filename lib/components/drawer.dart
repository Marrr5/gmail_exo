import 'package:flutter/material.dart';

class ClassDrawer extends StatelessWidget{
  const ClassDrawer ({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,// enlève tous les arrondis
        ),
        child: ListView(
        
          children: [
            SizedBox(
              height: 80,
              child: Container( // c'est l'entête du menu de navigation
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 243, 243, 243),
                  border: Border(
                  top: BorderSide(color: Color.fromARGB(255, 243, 243, 243), width: 0.8),
                  bottom: BorderSide(color: Color.fromARGB(255, 243, 243, 243), width: 0.8),
                  
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/logo.png" , width: 25, height: 25,), //logo du menu
                      Text('  Gmail', 
                                  style: TextStyle(color: const Color.fromARGB(255, 219, 9, 9),fontWeight: FontWeight.w500, fontSize: 24)
                                  ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Color.fromARGB(255, 46, 45, 45), width: 0.8),
                    bottom: BorderSide(color: Color.fromARGB(255, 15, 15, 15), width: 0.8),
                  ),
                ),
                child: ListTile(
                  tileColor: Color.fromARGB(255, 243, 243, 243),
                  title: const Text(
                    'Toutes les boîtes',
                    style: TextStyle(color: Color.fromARGB(255, 50, 56, 51)),
                  ),
                  leading: const Icon(Icons.all_inbox),
                  trailing: const Text("22"),
                  onTap: () {
                    Navigator.pushNamed(context, "/acceuil");
                  },
                ),
              ),
            ),
              
            ListTile(
              tileColor: const Color.fromARGB(255, 243, 243, 243),
              title: const Text('Principale', style: TextStyle(color:  Color.fromARGB(255, 50, 56, 51),),),
              leading: const Icon(Icons.inbox), //icone à gauche de l'élément
              onTap: () {
                //Navigator.pushNamed(context, "/profil");
              },
            ),

            ListTile(
              tileColor: const Color.fromARGB(255, 243, 243, 243),
              title: const Text('Promotion', style: TextStyle(color:  Color.fromARGB(255, 50, 56, 51)),),
              leading: const Icon(Icons.local_offer_outlined), //icone à gauche de l'élément
              onTap: () {
                //Navigator.pushNamed(context, "/profil");
              },
            ),

            ListTile(
              tileColor: const Color.fromARGB(255, 243, 243, 243),
              title: const Text('Réseaux Sociaux', style: TextStyle(color:  Color.fromARGB(255, 50, 56, 51)),),
              leading: const Icon(Icons.group), //icone à gauche de l'élément
              trailing: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 239, 80, 205),
                  borderRadius: BorderRadius.circular(12), // pour ovale / ronde
                  ),
                child: Text("99+", style: TextStyle(color: Colors.white, fontSize: 12),),  
              ),
              onTap: () {
                //Navigator.pushNamed(context, "/profil");
              },
            ),

            ListTile(
              tileColor: const Color.fromARGB(255, 243, 243, 243),
              title: const Text('Notifications', style: TextStyle(color:  Color.fromARGB(255, 50, 56, 51)),),
              leading: const Icon(Icons.info_outline_rounded), //icone à gauche de l'élément
              trailing: const Text("10"),
              onTap: () {
                //Navigator.pushNamed(context, "/profil");
              },
            ),
            
            SizedBox(
              height: 20,
              child: Container(
                padding: const EdgeInsets.only(left: 18),
                child: Text("Tous les libellés",style: TextStyle(fontSize: 12, color: const Color.fromARGB(255, 82, 91, 95)) )),
            ), //espace entre les éléments
            
            ListTile(
              tileColor: const Color.fromARGB(255, 243, 243, 243),
              title: const Text('Notifications', style: TextStyle(color:  Color.fromARGB(255, 50, 56, 51)),),
              leading: const Icon(Icons.star_border_outlined), //icone à gauche de l'élément
              onTap: () {
                //Navigator.pushNamed(context, "/profil");
              },
            ),

            ListTile(
              tileColor: const Color.fromARGB(255, 243, 243, 243),
              title: const Text('En attente', style: TextStyle(color:  Color.fromARGB(255, 50, 56, 51)),),
              leading: const Icon(Icons.access_time), //icone à gauche de l'élément
              onTap: () {
                //Navigator.pushNamed(context, "/profil");
              },
            ),

            ListTile(
              tileColor: const Color.fromARGB(255, 243, 243, 243),
              title: const Text('Important', style: TextStyle(color:  Color.fromARGB(255, 50, 56, 51)),),
              leading: const Icon(Icons.label_important_outline), //icone à gauche de l'élément
              trailing: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 146, 148, 255),
                  borderRadius: BorderRadius.circular(12), // pour ovale / ronde
                  ),
                child: Text("99+", style: TextStyle(color: Colors.white, fontSize: 12),),  
              ),
              onTap: () {
                //Navigator.pushNamed(context, "/profil");
              },
            ),

            ListTile(
              tileColor: const Color.fromARGB(255, 243, 243, 243),
              title: const Text('Achat', style: TextStyle(color:  Color.fromARGB(255, 50, 56, 51)),),
              leading: const Icon(Icons.local_mall_outlined), //icone à gauche de l'élément
              onTap: () {
                //Navigator.pushNamed(context, "/profil");
              },
            ),

            ListTile(
              tileColor: const Color.fromARGB(255, 243, 243, 243),
              title: const Text('Envoyé', style: TextStyle(color:  Color.fromARGB(255, 50, 56, 51)),),
              leading: const Icon(Icons.send), //icone à gauche de l'élément
              trailing: const Text("3"),
              onTap: () {
                //Navigator.pushNamed(context, "/profil");
              },
            ),
            ListTile(
              tileColor: const Color.fromARGB(255, 243, 243, 243),
              title: const Text('Planifié', style: TextStyle(color:  Color.fromARGB(255, 50, 56, 51)),),
              leading: const Icon(Icons.send_and_archive_outlined), //icone à gauche de l'élément
              onTap: () {
                //Navigator.pushNamed(context, "/profil");
              },
            ),

            ListTile(
              tileColor: const Color.fromARGB(255, 243, 243, 243),
              title: const Text('Boîte d\'envoi', style: TextStyle(color:  Color.fromARGB(255, 50, 56, 51)),),
              leading: const Icon(Icons.outbox), //icone à gauche de l'élément
              onTap: () {
                //Navigator.pushNamed(context, "/profil");
              },
            ),

            ListTile(
              tileColor: const Color.fromARGB(255, 243, 243, 243),
              title: const Text('Brouillon', style: TextStyle(color:  Color.fromARGB(255, 50, 56, 51)),),
              leading: const Icon(Icons.description_outlined), //icone à gauche de l'élément
              onTap: () {
                //Navigator.pushNamed(context, "/profil");
              },
            ),

            ListTile(
              tileColor: const Color.fromARGB(255, 243, 243, 243),
              title: const Text('Tous les messages', style: TextStyle(color:  Color.fromARGB(255, 50, 56, 51)),),
              leading: const Icon(Icons.mail_outline_rounded), //icone à gauche de l'élément
              trailing: const Text("150"),
              onTap: () {
                //Navigator.pushNamed(context, "/profil");
              },
            ),

            ListTile(
              tileColor: const Color.fromARGB(255, 243, 243, 243),
              title: const Text('Spam', style: TextStyle(color:  Color.fromARGB(255, 50, 56, 51)),),
              leading: const Icon(Icons.report_outlined), //icone à gauche de l'élément
              onTap: () {
                //Navigator.pushNamed(context, "/profil");
              },
            ),

            ListTile(
              tileColor: const Color.fromARGB(255, 243, 243, 243),
              title: const Text('Corbeille', style: TextStyle(color:  Color.fromARGB(255, 50, 56, 51)),),
              leading: const Icon(Icons.delete), //icone à gauche de l'élément
              onTap: () {
                //Navigator.pushNamed(context, "/profil");
              },
            ),

            ListTile(
              tileColor: const Color.fromARGB(255, 243, 243, 243),
              title: const Text('Gérer les abonements', style: TextStyle(color:  Color.fromARGB(255, 50, 56, 51)),),
              leading: const Icon(Icons.mark_email_unread_outlined), //icone à gauche de l'élément
              trailing: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 224, 0, 0),
                  borderRadius: BorderRadius.circular(12), // pour ovale / ronde
                  ),
                child: Text("Nouveau", style: TextStyle(color: Colors.white, fontSize: 12),),  
              ),
              onTap: () {
                //Navigator.pushNamed(context, "/profil");
              },
            ),

            SizedBox(
              height: 20,
              child: Container(
                padding: const EdgeInsets.only(left: 18),
                child: Text("Applications Google",style: TextStyle(fontSize: 12, color: const Color.fromARGB(255, 82, 91, 95),)),
                ),
            ), //espace entre les éléments

            ListTile(
              tileColor: const Color.fromARGB(255, 243, 243, 243),
              title: const Text('Agenda', style: TextStyle(color:  Color.fromARGB(255, 50, 56, 51)),),
              leading: const Icon(Icons.calendar_month_outlined), //icone à gauche de l'élément
              onTap: () {
                //Navigator.pushNamed(context, "/profil");
              },
            ),

            SizedBox(
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Color.fromARGB(255, 15, 15, 15), width: 0.8),
                  ),
                ),
                child: ListTile(
                  tileColor: Color.fromARGB(255, 243, 243, 243),
                  title: const Text(
                    'Contacts',
                    style: TextStyle(color: Color.fromARGB(255, 50, 56, 51)),
                  ),
                  leading: const Icon(Icons.account_circle_outlined),
                  onTap: () {
                    Navigator.pushNamed(context, "/acceuil");
                  },
                ),
              ),
            ),

            ListTile(
              tileColor: const Color.fromARGB(255, 243, 243, 243),
              title: const Text('Paramètres', style: TextStyle(color:  Color.fromARGB(255, 50, 56, 51)),),
              leading: const Icon(Icons.settings), //icone à gauche de l'élément
              onTap: () {
                //Navigator.pushNamed(context, "/profil");
              },
            ),

            ListTile(
              tileColor: const Color.fromARGB(255, 243, 243, 243),
              title: const Text('Aides et commentaires', style: TextStyle(color:  Color.fromARGB(255, 50, 56, 51)),),
              leading: const Icon(Icons.help_outlined), //icone à gauche de l'élément
              onTap: () {
                //Navigator.pushNamed(context, "/profil");
              },
            ),

          ],
        ),
      );
  }

}