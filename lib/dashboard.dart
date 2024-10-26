// dashboard.dart
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  final String username; // Variabel untuk menyimpan username

  const Dashboard({Key? key, required this.username}) : super(key: key); // Menerima username di constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Center(
        child: Text(
          'Welcome, $username!', // Menampilkan username
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
