import 'package:flutter/material.dart';
import 'detail.dart';

class GridViewPage5 extends StatelessWidget {
  GridViewPage5({Key? key}) : super(key: key);

  final List<String> gadgetImages = [
    'assets/images/Redmi13C.jpg',
  ];

  final List<String> gadgetNames = [
    'Redmi 13C',
  ];

  final List<String> gadgetDescriptions = [
    'Xiaomi Redmi 13C menonjolkan konektivitas NFC untuk mendukung mobilitas tinggi, layar 6,74 inci HD+ 720 x 1600 piksel dengan refresh rate 90Hz, dimensi ringkas 168 x 78 x 8.09 mm, kamera utama 50 MP, MediaTek Helio G85, hingga 8 GB RAM, penyimpanan 256 GB yang dapat diperluas, Android 13 dengan MIUI 14, baterai 5.000mAh, pengisian cepat 18W, dan pemindai sidik jari samping.',
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
