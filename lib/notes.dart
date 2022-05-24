import 'package:flutter/material.dart';
import 'package:lazy_data_table/lazy_data_table.dart';

class MyNotes extends StatelessWidget {
  const MyNotes({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const headers = ['RE*','Coeff','NCC1','NCC2','PEX','N.EX','Moy.E','Valide'];
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
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                child: Container(
                  height: 50.0,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                  child: Column(children: [
                    const SizedBox(
                      child: Text('Semestre 1', style: TextStyle(color: Colors.blue, fontSize: 16.0, letterSpacing: 2.0, decoration: TextDecoration.none))
                    ),
                    SizedBox(
                      height: 200,
                      child: LazyDataTable(
                    rows: 7,
                    columns: 8,
                    tableDimensions: const LazyDataTableDimensions(
                      cellHeight: 30,
                      cellWidth: 60,
                      topHeaderHeight: 50,
                      leftHeaderWidth: 75,
                    ),
                    topHeaderBuilder: (i) => Center(child: Text(headers[i],style: const TextStyle(color: Colors.white, fontSize: 15.0, decoration: TextDecoration.none, letterSpacing: 1.0))),
                    leftHeaderBuilder: (i) => Center(child: Text("")),
                    dataCellBuilder: (i, j) => Center(child: Text("")),
                    topLeftCornerWidget: const Center(child: Text("Matière",style: TextStyle(color: Colors.white, fontSize: 15.0, decoration: TextDecoration.none, letterSpacing: 1.0))),
                  ),
                  ),
                   const SizedBox(
                      child: Text('Semestre 2', style: TextStyle(color: Colors.blue, fontSize: 16.0, letterSpacing: 2.0, decoration: TextDecoration.none))
                    ),
                    SizedBox(
                      height: 180,
                      child: LazyDataTable(
                    rows: 7,
                    columns: 8,
                    tableDimensions: const LazyDataTableDimensions(
                      cellHeight: 30,
                      cellWidth: 60,
                      topHeaderHeight: 50,
                      leftHeaderWidth: 75,
                    ),
                    topHeaderBuilder: (i) => Center(child: Text(headers[i],style: const TextStyle(color: Colors.white, fontSize: 15.0, decoration: TextDecoration.none, letterSpacing: 1.0))),
                    leftHeaderBuilder: (i) => Center(child: Text("")),
                    dataCellBuilder: (i, j) => Center(child: Text("")),
                    topLeftCornerWidget: const Center(child: Text("Matière",style: TextStyle(color: Colors.white, fontSize: 15.0, decoration: TextDecoration.none, letterSpacing: 1.0))),
                  ),
                  ),
                  const SizedBox(
                    child: Text('* RE: Régime Examen M: Mixte - C: Controle Continue / Pas de rattrapage pour le régime de Controle continu (C).', style: TextStyle(color: Colors.red, fontSize: 13, letterSpacing: 1.0, decoration: TextDecoration.none))
                  ),
                  const SizedBox(
                    child: Text('M: CC1: 10% - CC2: 20% - Examen: 70%', style: TextStyle(color: Colors.red, fontSize: 13, letterSpacing: 1.0, decoration: TextDecoration.none))
                  ),
                  const SizedBox(
                    child: Text('C: CC1: 20% - CC2: 40% - Examen: 40%', style: TextStyle(color: Colors.red, fontSize: 13, letterSpacing: 1.0, decoration: TextDecoration.none))
                  ),
                  ],)
                  ),
                ))));
  }
}
