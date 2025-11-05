import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/custom_card.dart';

class SkillsView extends GetView {
  const SkillsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Keahlian'),
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
                onTap: () => Get.toNamed('/home'),
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
                selected: true,
                onTap: () => Get.back(),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Keahlian Teknis',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            CustomCard(
              title: 'Pemrograman',
              description: 'Dart, Python, JavaScript, Java',
              icon: Icons.code,
            ),
            const SizedBox(height: 16),
            CustomCard(
              title: 'Framework & Tools',
              description: 'Flutter, GetX, Firebase, Git, Docker',
              icon: Icons.build,
            ),
            const SizedBox(height: 16),
            CustomCard(
              title: 'Database',
              description: 'MySQL, MongoDB, Firebase Firestore',
              icon: Icons.storage,
            ),
            const SizedBox(height: 24),
            const Text(
              'Keahlian Non-Teknis',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            CustomCard(
              title: 'Bahasa',
              description: 'Bahasa Indonesia (Native), English (Advanced)',
              icon: Icons.translate,
            ),
            const SizedBox(height: 16),
            CustomCard(
              title: 'Soft Skills',
              description:
                  'Problem Solving, Teamwork, Communication, Time Management',
              icon: Icons.people,
            ),
          ],
        ),
      ),
    );
  }

  // Widget bantu buat item menu
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
