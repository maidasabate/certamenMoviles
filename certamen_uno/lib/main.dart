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
        leading: const Icon(Icons.arrow_back_ios), // icono de arrow back ios
        title: const Text('Portafolio Sabaté'), // titulo de la appBar
        actions: const[
          Icon(Icons.account_circle),// icono de account
          Icon(Icons.settings),// icono de settings
        ],
      ),
      body: ListView( //usamos ListView en lugar de singleChildScrollView
        
          children:[

            Container(
              height: 250.0, // altura de 148 pixeles
              width: double.infinity, //ocupa todo el ancho disponible
              color: Colors.cyanAccent, // col,or de fondo gris
              child: const Center(child: Text('About Me!')), // texto dentro del primer container
            ),
          const SizedBox(height:12.0), // espacio de 12 pixeles entre los containers
           
           Container(
            height: 50.0, // altura de 148 pixeles
            color: Colors.transparent, // color transparente para la separación
            child: Row(
              children: [
                    Expanded(
                      child: Container(
                        color: Colors.blue, // color de fondo naranja
                        child: const Center(child: Text('Contact me')), // texto dentro del primer container chico
                      ),
                    ),
                    const SizedBox(width: 12.0), // espacio de 12 pixeles entre los containers
                    Expanded(
                      child: Container(
                        color: Colors.blueGrey, // color de fondo naranja
                        child: const Center(child: Text('My cv´s')), // texto dentro del segundo  container chico
                      ),
                    ),
                  ],
                ),
              ),
           const SizedBox(height:12.0), // espacio de 12 pixeles entre los containers
          
          
          Container(
            height: 50.0, // altura de 148 pixeles
            color: Colors.transparent, // color transparente para la separación
            child: Row(
              children: [
                Expanded(
                      child: Container(
                        color: Colors.blueGrey, // color de fondo naranja
                        child: const Center(child: Text('Proyects')), // texto dentro del primer container
                      ),
                    ),
                    const SizedBox(width: 12.0), // espacio de 12 pixeles entre los containers
                    Expanded(
                      child: Container(
                        color: Colors.black12, // color de fondo naranja
                         child: const Center(child: Text('About me')), // texto dentro del primer container
                      ),
                    ),
                    const SizedBox(width: 12.0), // espacio de 12 pixeles entre los containers
                    Expanded(
                      child: Container(
                        color: Colors.black12, // color de fondo naranja
                         child: const Center(child: Text('Contact me')), // texto dentro del primer container
                      ),
                    ),
                  ],
                ),
              ),
           const SizedBox(height:12.0), // espacio de 12 pixeles entre los containers
SizedBox( //SizedBox limita colores, decorados etc; es como un tipo div
              height: 250, // Ajustar altura total para que no ocurra Overflow
              child: SingleChildScrollView(  
              scrollDirection: Axis.horizontal, 
              child: Row(
              children: List.generate(8, (index) =>
              Card(
              elevation: 4.0,
              margin: const EdgeInsets.all(8.0),
              child: Column(
                      children: [  
                        Container( //Ahora ya no tenemos un Expanded, si no varios container
                      height: 180,
                      color: const Color.fromARGB(255, 235, 79, 190), 
                      width: 180,
                      margin: const EdgeInsets.only(left: 8.0),
                      ), 
                        Container(
                      width: 180,
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Proyecto 2021 ${index + 1}',
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      ), 
                      ],
                      ),
                      ),
                    ),
                    )
              ),
            ),
              const SizedBox(height: 12.0), // Espacio de 12 píxeles entre los containers
         
         SizedBox( //SizedBox limita colores, decorados etc; es como un tipo div
              height: 250, // Ajustar altura total para que no ocurra Overflow
              child: SingleChildScrollView(  
              scrollDirection: Axis.horizontal, 
              child: Row(
              children: List.generate(8, (index) =>
              Card(
              elevation: 4.0,
              margin: const EdgeInsets.all(8.0),
              child: Column(
                      children: [  
                        Container( //Ahora ya no tenemos un Expanded, si no varios container
                      height: 180,
                      color: const Color.fromARGB(255, 199, 249, 108), 
                      width: 180,
                      margin: const EdgeInsets.only(left: 8.0),
                      
                      ), 
                        Container(
                      width: 180,
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Proyecto 2022 ${index + 1}',
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      ), 
                      ],
                      ),
                      ),
                    ),
                    )
              ),
            ),
              const SizedBox(height: 12.0), // Espacio de 12 píxeles entre los containers
              SizedBox( //SizedBox limita colores, decorados etc; es como un tipo div
              height: 250, // Ajustar altura total para que no ocurra Overflow
              child: SingleChildScrollView(  
              scrollDirection: Axis.horizontal, 
              child: Row(
              children: List.generate(8, (index) =>
              Card(
              elevation: 4.0,
              margin: const EdgeInsets.all(8.0),
              child: Column(
                      children: [  
                        Container( //Ahora ya no tenemos un Expanded, si no varios container
                      height: 180,
                      color: const Color.fromARGB(255, 124, 81, 233), 
                      width: 180,
                      margin: const EdgeInsets.only(left: 8.0),
                      ), 
                        Container(
                      width: 180,
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Proyecto 2023 ${index + 1}',
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      ), 
                      ],
                      ),
                      ),
                    ),
                    )
              ),
            ),
              const SizedBox(height: 12.0), // Espacio de 12 píxeles entre los containers
          ],
          
          
          ),
        ),
      );
  }
}

