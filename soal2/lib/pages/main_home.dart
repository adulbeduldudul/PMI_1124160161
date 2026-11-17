import 'package:flutter/material.dart';
import 'profile.dart'; // Mengimpor file profil Anda yang sudah ada

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // 1. Variabel untuk menyimpan indeks halaman yang aktif (0: Home, 1: Product, 2: Profile)
  int _currentIndex = 0;

  // 2. Daftar halaman yang akan dipanggil berdasarkan indeks di atas
  final List<Widget> _pages = [
    const HomePage(),
    const ProductPage(),
    const ProfilePage(), // Memanggil file profile.dart Anda di sini!
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Menampilkan halaman sesuai indeks yang dipilih
      body: _pages[_currentIndex],

      // 3. Tombol Toggle Navigasi di Bawah
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index; // Mengubah halaman saat ikon bawah diklik
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepPurple, // Warna ikon saat aktif
        unselectedItemColor: Colors.grey, // Warna ikon saat tidak aktif
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            activeIcon: Icon(Icons.shopping_bag),
            label: 'Product',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Home'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Selamat Datang di Beranda (Home)!',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Product'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Daftar Produk Tersedia di Sini',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}