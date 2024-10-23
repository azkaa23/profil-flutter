import 'package:flutter/material.dart';
import 'login_page.dart'; // Mengimpor halaman login
import 'page2.dart'; // Pastikan Page2.dart ada di proyek Anda

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(), // Mengarahkan ke halaman login terlebih dahulu
    );
  }
}

class Home extends StatelessWidget {
  final String nama;
  final String sekolah;
  final String deskripsi;
  final String role;

  const Home({
    Key? key,
    required this.nama,
    required this.sekolah,
    required this.deskripsi,
    required this.role,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken),
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                elevation: 10, // Efek bayangan pada Card
                shadowColor: Colors.black.withOpacity(0.5),
                color: Color.fromARGB(255, 249, 250, 250),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 80.0,
                        backgroundImage: AssetImage("assets/images/profil.jpg"),
                        backgroundColor: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 15,
                                offset: Offset(0, 3), // Shadow position
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20), // Jarak antara elemen
                      Text(
                        nama,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 5, 5, 5),
                          letterSpacing: 2.0,
                        ),
                      ),
                      Text(
                        sekolah,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Divider(
                        color: Colors.white.withOpacity(0.6),
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                      ),
                      Text(
                        deskripsi,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.9),
                        ),
                      ),
                      Text(
                        "Role: $role",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20), // Jarak sebelum tombol
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SecondPage()), // Ubah ke SecondPage()
                          );
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                          foregroundColor: Colors.white,
                          backgroundColor: Color(0xFF3A6D8C),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        child: Text("See More"),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
