import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/custom_card.dart';

class SkillsView extends GetView {
  const SkillsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Keahlian')),
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
              onTap: () => Get.back(),
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
}
