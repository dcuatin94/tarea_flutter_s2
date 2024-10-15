import 'package:flutter/material.dart';
import 'package:tarea_flutter_s2/src/galleria.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zoo App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AnimalGaleria(),
    );
  }
}
