import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/custom_card.dart';

class ProjectsView extends GetView {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pengalaman Proyek')),
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
              onTap: () => Get.back(),
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
}
