import 'package:flutter/material.dart';

class ProgramDetailScreen extends StatelessWidget {
  const ProgramDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Stack(
          fit: StackFit.expand,
          children: [Image.asset('assets/images/volu4.png', fit: BoxFit.cover)],
        ),
        toolbarHeight: 80,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "nombre_programa",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            ListTile(
              leading: const Icon(Icons.person), //cambiar icon depsues xd
              title: Text("Integrantes: _numero_"),
            ),

            ListTile(
              leading: const Icon(
                Icons.local_activity,
              ), //cambiar icon depsues xd
              title: Text("Estado: Activo/Receso/Salida Informal"),
            ),

            SizedBox(height: 10),

            //botones
            Row(
              children: [
                Expanded(
                  child: Card(
                    elevation: 6,
                    color: Colors.green,
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      onTap: () {
                        //funcionalidad despues
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 24),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(
                              Icons.fact_check,
                              size: 40,
                              color: Colors.white,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Asistencia",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: Card(
                    elevation: 6,
                    color: Colors.blue,
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      onTap: () {
                        //funcinoalidad despues
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 24),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(
                              Icons.menu_book,
                              size: 40,
                              color: Colors.white,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Bitácoras",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
