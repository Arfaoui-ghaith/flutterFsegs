import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'News',
        home: Scaffold( 
          drawer: Drawer(
                child: ListView(padding: EdgeInsets.zero, children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  backgroundImage: AssetImage('assets/fsegs.png'),
                  radius: 40.0,
                ),
              ),
               ListTile(
                title: const Text('Emploi de temps'),
                onTap: () {
                  Navigator.pushNamed(context, '/temps');
                },
              ),
              ListTile(
                title: const Text('Bulletin des notes et résultat'),
                onTap: () {
                  Navigator.pushNamed(context, '/notes');
                },
              ),
              ListTile(
                title: const Text('Avis de rattrapage'),
                onTap: () {
                  Navigator.pushNamed(context, '/rattrapage');
                },
              ),
              ListTile(
                title: const Text('Examens'),
                onTap: () {
                  Navigator.pushNamed(context, '/exams');
                },
              ),
              ListTile(
                title: const Text('News'),
                onTap: () {
                  Navigator.pushNamed(context, '/news');
                },
              ),
              ListTile(
                title: const Text('Edit profile'),
                onTap: () {
                  Navigator.pushNamed(context, '/editProfile');
                },
              ),
          ])),
          appBar: AppBar(title: const Center(child: Text("Fsegs App"))),
          body: Container(
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.green,
              ]
            )),
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 30.0),
                child: Container(
                  height: 50.0,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: Colors.white),
                  child: Column(children: [
                    const SizedBox(height: 20.0),
                    const SizedBox(
                        height: 60.0,
                        child: Text(
                          'Avis aux étudiants',
                          style: TextStyle(color: Colors.red, decoration: TextDecoration.none, fontSize: 20.0),
                        )),
                    const SizedBox(
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              "Nous informations les etudiants du Master 1 Systeme d'information et nouvelles technologies, qu'un séminaire pour le modules présentation des études sur le travail d'une application mobile sera programmé le ************** a **.",
                              style: TextStyle(color: Colors.black, decoration: TextDecoration.none, fontSize: 15.0),
                            ))
                            ),
                    const SizedBox(
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              "Nous informations les etudiants du Master 1 Systeme d'information et nouvelles technologies, qu'un séminaire pour le modules présentation des études sur le travail d'une application mobile sera programmé le ************** a **.",
                              style: TextStyle(color: Colors.black, decoration: TextDecoration.none, fontSize: 15.0),
                            ))
                            ),
                    SizedBox(
                    height: 40.0,
                    width: 160.0,
                    child: 
                    TextButton(
                        style: TextButton.styleFrom(backgroundColor: Colors.blue),
                        onPressed: () { },
                        child: const Text('Continuer', style: TextStyle(color: Colors.white)),
                    )
                    ,)
                  ]),
                )))));
  }
}
