import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final String gadgetName;
  final String imagePath;
  final String gadgetDescription;

  Detail({
    required this.gadgetName,
    required this.imagePath,
    required this.gadgetDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail Halaman',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Tambahkan padding di sini
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                imagePath,
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 16),
              Text(
                gadgetName,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text(
                gadgetDescription,
                style: const TextStyle(fontSize: 15),
                textAlign: TextAlign.justify,
              )
            ],
          ),
        ),
      ),
    );
  }
}
