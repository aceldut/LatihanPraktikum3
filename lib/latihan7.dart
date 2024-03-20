import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Daftar path gambar yang sesuai dengan setiap tombol
final List<String> buttonImages = [
  'assets/images/goride.png',
  'assets/images/gocar.png',
  'assets/images/gofood.png',
  'assets/images/gosend.png',
  'assets/images/gomart.png',
  'assets/images/gopulsa.png',
  'assets/images/check_in.png'
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Latihan 7',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text(
            'Goyek',
            style: TextStyle(
              color: Colors.white, // Warna teks putih
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Your Favorites',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Fungsi yang akan dipanggil saat tombol "Edit" ditekan
                    },
                    child: const Text(
                      'Edit',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.green, // Warna teks hijau
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 4,
                children: List.generate(
                  buttonImages.length,
                  (index) => _buildButton(buttonImages[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk membangun setiap tombol dengan gambar dan tombol "Edit" yang sesuai
  Widget _buildButton(String imagePath) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white, // Warna latar belakang abu-abu
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 80,
            height: 80,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
