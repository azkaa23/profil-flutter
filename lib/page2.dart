// second_page.dart
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Muhamad Azka Mubarok"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/profil.jpg'), // Ganti dengan gambar yang sesuai
            ),
            const SizedBox(height: 20),
            const Text(
              'Muhamad Azka Mubarok',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            const SizedBox(height: 20),
            const Text(
              'About:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Saya adalah seorang junior front-end developer yang saat ini masih menempuh Sekolah Menengah Kejuruan di SMK Wikrama, dengan minat besar dalam coding dan pemecahan masalah. Saya memiliki pemahaman yang cukup baik tentang Java, PHP, dan JavaScript (Pemula), serta berpengalaman menggunakan framework seperti Laravel dan Spring Boot.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            const Text(
              'Skills:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              '• Flutter Development\n'
              '• Web Developer',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}