import 'package:flutter/material.dart';
import 'package:ppb_proyek_akhir/color_schemes.g.dart';

class BoardingPass extends StatelessWidget {
  const BoardingPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('Boarding Pass'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              padding: const EdgeInsets.all(16),
              child: const DefaultTextStyle(
                style: TextStyle(color: Colors.black),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Logo'),
                    Divider(
                      color: Colors.black,
                      height: 1,
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Earth'),
                            Text('ETH'),
                            Text('05 January 2023'),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('Earth'),
                            Text('ETH'),
                            Text('05 January 2023'),
                          ],
                        )
                      ],
                    ),
                    Text('Kode Booking'),
                    Text('7BG55A'),
                    Text('Nama Penumpang'),
                    Text('John Doe'),
                    Text('No Kursi'),
                    Text('11A'),
                    Divider(
                      color: Colors.black,
                      height: 1,
                      thickness: 1,
                    ),
                    Text('Barcode'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 32),
            FilledButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 12),
                backgroundColor: darkColorScheme.background,
                foregroundColor: darkColorScheme.inverseSurface,
              ),
              child: const Text(
                'Download',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
