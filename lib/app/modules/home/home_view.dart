import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/custom_card.dart';

class HomeView extends GetView {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Portfolio')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Menu Navigasi',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () => Get.toNamed('/home'),
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Pendidikan'),
              onTap: () => Get.toNamed('/education'),
            ),
            ListTile(
              leading: const Icon(Icons.work),
              title: const Text('Proyek'),
              onTap: () => Get.toNamed('/projects'),
            ),
            ListTile(
              leading: const Icon(Icons.build),
              title: const Text('Keahlian'),
              onTap: () => Get.toNamed('/skills'),
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title: const Text('Kontak'),
              onTap: () => Get.toNamed('/contact'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(
                'assets/irfan.jpg',
              ), // Ganti dengan foto profil
            ),
            const SizedBox(height: 16),
            const Text(
              'Irfan Romadhon',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Mahasiswa Teknik Informatika',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            CustomCard(
              title: 'Tentang Saya',
              description:
                  'Saya adalah mahasiswa semester 5 yang antusias dengan pengembangan aplikasi mobile dan web. Saya memiliki minat khusus dalam teknologi Flutter dan machine learning.',
              icon: Icons.person,
            ),
            const SizedBox(height: 16),
            CustomCard(
              title: 'Tujuan Karir',
              description:
                  'Menjadi developer full-stack yang handal dan berkontribusi pada proyek-proyek inovatif yang bermanfaat bagi masyarakat.',
              icon: Icons.flag,
            ),
          ],
        ),
      ),
    );
  }
}
