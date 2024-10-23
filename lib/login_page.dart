import 'package:flutter/material.dart';
import 'main.dart'; // Mengimpor halaman utama (home.dart)

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
final TextEditingController _namaController = TextEditingController();
final TextEditingController _sekolahController = TextEditingController();
final TextEditingController _deskripsiController = TextEditingController();
final TextEditingController _roleController = TextEditingController();


  // Fungsi untuk login
  void login() {
    String nama = _namaController.text;
    String sekolah = _sekolahController.text;
    String role = _roleController.text;
    String deskripsi = _deskripsiController.text;

    // Validasi sederhana
    if (nama.isEmpty || sekolah.isEmpty || role.isEmpty || deskripsi.isEmpty) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Error"),
          content: Text("Semua field harus diisi"),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      );
    } else {
      // Jika login berhasil, navigasi ke halaman home dengan mengirim data
Navigator.pushReplacement(
  context,
  MaterialPageRoute(
    builder: (context) => Home(
      nama: _namaController.text, // atau data yang Anda terima dari form
      sekolah: _sekolahController.text, // atau data yang Anda terima dari form
      deskripsi: _deskripsiController.text, // jika ada field deskripsi
      role: _roleController.text, // jika ada field role
    ),
  ),
);

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        backgroundColor: Color(0xFF3A6D8C), // Warna biru muda
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _namaController,
              decoration: InputDecoration(
                labelText: "Nama",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _sekolahController,
              decoration: InputDecoration(
                labelText: "Sekolah",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _roleController,
              decoration: InputDecoration(
                labelText: "Role",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _deskripsiController,
              decoration: InputDecoration(
                labelText: "Deskripsi",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: login,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF3A6D8C), // Warna tombol biru muda
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text("Login", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 18, 132, 247), // Warna latar biru tua
    );
  }
}