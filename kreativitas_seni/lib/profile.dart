import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Company Profile'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          // Mengganti Column dengan ListView
          // mainAxisAlignment dan crossAxisAlignment tidak diperlukan pada ListView
          children: [
            Text(
              'PT. NS2_Solution (Perusahaan Kreatifitas dan Seni)',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Kami adalah perusahaan yang berdedikasi dalam bidang kreatifitas dan seni. '
              'Dengan tim yang berpengalaman, kami menyediakan solusi inovatif dan artistik untuk berbagai kebutuhan klien. '
              'Dari desain grafis, ilustrasi, hingga seni instalasi, kami memberikan hasil yang terbaik dan penuh inspirasi.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Layanan Kami',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '• Desain Grafis\n'
              '• Ilustrasi\n'
              '• Seni Instalasi\n'
              '• Desain Produk\n'
              '• Konsultasi Kreatif\n'
              '• Workshop Seni',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
