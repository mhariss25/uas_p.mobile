import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: const Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Rekomendasi Gadget',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '210605110082@student.uin-malang.ac.id', // Ganti dengan email pengguna
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Mochamad Haris Syafiuddin, sebagai mahasiswa dari jurusan Teknik Informatika di Universitas Islam Negeri Maulana Malik Ibrahim Malang yang bergabung pada tahun 2021, memiliki peran sebagai pencipta aplikasi ini. Aplikasi yang saya kembangkan adalah sebuah solusi berbasis teknologi yang dirancang khusus sebagai wadah untuk memberikan rekomendasi terkini dan ulasan mendalam mengenai gadget. Tujuan utama dari aplikasi ini adalah untuk menjadi panduan yang andal dan informatif bagi para calon pembeli, memudahkan mereka dalam membuat keputusan pembelian yang lebih cerdas dan terinformasi dalam dunia teknologi yang terus berkembang pesat.', // Ganti dengan deskripsi pengguna
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
