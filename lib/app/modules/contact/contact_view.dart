import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/custom_card.dart';

class ContactView extends GetView {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kontak')),
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
              onTap: () => Get.back(),
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
              'Hubungi Saya',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            CustomCard(
              title: 'Email',
              description: 'john.doe@example.com',
              icon: Icons.email,
            ),
            const SizedBox(height: 16),
            CustomCard(
              title: 'Telepon',
              description: '+62 823-2607-3406',
              icon: Icons.phone,
            ),
            const SizedBox(height: 16),
            CustomCard(
              title: 'LinkedIn',
              description: 'linkedin.com/in/irfanromadhonwd/',
              icon: Icons.link,
            ),
            const SizedBox(height: 16),
            CustomCard(
              title: 'GitHub',
              description: 'https://github.com/IrfanRomadhonWidodo',
              icon: Icons.code,
            ),
            const SizedBox(height: 24),
            const Text(
              'Lokasi',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            CustomCard(
              title: 'Alamat',
              description: 'Purwokerto, Banyumas',
              icon: Icons.location_on,
            ),
          ],
        ),
      ),
    );
  }
}
