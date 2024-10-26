import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dashboard.dart'; // Impor file dashboard.dart

//tes commit

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Kontroler untuk TextField
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Fungsi login yang melakukan navigasi ke halaman Dashboard
  void login(BuildContext context) {
    String username = usernameController.text;
    String password = passwordController.text;

    // Validasi username dan password
    if (username == 'admin' && password == 'admin') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Dashboard(username: username), // Kirim username ke Dashboard
        ),
      );
    } else {
      // Tampilkan alert jika username/password salah
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Error'),
            content: const Text('Username atau Password salah!'),
            actions: [
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop(); // Tutup dialog
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: usernameController, // Set controller untuk username
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Masukan Username',
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: passwordController, // Set controller untuk password
                obscureText: true, // Membuat password tidak terlihat
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Masukan Password',
                ),
              ),
              const SizedBox(height: 24.0), // Space between TextFields and Button
              
              // Container untuk mengubah warna background CupertinoButton
              Container(
                decoration: BoxDecoration(
                  color: Colors.green, // Warna background baru
                  borderRadius: BorderRadius.circular(8), // Radius untuk sudut
                ),
                child: CupertinoButton(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  onPressed: () => login(context), // Memanggil fungsi login dengan context
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white), // Warna teks tombol
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
