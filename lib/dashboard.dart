import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  final String username; // Variabel untuk menyimpan username

  const Dashboard({Key? key, required this.username}) : super(key: key); // Menerima username di constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome, $username!', // Menampilkan username
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16), // Jarak antara teks pertama dan kedua
            const Text(
              'NIM : 22552011128', // Teks tambahan yang Anda inginkan
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
