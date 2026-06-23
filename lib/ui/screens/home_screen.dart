import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String mensajesLeidos = '';

  Future<void> crearMensajePoc() async {
    await FirebaseFirestore.instance.collection('mensajes_poc').add({
      'texto': 'Hola desde MyTeleton',
      'creadoEn': FieldValue.serverTimestamp(),
    });
  }

  Future<void> leerMensajes() async {
    try {
      QuerySnapshot snapshot = await FirebaseFirestore.instance
          .collection('mensajes_poc')
          .get();

      String resultado = '';

      for (var doc in snapshot.docs) {
        resultado += '${doc['texto']}\n';
      }

      setState(() {
        mensajesLeidos = resultado;
      });
    } catch (e) {
      setState(() {
        mensajesLeidos = 'Error: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/images/logo_volu.png',
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 10),
            Text(
              "MyTeleton",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ],
        ),
        toolbarHeight: 80, //tamaño de la barra
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: crearMensajePoc,
              child: const Text("Crear mensaje"),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: leerMensajes,
              child: const Text("Leer mensajes"),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SingleChildScrollView(child: Text(mensajesLeidos)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
