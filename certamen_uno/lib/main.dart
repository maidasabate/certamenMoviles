import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
appBar: AppBar(
  leading: const Icon (Icons.menu), //Icono menu
   title: const Text ('Diagramación'), //titulo de la appBar
   actions: const [
    Icon(Icons.more_vert), //icono de more vert
   ],
  ),
        body: ListView(
children:[
        //Lista de 20 items con CircleAvatar, titulo y subtitulo
        for(var i = 1; i <= 20; i++) ListTile(
          leading: const CircleAvatar(
            backgroundColor: Colors.blue, //Color de fondo del circulo
            ),
          title: Text('Item $i'), // subtitulo del item
          trailing: ElevatedButton(
            onPressed:() {
              //accion del boton
            },
            child: const Text('Acción'),
            ),
          ),
          const SizedBox(height: 12.0), // espacio de 12 pixeles entre los items
          ],
        ), 
      ),
    );
  }
}
