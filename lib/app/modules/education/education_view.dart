import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/custom_card.dart';

class EducationView extends GetView {
  const EducationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pendidikan')),
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
              onTap: () => Get.back(),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Riwayat Pendidikan',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            CustomCard(
              title: 'Universitas Jenderal Soedirman',
              description: 'S1 Teknik Informatika (2023 - Sekarang)\nIPK: 3.91',
              icon: Icons.school,
            ),
            const SizedBox(height: 16),
            CustomCard(
              title: 'SMA Negeri 4 Purwokerto',
              description: 'Jurusan IPA (2020 - 2023)\nNilai UN: 85.5',
              icon: Icons.account_balance,
            ),
            const SizedBox(height: 16),
            CustomCard(
              title: 'Sertifikasi',
              description:
                  'Google Associate Android Developer\nAWS Certified Cloud Practitioner',
              icon: Icons.card_membership,
            ),
          ],
        ),
      ),
    );
  }
}
