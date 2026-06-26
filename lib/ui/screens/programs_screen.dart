import 'package:flutter/material.dart';
import 'package:myteleton/ui/screens/programsDetail_screen.dart';

class ProgramsScreen extends StatelessWidget {
  const ProgramsScreen({super.key});

  final List<Map<String, String>> programas = const [
    {
      "nombre": "Abre",
      "descripcion": "Programa de inclusión escolar",
      "imagen": "assets/images/abre.png",
    },
    {
      "nombre": "Anfitriones",
      "descripcion": "Programa de voluntariado",
      "imagen": "assets/images/anfitriones.png",
    },
    {
      "nombre": "Familias",
      "descripcion": "Apoyo a familias",
      "imagen": "assets/images/familias.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Image.asset(
          "assets/images/volu4.png",
          fit: BoxFit.cover,
        ),
        toolbarHeight: 80,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              "Programas",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: programas.length,
                itemBuilder: (context, index) {
                  final programa = programas[index];

                  return Card(
                    elevation: 4,
                    margin: const EdgeInsets.only(bottom: 12),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage(programa["imagen"]!),
                      ),
                      title: Text(programa["nombre"]!),
                      subtitle: Text(programa["descripcion"]!),
                      trailing: const Icon(Icons.chevron_right),

                      onTap: () {
                        //funcionalidad
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ProgramDetailScreen()),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//poner un lista en backend de qué voluntariado eres parte, y en base a eso colocar las cosas
//generalizar un poco más de las estructuras, por ejemplo la oaganizacion del it (jefe gestion, coordinadores, voluntarios) puede no ser igual en otros voluntariados
//que nustra "idea" pueda ser la forma de organización de otros voluntariados
