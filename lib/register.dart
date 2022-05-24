import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Oublier mot de passe !',
        home: Container(
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
                  child: Column(children: <Widget>[
                    const SizedBox(height: 10.0,),
                    const SizedBox(
                        height: 40.0,
                        child: Text(
                          'Register',
                          style: TextStyle(color: Colors.black, decoration: TextDecoration.none, fontSize: 20.0),
                        )),
                    const SizedBox(
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              "",
                              style: TextStyle(color: Colors.black, decoration: TextDecoration.none, fontSize: 15.0),
                            ))
                            ),
                    const SizedBox(height: 10.0,),
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
                    const SizedBox(height: 10.0,),
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
                    const SizedBox(height: 10.0,),
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
                    const SizedBox(height: 10.0,),
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
                      const SizedBox(height: 10.0,),
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
                      const SizedBox(height: 10.0,),
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
                    const SizedBox(height: 10.0,),       
                    SizedBox(
                    height: 40.0,
                    width: 160.0,
                    child: 
                    TextButton(
                        style: TextButton.styleFrom(backgroundColor: Colors.blue),
                        onPressed: () { },
                        child: const Text('Continuer', style: TextStyle(color: Colors.white)),
                    )
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                        Text('avez-vous déjà un compte ?',style: TextStyle(color: Colors.black, decoration: TextDecoration.none, fontSize: 12.0)),
                        Text('connecter',style: TextStyle(color: Colors.blue, decoration: TextDecoration.none, fontSize: 12.0)),
                      ],)
                    )
                  ]),
                ))));
  }
}
