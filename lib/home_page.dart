import 'package:flutter/material.dart';
import 'package:ppb_proyek_akhir/boarding_pass.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => BoardingPass()));
          },
          child: Text('Test Boarding Pass page'),
        ),
      ),
    );
  }
}
