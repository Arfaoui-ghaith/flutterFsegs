import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Rattrapage extends StatelessWidget {
  const Rattrapage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Avis de rattrapage',
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
                padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 10.0),
                child: Container(
                  height: 50.0,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: Colors.white),
                  child: Column(children: [
                    const SizedBox(height: 20.0),
                    const SizedBox(
                        height: 60.0,
                        child: Text(
                          'Avis de Rattrapage',
                          style: TextStyle(color: Colors.red, decoration: TextDecoration.none, fontSize: 20.0),
                        )),
                    SizedBox(
                      height: 250.0,
                      width: 350.0,
                        child: CarouselSlider(
  options: CarouselOptions(height: 400.0),
  items: [1,2,3,4,5].map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 2.0),
          decoration: const BoxDecoration(
          ),
          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: 
                            Container(decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                const SizedBox(height: 20),
                                SizedBox(child: Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [Text('Date de rattrapage :',style: TextStyle(color: Colors.white, fontSize: 12.0, decoration: TextDecoration.none),), Text('13/02/2023 10:15 a 12:45',style: TextStyle(color: Colors.white, fontSize: 12.0, decoration: TextDecoration.none),)])),height: 40.0,width: 300,),
                                SizedBox(child: Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [Text('Matière :',style: TextStyle(color: Colors.white, fontSize: 12.0, decoration: TextDecoration.none),), Text('Programmation Embarqué',style: TextStyle(color: Colors.white, fontSize: 12.0, decoration: TextDecoration.none),)])),height: 40.0,width: 300,),
                                SizedBox(child: Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [Text('Enseignent :',style: TextStyle(color: Colors.white, fontSize: 12.0, decoration: TextDecoration.none),), Text('Chafik Aloulou',style: TextStyle(color: Colors.white, fontSize: 12.0, decoration: TextDecoration.none),)])),height: 40.0,width: 300,),
                                SizedBox(child: Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [Text('Séance :',style: TextStyle(color: Colors.white, fontSize: 12.0, decoration: TextDecoration.none),), Text('Cours',style: TextStyle(color: Colors.white, fontSize: 12.0, decoration: TextDecoration.none),)])),height: 40.0,width: 300,),
                                SizedBox(child: Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [Text('Group :',style: TextStyle(color: Colors.white, fontSize: 12.0, decoration: TextDecoration.none),), Text('G1',style: TextStyle(color: Colors.white, fontSize: 12.0, decoration: TextDecoration.none),)])),height: 40.0,width: 300,),
                              ],
                            ),
                            )
                        
                        )
        );
      },
    );
  }).toList(),
)
                    ),
                  ]),
                )))));
  }
}














                        