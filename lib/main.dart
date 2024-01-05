import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ppb_proyek_akhir/firebase_options.dart';
import 'package:ppb_proyek_akhir/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Astral Express Ticket App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          brightness: Brightness.dark,
          background: const Color(0xff262626),
          onBackground: Colors.white,
          onSurface: Colors.white,
          onPrimaryContainer: const Color(0xffdedede),
          onSecondaryContainer: const Color(0xffdedede),
          onSurfaceVariant: const Color(0xffdedede),
          primary: Colors.amber[50],
        ),
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
