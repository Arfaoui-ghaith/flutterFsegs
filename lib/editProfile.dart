import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Oublier mot de passe !',
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
            width: double.infinity,
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
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                child: Container(
                  height: double.infinity,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: Colors.white),
                  child: Column(children: <Widget>[
                    const SizedBox(height: 2.0,),
                    const SizedBox(
                      width: 120,
                      height: 120,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/fsegs.png'),
                        radius: 40.0,
                      ),
                    ),
                    const SizedBox(
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              "",
                              style: TextStyle(color: Colors.black, decoration: TextDecoration.none, fontSize: 15.0),
                            ))
                            ),
                    const SizedBox(height: 2.0,),
                    const SizedBox(
                      width: 250,
                      height: 40,
                        child: 
                        Material(
                        child: TextField(
                          
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'CIN',
                          ),
                        )),
                      ),
                    const SizedBox(height: 2.0,),
                    const SizedBox(
                      width: 250,
                      height: 40,
                        child: 
                        Material(
                        child: TextField(
                          
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Nom',
                          ),
                        )),
                      ),
                    const SizedBox(height: 2.0,),
                    const SizedBox(
                      width: 250,
                      height: 40,
                        child: 
                        Material(
                        child: TextField(
                          
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Prénom',
                          ),
                        )),
                      ),
                    const SizedBox(height: 2.0,),
                    const SizedBox(
                      width: 250,
                      height: 40,
                        child: 
                        Material(
                        child: TextField(
                          
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                          ),
                        )),
                      ),
                    const SizedBox(height: 2.0,),
                    const SizedBox(
                      width: 250,
                      height: 40,
                        child: 
                        Material(
                        child: TextField(
                          
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Numero',
                          ),
                        )),
                    ),
                    const SizedBox(height: 2.0,),
                    const SizedBox(
                      width: 250,
                      height: 40,
                        child: 
                        Material(
                        child: TextField(
                          
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Address',
                          ),
                        )),
                    ),
                    const SizedBox(height: 2.0,),
                    const SizedBox(
                      width: 250,
                      height: 40,
                        child: 
                        Material(
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Mot de passe',
                          ),
                        )),
                    ),
                    const SizedBox(height: 2.0,),
                    const SizedBox(
                      width: 250,
                      height: 40,
                        child: 
                        Material(
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Confirmer votre mot de passe',
                          ),
                        )),
                    ),
                    const SizedBox(height: 2.0,),       
                    SizedBox(
                    height: 40.0,
                    width: 160.0,
                    child: 
                    TextButton(
                        style: TextButton.styleFrom(backgroundColor: Colors.blue),
                        onPressed: () { },
                        child: const Text('Enregistrer', style: TextStyle(color: Colors.white)),
                    )
                    ),
                   
                  ]),
                )))));
  }
}
