import 'package:flutter/material.dart';
import 'package:lazy_data_table/lazy_data_table.dart';

class MyTimes extends StatelessWidget {
  const MyTimes({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const times = ['De 8:15 a 9:45','De 9:55 a 11:25','De 13:35 a 15:05','De 15:15 a 16:45'];
    return MaterialApp(
        title: 'Emploi de temps',
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
                      child: Text('Emploi de temps', style: TextStyle(color: Colors.blue, fontSize: 16.0, letterSpacing: 2.0, decoration: TextDecoration.none))
                    ),
                    SizedBox(
                      height: 210,
                      child: LazyDataTable(
                    rows: 4,
                    columns: 1,
                    tableDimensions: const LazyDataTableDimensions(
                      cellHeight: 30,
                      cellWidth: 300,
                      topHeaderHeight: 50,
                      leftHeaderWidth: 75,
                    ),
                    leftHeaderBuilder: (i) => Center(child: Text(times[i],style: const TextStyle(color: Colors.white, fontSize: 12.0, decoration: TextDecoration.none, letterSpacing: 1.0))),
                    topHeaderBuilder: (i) => Center(child: Text("")),
                    dataCellBuilder: (i, j) => Center(child: Text("")),
                    topLeftCornerWidget: const Center(child: Text("Lundi",style: TextStyle(color: Colors.white, fontSize: 12.0, decoration: TextDecoration.none, letterSpacing: 1.0))),
                  ),
                  ),
                   const SizedBox(),
                    SizedBox(
                      height: 210,
                      child: LazyDataTable(
                    rows: 4,
                    columns: 1,
                    tableDimensions: const LazyDataTableDimensions(
                      cellHeight: 30,
                      cellWidth: 300,
                      topHeaderHeight: 50,
                      leftHeaderWidth: 75,
                    ),
                    leftHeaderBuilder: (i) => Center(child: Text(times[i],style: const TextStyle(color: Colors.white, fontSize: 12.0, decoration: TextDecoration.none, letterSpacing: 1.0))),
                    topHeaderBuilder: (i) => Center(child: Text("")),
                    dataCellBuilder: (i, j) => Center(child: Text("")),
                    topLeftCornerWidget: const Center(child: Text("Mardi",style: TextStyle(color: Colors.white, fontSize: 12.0, decoration: TextDecoration.none, letterSpacing: 1.0))),
                  ),
                  ),
                 
                  ],)
                  ),
                ))));
  }
}
