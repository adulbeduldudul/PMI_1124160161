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
      // Arahkan 'home' langsung ke halaman profil kita
      home: const ProfilePage(), 
    );
  }
}
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sayyid Abdul Wasye'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Supaya benar-benar pas di tengah secara vertikal
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                ProfileHeaderWidget(
                  imagePath: "lib/assets/saburo.png",
                  name: 'Sayyid abdul wasye',
                  nim: 'NIM: 1124160161',
                  studyProgram: 'Program Studi: Software Engineering',
                ),
                SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileHeaderWidget extends StatelessWidget {
  final String imagePath;
  final String name;
  final String nim;
  final String studyProgram;

  const ProfileHeaderWidget({
    super.key,
    required this.imagePath,
    required this.name,
    required this.nim,
    required this.studyProgram,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage(imagePath),
        ),
        const SizedBox(height: 12),
        Text(
          name,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(nim, style: const TextStyle(fontSize: 16)),
        const SizedBox(height: 4),
        Text(studyProgram, style: const TextStyle(fontSize: 16)),
      ],
    );
  }
}
