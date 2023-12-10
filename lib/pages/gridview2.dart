import 'package:flutter/material.dart';
import 'detail.dart';

class GridViewPage2 extends StatelessWidget {
  GridViewPage2({Key? key}) : super(key: key);

  final List<String> gadgetImages = [
    'assets/images/GalaxyS23Ultra.jpg',
  ];

  final List<String> gadgetNames = [
    'Samsung Galaxy S23 Ultra',
  ];

  final List<String> gadgetDescriptions = [
    'Samsung Galaxy S23 Ultra hadir dengan chipset Snapdragon 8 Gen 2 dengan prosesor Octa-core (1×3.36 GHz Cortex-X3 & 2×2.8 GHz Cortex-A715 & 2×2.8 GHz Cortex-A710 & 3×2.0 GHz Cortex-A510), GPU Adreno 740, kamera utama beresolusi 200 MP dan konfigurasi memori 256GB 8GB RAM, 256GB 12GB RAM, 512GB 12GB RAM, 1TB 12GB RAM. Diperkenalkan pada 2023, February 01, HP Samsung Galaxy S23 Ultra mengandalkan sistem operasi berbasis Android 13, One UI 5.1, layar Dynamic AMOLED 2X, 120Hz, HDR10+, 1750 nits (peak) dan baterai berkapasitas 5000 mAh.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Rekomendasi Smartphone Sehari-Hari',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: gadgetImages.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Detail(
                    gadgetName: gadgetNames[index],
                    imagePath: gadgetImages[index],
                    gadgetDescription: gadgetDescriptions[index],
                  ),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border:
                    Border.all(color: Theme.of(context).colorScheme.secondary),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    gadgetImages[index],
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(height: 8),
                  Text(gadgetNames[index]), // Tambahkan teks yang berbeda
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
