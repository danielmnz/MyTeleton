import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/volu4.png',
              fit: BoxFit.cover,
            ),
          ],
        ),
        toolbarHeight: 80,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 20),

            // Foto de perfil
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(
                'assets/images/logo_volu.png',
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              "nombre_voluntario",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              "correo@teleton.cl",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 5),

            Text(
              "rol_voluntario (coordinador, permanente, jefe)",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 30),

            ListTile(
              leading: const Icon(Icons.photo, color: Colors.white),
              title: const Text(
                "Cambiar foto de perfil",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
              tileColor: Theme.of(context).colorScheme.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              onTap: () {},
            ),

            const SizedBox(height: 12),

            ListTile(
              leading: const Icon(Icons.badge, color: Colors.white),
              title: const Text(
                "Cambiar nombre",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
              tileColor: Theme.of(context).colorScheme.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              onTap: () {},
            ),

            const SizedBox(height: 12),

            ListTile(
              leading: const Icon(Icons.email, color: Colors.white),
              title: const Text(
                "Cambiar correo",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
              tileColor: Theme.of(context).colorScheme.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}