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
        backgroundColor: Theme.of(context).colorScheme.primary,
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
            Text(
              "Bienvenid@ voluntari@",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontStyle: FontStyle.italic,
              ),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Card(
                    elevation: 6,
                    color: Colors.orange,
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      onTap: () {}, //agregar funcionalidad despues
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/volu1.png',
                            width: 200,
                            height: 200,
                            //fit: BoxFit.cover,
                          ),
                          SizedBox(height: 10),
                          Center(
                            child: Text(
                              "Perfil",
                              style: TextStyle(
                                fontSize: 18,
                                //fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  )
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: Card(
                    elevation: 6,
                    color: Colors.blue,
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      onTap: () {}, //agregar funcionalidad despues
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/volu2.png',
                            width: 200,
                            height: 200,
                            //fit: BoxFit.cover,
                          ),
                          SizedBox(height: 10),
                          Center(
                            child: Text(
                              "Programas",
                              style: TextStyle(
                                fontSize: 18,
                                //fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  )
                ),
              ],
            ),

            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Card(
                    elevation: 6,
                    color: Colors.green,
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      onTap: () {}, //agregar funcionalidad despues
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/volu3.png',
                            width: 200,
                            height: 200,
                            //fit: BoxFit.cover,
                          ),
                          SizedBox(height: 10),
                          Center(
                            child: Text(
                              "Actividades",
                              style: TextStyle(
                                fontSize: 18,
                                //fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  )
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: Card(
                    elevation: 6,
                    color: Colors.purple,
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      onTap: () {}, //agregar funcionalidad despues
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/volu4.png',
                            width: 200,
                            height: 200,
                            //fit: BoxFit.cover,
                          ),
                          SizedBox(height: 10),
                          Center(
                            child: Text(
                              "Asistencia",
                              style: TextStyle(
                                fontSize: 18,
                                //fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  )
                ),
              ],
            ),

            const SizedBox(height: 20),
            
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
