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
        title: const Text('Profil Sayid'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              // Menggunakan class terpisah untuk Header Foto & Identitas
              ProfileHeader(
                imagePath: 'lib/assets/saburo.png',
                name: 'Sayyid abdul wasye',
                nim: 'NIM: 1124160161',
                studyProgram: 'Program Studi: Software Engineering',
              ),
              SizedBox(height: 24),

              // Menggunakan class terpisah untuk Card Informasi Kontak
              InfoCard(
                title: 'Informasi Kontak',
                children: [
                  InfoTile(
                    icon: Icons.email_outlined,
                    label: 'Email',
                    value: 'Sayyidwasye@gmail.com',
                  ),
                  InfoTile(
                    icon: Icons.phone_outlined,
                    label: 'Nomor HP',
                    value: '+62 881 9972581',
                  ),
                  InfoTile(
                    icon: Icons.class_outlined,
                    label: 'Kelas',
                    value: 'TI 24 SH SE',
                  ),
                  InfoTile(
                    icon: Icons.code,
                    label: 'Akun GitHub',
                    value: 'github.com/sayyidabdul.com',
                  ),
                ],
              ),
              SizedBox(height: 16),

              InfoCard(
                title: 'Keahlian & Hobi',
                children: [
                  InfoTile(
                    icon: Icons.computer,
                    label: 'Pemrograman',
                    value: 'Python, Dart, Flutter',
                  ),
                  InfoTile(
                    icon: Icons.data_array,
                    label: 'Data Science',
                    value: 'Pandas, NumPy, EDA',
                  ),
                  InfoTile(
                    icon: Icons.sports_esports_outlined,
                    label: 'Hobi',
                    value: 'Reverse Engineering & Gaming',
                  ),
                ],
              ),
              SizedBox(height: 16),
              InfoCard(
                title: 'Makanan kesukaan',
                children: [
                  InfoTile(
                    icon: Icons.food_bank_outlined,
                    label: 'Top makanan padang',
                    value: 'rendang, sate padang, tunjang',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Terima kasih telah melihat profil saya'),
            ),
          );
        },
        child: const Icon(Icons.thumb_up),
      ),
    );
  }
}
class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.title,
    required this.children,
  });

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Text(
                title,
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Divider(),
            ...children, // Memuat daftar InfoTile ke dalam Card
          ],
        ),
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  const InfoTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      subtitle: Text(value),
    );
  }
}
class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
    required this.imagePath,
    required this.name,
    required this.nim,
    required this.studyProgram,
  });

  final String imagePath;
  final String name;
  final String nim;
  final String studyProgram;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Center(
          child: CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage(imagePath),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          name,
          style: textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6),
        Text(
          nim,
          style: textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 4),
        Text(
          studyProgram,
          style: textTheme.bodyMedium?.copyWith(
            color: Colors.grey,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
class KartuCatatan extends StatelessWidget {
  const KartuCatatan({
    super.key,
    required this.judul,
    required this.isiPesan,
  });
  final String judul;
  final String isiPesan;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              judul,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}