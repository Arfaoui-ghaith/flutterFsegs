import 'package:flutter/material.dart';
import 'package:projetflutter/register.dart';
import 'package:projetflutter/resetpassword.dart';
import 'package:projetflutter/temps.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Login',
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
                          'Login',
                          style: TextStyle(color: Colors.black, decoration: TextDecoration.none, fontSize: 20.0),
                        )),
                   
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
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 250,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: TextButton(
                          onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const ResetPassword()));},
                          child: const Text("Oublier mot de passe ?",style: TextStyle(color: Colors.blue, decoration: TextDecoration.none, fontSize: 12.0)))
                    )),
                    const SizedBox(height: 10.0,),       
                    SizedBox(
                    height: 40.0,
                    width: 160.0,
                    child: 
                    TextButton(
                        style: TextButton.styleFrom(backgroundColor: Colors.blue),
                        onPressed: () => Navigator.pushNamed(context, "/news"),
                        child: const Text('Continuer', style: TextStyle(color: Colors.white)),
                    )
                    ),
                   
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        const Text("Vous n'avez pas encore de compte ?",style: TextStyle(color: Colors.black, decoration: TextDecoration.none, fontSize: 12.0)),
                        TextButton(
                        onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const Register()));}
                        ,child: const Text('register',style: TextStyle(color: Colors.blue, decoration: TextDecoration.none, fontSize: 12.0))),
                      ],)
                    )
                  ]),
                ))));
  }
}
