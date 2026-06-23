import 'package:flutter/material.dart';
import 'package:myteleton/ui/screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:myteleton/firebase_options.dart';
import 'package:myteleton/ui/theme/theme.dart';
import 'package:myteleton/ui/theme/util.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = MaterialTheme(
      Typography.material2021().black,
    );

    TextTheme textTheme = createTextTheme(
      context,
      "Inter",
      "ADLaM Display",
    );

    return MaterialApp(
      title: 'MyTeleton',
      debugShowCheckedModeBanner: false,

      theme: theme.light(),

      home: const HomeScreen(),
    );
  }
}
