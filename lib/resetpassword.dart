import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

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
                padding: const EdgeInsets.symmetric(vertical: 300.0, horizontal: 30.0),
                child: Container(
                  height: 50.0,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: Colors.white),
                  child: Column(children: <Widget>[
                    const SizedBox(height: 10.0,),
                    const SizedBox(
                        height: 40.0,
                        child: Text(
                          'Oublier mot de passe !',
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
                    const SizedBox(
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              "Veuillez entrer votre adresse e-mail ou votre numéro de téléphone portable pour trouver votre compte",
                              style: TextStyle(color: Colors.black, decoration: TextDecoration.none, fontSize: 15.0),
                            ))
                            ),
                    const SizedBox(height: 10.0,),
                    const SizedBox(
                      width: 300,
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
                ))));
  }
}
