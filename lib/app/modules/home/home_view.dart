import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/custom_card.dart';

class HomeView extends GetView {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portofolio'),
        backgroundColor: Colors.blue.shade700,
        elevation: 2,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.grey[100],
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF2196F3), Color(0xFF64B5F6)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: AssetImage('assets/irfan.jpg'),
                ),
                accountName: const Text(
                  'Irfan Romadhon Widodo',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                accountEmail: const Text('Mahasiswa Informatika UNsoed'),
              ),

              _buildDrawerItem(
                icon: Icons.home,
                text: 'Home',
                selected: true,
                onTap: () => Get.back(),
              ),
              _buildDrawerItem(
                icon: Icons.school,
                text: 'Pendidikan',
                onTap: () => Get.toNamed('/education'),
              ),
              _buildDrawerItem(
                icon: Icons.work,
                text: 'Proyek',
                onTap: () => Get.toNamed('/projects'),
              ),
              _buildDrawerItem(
                icon: Icons.build,
                text: 'Keahlian',
                onTap: () => Get.toNamed('/skills'),
              ),
              _buildDrawerItem(
                icon: Icons.contact_mail,
                text: 'Kontak',
                onTap: () => Get.toNamed('/contact'),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/irfan.jpg'),
            ),
            const SizedBox(height: 16),
            const Text(
              'Irfan Romadhon Widodo',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Mahasiswa Teknik Informatika - Universitas Jenderal Soedirman',
              textAlign: TextAlign.center,
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

  // Widget bantu untuk membuat item menu drawer yang seragam dan interaktif
  Widget _buildDrawerItem({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
    bool selected = false,
  }) {
    return ListTile(
      leading: Icon(icon, color: selected ? Colors.blue : Colors.grey[800]),
      title: Text(
        text,
        style: TextStyle(
          color: selected ? Colors.blue : Colors.black,
          fontWeight: selected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      onTap: onTap,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      tileColor: selected ? Colors.blue.shade50 : null,
      hoverColor: Colors.blue.shade100,
    );
  }
}
