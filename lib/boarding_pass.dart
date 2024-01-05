import 'package:flutter/material.dart';

class BoardingPass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: const Text('Boarding Pass'),
        centerTitle: true,
      ),
    );
  }
}
