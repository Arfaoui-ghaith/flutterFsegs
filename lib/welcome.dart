import 'package:flutter/material.dart';
import 'package:projetflutter/login.dart';
import 'package:projetflutter/register.dart';
void main() {
  runApp(const MyWelcome());
}

class MyWelcome extends StatelessWidget {
  const MyWelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Welcome(),
    );
  }
}

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.green,
              ],
            )
          ),
          child: Center(
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              const SizedBox(
                width: 120,
                height: 120,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/fsegs.png'),
                  radius: 40.0,
                ),
              ),
              const Text(
              'Bienvunue !',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                decoration: TextDecoration.none,
                letterSpacing: 2.0
              ),
            ),
            SizedBox(
              
              width: 250,
              height: 40,
              child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                SizedBox(
                    height: 40.0,
                    width: 120.0,
                    child: 
                    ElevatedButton(
                        style: TextButton.styleFrom(backgroundColor: Colors.green),
                        onPressed: () { 
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Register()));},
                        child: const Text('Register', style: TextStyle(color: Colors.white)),
                    )
                ),
                SizedBox(
                    height: 40.0,
                    width: 120.0,
                    child: 
                    ElevatedButton(
                        style: TextButton.styleFrom(backgroundColor: Colors.blue),
                        onPressed: () { 
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()));},
                        child: const Text('Login', style: TextStyle(color: Colors.white)),
                    )
                )

              ],)
            )
            ],)
          ),
        ),
      ),
    );
  }
}