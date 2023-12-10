import 'package:flutter/material.dart';
import 'detail.dart';

class GridViewPage4 extends StatelessWidget {
  GridViewPage4({Key? key}) : super(key: key);

  final List<String> gadgetImages = [
    'assets/images/ROGPhone7.jpg',
  ];

  final List<String> gadgetNames = [
    'Asus ROG Phone 7',
  ];

  final List<String> gadgetDescriptions = [
    'Asus ROG Phone 7 hadir dengan chipset Snapdragon 8 Gen 2 dengan prosesor Octa-core (1×3.2 GHz Cortex-X3 & 2×2.8 GHz Cortex-A715 & 2×2.8 GHz Cortex-A710 & 3×2.0 GHz Cortex-A510), GPU Adreno 740, kamera utama beresolusi 50 MP dan konfigurasi memori Up to 512GB 16GB RAM. Diperkenalkan pada 2023, April 13, HP Asus ROG Phone 7 mengandalkan sistem operasi berbasis Android 13, layar AMOLED, 1B colors, 165Hz, HDR10+, 1000 nits (HBM), 1500 nits (peak) dan baterai berkapasitas 6000 mAh.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Rekomendasi Smartphone Gaming',
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
