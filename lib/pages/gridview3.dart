import 'package:flutter/material.dart';
import 'detail.dart';

class GridViewPage3 extends StatelessWidget {
  GridViewPage3({Key? key}) : super(key: key);

  final List<String> gadgetImages = [
    'assets/images/Iphone15Pro.jpg',
  ];

  final List<String> gadgetNames = [
    'Iphone 15 Pro',
  ];

  final List<String> gadgetDescriptions = [
    'Apple iPhone 15 Pro hadir dengan chipset Apple A17 Pro dengan prosesor Hexa-core (2×3.78 GHz + 4), GPU Apple GPU (6-core graphics), kamera utama beresolusi 48 MP dan konfigurasi memori 128GB 8GB RAM, 256GB 8GB RAM, 512GB 8GB RAM, 1TB 8GB RAM. Diperkenalkan pada 2023, September 12, HP Apple iPhone 15 Pro mengandalkan sistem operasi berbasis iOS 17, layar LTPO Super Retina XDR OLED, 120Hz, HDR10, Dolby Vision, 1000 nits (typ), 2000 nits (HBM) dan baterai berkapasitas 3274 mAh.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Rekomendasi Smartphone Kamera',
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
