import 'package:flutter/material.dart';

/*
  Esta clase permite mostrar una galería de animales
  en forma de tarjetas
 */
class AnimalGaleria extends StatelessWidget {
  AnimalGaleria({super.key});
  final List<Map<String, String>> animals = [
    {"name": "Leon", "image": "assets/leon.jpg"},
    {"name": "Jaguar", "image": "assets/jaguar.jpg"},
    {"name": "Condor", "image": "assets/condor.jpg"},
    {"name": "Tortuga Galapagos", "image": "assets/galapagos.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Zoológico"),
        ),
        /*
          GridView permite mostrar una galería de animales
         */
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: animals.length,
          itemBuilder: (context, index) {
            // Card permite mostrar una tarjeta de animales
            return Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      child: Image.asset(
                    animals[index]["image"]!,
                    fit: BoxFit
                        .cover, //BoxFit.cover ajusta la imagen al tamaño de la tarjeta
                  )),
                  /*
                    Padding permite agregar un margen alrededor de un widget
                   */
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      animals[index]["name"]!,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            );
          },
        ));
  }
}
