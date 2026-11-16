import 'package:flutter/material.dart';
import 'pages/profile.dart'; // Halaman profile Anda

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // SIMULASI STATUS LOGIN (Nanti bisa diganti dengan SharedPreferences / Firebase / API)
    bool isLogin = false; // Ubah ke true jika ingin langsung tes ke halaman profil

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Flutter Saya',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 25, 5, 59),
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
      ),
      themeMode: ThemeMode.system,
      
      // LOGIKA PENGECEKAN LOGIN SEDERHANA
      // Jika isLogin true -> Masuk ke ProfilePage (atau MainPage), jika false -> Masuk ke LoginPage
      home: isLogin ? const ProfilePage() : const LoginPage(),
    );
  }
}

// ==========================================
// CONTOH HALAMAN LOGIN SEMENTARA
// ==========================================
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Terlebih Dahulu'), centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Silakan Login untuk Masuk ke Aplikasi',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Aksi ketika tombol login diklik
                  // Di sini nanti Anda arahkan menggunakan Navigator.pushReplacement ke halaman utama/profil
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Tombol login diklik!')),
                  );
                },
                child: const Text('Login Sekarang'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}