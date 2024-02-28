import 'package:flutter/material.dart';

void main() => runApp(const MiListaCard());

class MiListaCard extends StatelessWidget {
  const MiListaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi listview Ruiz",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const PaginaInicial(),
    );
  }
}

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({Key? key}) : super(key: key);

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  List<String> images = [
    "assets/images/avata1.jpg",
    "assets/images/avata5.jpg",
    "assets/images/avata3.jpg",
    "assets/images/avata6.jpg",
    "assets/images/avatacinco.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter listView"),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(images[index]),
                ),
                title: Text("This is title"),
                subtitle: Text("This is subtitle"),
              ),
            );
          },
          itemCount: images.length,
          shrinkWrap: true,
          padding: EdgeInsets.all(5),
          scrollDirection: Axis.vertical,
        ));
  }
}
