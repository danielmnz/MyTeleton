import 'package:flutter/material.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

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
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Asistencia",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height:10),
          ],
        ),
      ),
    );
  }
}