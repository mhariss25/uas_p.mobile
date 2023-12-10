import 'package:demoapp/components/my_drawer.dart';
import 'package:demoapp/pages/gridview1.dart';
import 'package:demoapp/pages/gridview2.dart';
import 'package:demoapp/pages/gridview3.dart';
import 'package:demoapp/pages/gridview4.dart';
import 'package:demoapp/pages/listview.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(height: 10),
          Image.asset(
            'assets/images/Gadget.png',
            width: 100,
            height: 100,
          ),
          const SizedBox(height: 10),
          const Center(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Selamat Datang',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              'Aplikasi yang memberikan rekomendasi terkini, ulasan mendalam produk gadget. Dapatkan informasi yang akurat untuk membuat keputusan pembelian yang lebih cerdas dan sesuai kebutuhan Anda.',
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.justify,
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              'Rekomendasi Gadget November',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 190,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GridViewPage1()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      color: Theme.of(context).colorScheme.inversePrimary,
                      child: const Center(
                        child: Text(
                          'Smartphone Kinerja',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 190,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GridViewPage2()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      color: Theme.of(context).colorScheme.inversePrimary,
                      child: const Center(
                        child: Text(
                          'Smartphone Daily',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                // Tambahkan kotak lainnya di sini
                SizedBox(
                  width: 190,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GridViewPage3()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      color: Theme.of(context).colorScheme.inversePrimary,
                      child: const Center(
                        child: Text(
                          'Smartphone Camera',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 190,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GridViewPage4()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      color: Theme.of(context).colorScheme.inversePrimary,
                      child: const Center(
                        child: Text(
                          'Smartphone Gaming',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ListViewPage()),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(left: 40, right: 40),
              color: Theme.of(context).colorScheme.inversePrimary,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    "Daftar Semua Rekomendasi Gadget",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    'assets/images/SmartphoneGaming.jpg', // Ganti dengan path gambar yang Anda gunakan
                    width: 170, // Sesuaikan ukuran gambar yang diinginkan
                    height: 170,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      drawer: const MyDrawer(),
    );
  }
}
