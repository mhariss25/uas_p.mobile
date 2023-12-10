import 'package:flutter/material.dart';
import 'detail.dart';

class GridViewPage1 extends StatelessWidget {
  GridViewPage1({Key? key}) : super(key: key);

  final List<String> gadgetImages = [
    'assets/images/Mi11Ultra.jpg',
    'assets/images/RedmiNote12Pro4G.jpg',
    'assets/images/RedmiNote12Pro5G.jpg',
    'assets/images/Xiaomi12T.jpg',
    'assets/images/GalaxyS23Ultra.jpg',
    'assets/images/Iphone15Pro.jpg',
    'assets/images/ROGPhone7.jpg',
  ];

  final List<String> gadgetNames = [
    'Mi 11 Ultra',
    'Redmi Note 12 Pro 4G',
    'Redmi Note 12 Pro 5G',
    'Xiaomi 12T',
    'Samsung Galaxy S23 Ultra',
    'Iphone 15 Pro',
    'Asus ROG Phone 7',
  ];

  final List<String> gadgetDescriptions = [
    'Xiaomi Mi 11 Ultra pertama kali diperkenalkan pada 2021, March 29. HP Xiaomi terbaru (Diperbarui pada 29 Maret 2021) ini membawa sejumlah fitur unggulan, mulai dari chipset Snapdragon 888 5G dengan prosesor Octa-core (1x2.84 GHz Kryo 680 & 3x2.42 GHz Kryo 680 & 4x1.80 GHz Kryo 680) dan GPU Adreno 660, hingga kamera utama dengan resolusi mencapai 50 MP.',
    'Xiaomi Redmi Note 12 4G hadir dengan chipset Snapdragon 685 dengan prosesor Octa-core (4×2.8 GHz Cortex-A73 & 4×1.9 GHz Cortex-A53), GPU Adreno 610, kamera utama beresolusi 50 MP dan konfigurasi memori 64GB 4GB RAM, 128GB 4GB RAM, 128GB 6GB RAM, 128GB 8GB RAM. Diperkenalkan pada 2023, March 23, HP Xiaomi Redmi Note 12 4G mengandalkan sistem operasi berbasis Android 13, MIUI 14, layar AMOLED, 120Hz, 450 nits (typ), 700 nits (HBM), 1200 nits (peak) dan baterai berkapasitas 5000 mAh.',
    'Xiaomi Redmi 12 5G hadir dengan chipset Snapdragon 4 Gen 2 dengan prosesor Octa-core (2×2.2 GHz Cortex-A78 & 6x Cortex-A55), GPU Adreno 613, kamera utama beresolusi 50 MP dan konfigurasi memori 128GB 4GB RAM, 128GB 6GB RAM, 256GB 8GB RAM. Diperkenalkan pada 2023, August 01, HP Xiaomi Redmi 12 5G mengandalkan sistem operasi berbasis Android 13, MIUI 14, layar IPS LCD, 90Hz, 550 nits dan baterai berkapasitas 5000 mAh.',
    'Xiaomi 12T hadir dengan chipset Dimensity 8100-Ultra dengan prosesor Octa-core (4×2.85 GHz Cortex-A78 & 4×2.0 GHz Cortex-A55), GPU Mali-G610 MC6, kamera utama beresolusi 108 MP dan konfigurasi memori 128GB 8GB RAM, 256GB 8GB RAM. Diperkenalkan pada 2022, October 04, HP Xiaomi 12T mengandalkan sistem operasi berbasis Android 12, MIUI 13, layar AMOLED, 68B colors, 120Hz, HDR10+ dan baterai berkapasitas 5000 mAh.R',
    'Samsung Galaxy S23 Ultra hadir dengan chipset Snapdragon 8 Gen 2 dengan prosesor Octa-core (1×3.36 GHz Cortex-X3 & 2×2.8 GHz Cortex-A715 & 2×2.8 GHz Cortex-A710 & 3×2.0 GHz Cortex-A510), GPU Adreno 740, kamera utama beresolusi 200 MP dan konfigurasi memori 256GB 8GB RAM, 256GB 12GB RAM, 512GB 12GB RAM, 1TB 12GB RAM. Diperkenalkan pada 2023, February 01, HP Samsung Galaxy S23 Ultra mengandalkan sistem operasi berbasis Android 13, One UI 5.1, layar Dynamic AMOLED 2X, 120Hz, HDR10+, 1750 nits (peak) dan baterai berkapasitas 5000 mAh.',
    'Apple iPhone 15 Pro hadir dengan chipset Apple A17 Pro dengan prosesor Hexa-core (2×3.78 GHz + 4), GPU Apple GPU (6-core graphics), kamera utama beresolusi 48 MP dan konfigurasi memori 128GB 8GB RAM, 256GB 8GB RAM, 512GB 8GB RAM, 1TB 8GB RAM. Diperkenalkan pada 2023, September 12, HP Apple iPhone 15 Pro mengandalkan sistem operasi berbasis iOS 17, layar LTPO Super Retina XDR OLED, 120Hz, HDR10, Dolby Vision, 1000 nits (typ), 2000 nits (HBM) dan baterai berkapasitas 3274 mAh.',
    'Asus ROG Phone 7 hadir dengan chipset Snapdragon 8 Gen 2 dengan prosesor Octa-core (1×3.2 GHz Cortex-X3 & 2×2.8 GHz Cortex-A715 & 2×2.8 GHz Cortex-A710 & 3×2.0 GHz Cortex-A510), GPU Adreno 740, kamera utama beresolusi 50 MP dan konfigurasi memori Up to 512GB 16GB RAM. Diperkenalkan pada 2023, April 13, HP Asus ROG Phone 7 mengandalkan sistem operasi berbasis Android 13, layar AMOLED, 1B colors, 165Hz, HDR10+, 1000 nits (HBM), 1500 nits (peak) dan baterai berkapasitas 6000 mAh.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Rekomendasi Smartphone Fokus Kinerja',
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
                border: Border.all(color: Theme.of(context).colorScheme.secondary),
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
