import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/custom_card.dart';

class ProjectsView extends GetView {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengalaman Proyek'),
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
                accountEmail: const Text('Mahasiswa Informatika Unsoed'),
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
                selected: true,
                onTap: () => Get.back(),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Proyek yang Pernah Dikerjakan',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            CustomCard(
              title: 'Aplikasi E-Learning',
              description:
                  'Mengembangkan aplikasi pembelajaran online menggunakan Flutter dan Firebase. Fitur: video streaming, kuis, dan sertifikat digital.',
              icon: Icons.laptop,
            ),
            const SizedBox(height: 16),
            CustomCard(
              title: 'Sistem Monitoring IoT',
              description:
                  'Membangun sistem monitoring suhu dan kelembaban menggunakan Arduino dan platform cloud. Data ditampilkan dalam dashboard real-time.',
              icon: Icons.sensors,
            ),
            const SizedBox(height: 16),
            CustomCard(
              title: 'Chatbot Customer Service',
              description:
                  'Mengembangkan chatbot menggunakan NLP untuk merespons pertanyaan pelanggan otomatis. Integrasi dengan WhatsApp Business API.',
              icon: Icons.chat,
            ),
          ],
        ),
      ),
    );
  }

  // Widget bantu drawer item agar seragam dengan halaman lain
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
