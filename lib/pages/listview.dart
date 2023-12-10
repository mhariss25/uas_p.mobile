import 'package:flutter/material.dart';
import 'gridview1.dart';
import 'gridview2.dart';
import 'gridview3.dart';
import 'gridview4.dart';
import 'gridview5.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Kategori Gadget',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => GridViewPage1(),
                ),
              );
            },
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/SmartphoneKinerja.jpg',
                    width: 120,
                    height: 120,
                  ),
                  const SizedBox(height: 8),
                  const Text('Rekomendasi Smartphone Fokus Kinerja'),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => GridViewPage2(),
              ));
            },
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/SmartphoneDaily.jpg',
                    width: 120,
                    height: 120,
                  ),
                  const SizedBox(height: 8),
                  const Text('Rekomendasi Smartphone Sehari-Hari'),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => GridViewPage3(),
                ),
              );
            },
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/SmartphoneCamera.jpg',
                    width: 120,
                    height: 120,
                  ),
                  const SizedBox(height: 8),
                  const Text('Rekomendasi Smartphone Kamera'),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => GridViewPage4(),
                ),
              );
            },
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/SmartphoneGaming.jpg',
                    width: 120,
                    height: 120,
                  ),
                  const SizedBox(height: 8),
                  const Text('Rekomendasi Smartphone Gaming'),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => GridViewPage5(),
                ),
              );
            },
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/SmartphoneMurah.jpg',
                    width: 120,
                    height: 120,
                  ),
                  const SizedBox(height: 8),
                  const Text('Rekomendasi Smartphone Murah'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
