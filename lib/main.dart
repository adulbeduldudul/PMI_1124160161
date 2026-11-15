import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Flutter Saya',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Halaman Utama'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'Halo world!',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Hapus 'const' di sini
      appBar: AppBar(
        title: const Text('Sayyid Abdul Wasye'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline), // Diubah jadi Icon dan Icons
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
