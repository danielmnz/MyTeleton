import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<void> crearMensajePoc() async {
    try {
      await FirebaseFirestore.instance.collection('mensajes_poc').add({
        'texto': 'Hola desde MyTeleton',
        'creadoEn': FieldValue.serverTimestamp(),
      });

      debugPrint('Mensaje POC creado correctamente');
    } catch (error) {
      debugPrint('Error creando mensaje POC: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 75,

        title: const Text(
          "MyTeleton",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none, color: Colors.white),
          ),
        ],
      ),

      body: Center(
        child: ElevatedButton(
          onPressed: crearMensajePoc,
          child: const Text('Crear mensaje POC'),
        ),
      ),
    );
  }
}
