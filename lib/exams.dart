import 'package:flutter/material.dart';
import 'package:lazy_data_table/lazy_data_table.dart';

class MyExams extends StatelessWidget {
  const MyExams({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const headers = ['Date','Salle'];
    return MaterialApp(
        title: 'Bulletin des notes et résultat',
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
                padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
                child: Container(
                  height: 50.0,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                  child: Column(children: [
                  
                    const SizedBox(
                      child: Text('Calendrier des examens', style: TextStyle(color: Colors.blue, fontSize: 16.0, letterSpacing: 2.0, decoration: TextDecoration.none))
                    ),
                    SizedBox(
                      height: 300,
                      child: LazyDataTable(
                    rows: 10,
                    columns: 2,
                    tableDimensions: const LazyDataTableDimensions(
                      cellHeight: 50,
                      cellWidth: 130,
                      topHeaderHeight: 50,
                      leftHeaderWidth: 120,
                    ),
                    topHeaderBuilder: (i) => Center(child: Text(headers[i],style: const TextStyle(color: Colors.white, fontSize: 15.0, decoration: TextDecoration.none, letterSpacing: 1.0))),
                    leftHeaderBuilder: (i) => Center(child: Text("")),
                    dataCellBuilder: (i, j) => Center(child: Text("")),
                    topLeftCornerWidget: const Center(child: Text("Matière",style: TextStyle(color: Colors.white, fontSize: 15.0, decoration: TextDecoration.none, letterSpacing: 1.0))),
                  ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(child:
                    Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: 
                            Container(decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                SizedBox(child: Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [Text('Nom et Prénom :',style: TextStyle(color: Colors.white, fontSize: 12.0, decoration: TextDecoration.none),), Text('Arfaoui Ghaith',style: TextStyle(color: Colors.white, fontSize: 12.0, decoration: TextDecoration.none),)])),height: 40.0,width: 300,),
                                SizedBox(child: Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [Text('CIN :',style: TextStyle(color: Colors.white, fontSize: 12.0, decoration: TextDecoration.none),), Text('07490408',style: TextStyle(color: Colors.white, fontSize: 12.0, decoration: TextDecoration.none),)])),height: 40.0,width: 300,),
                                SizedBox(child: Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [Text('Matricule :',style: TextStyle(color: Colors.white, fontSize: 12.0, decoration: TextDecoration.none),), Text('216163',style: TextStyle(color: Colors.white, fontSize: 12.0, decoration: TextDecoration.none),)])),height: 40.0,width: 300,),
                              ],
                            ),
                            )
                        
                        )
                  
                  )
                  ],)
                  ),
                ))));
  }
}
