import 'package:flutter/material.dart';
import 'package:flutter_application_1/aplikasi/app/profile.dart';
import 'package:flutter_application_1/aplikasi/app/kelas.dart';
import 'package:flutter_application_1/aplikasi/Assets/notes.dart';
import 'package:flutter_application_1/aplikasi/app/school.dart';
import 'package:flutter_application_1/aplikasi/Assets/kalender.dart';
import 'package:flutter_application_1/aplikasi/Assets/Jadwal2.dart';
import 'package:flutter_application_1/aplikasi/Assets/Tugas2.dart';
import 'package:flutter_application_1/aplikasi/Assets/inbox.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Myngawiku"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const InboxPage()),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Text(
                "Menu",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.class_),
              title: const Text("Kelas"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const KelasPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text("School"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const SchoolPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.date_range),
              title: const Text("Kalender"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const KalenderPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.grey[100],
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // 🔹 Greeting + profile
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Halo, Abyan 👋",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Semoga harimu menyenangkan!",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage("assets/Myku.PNG"),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // 🔹 Card fitur
            _buildFeatureCard(
              context,
              icon: Icons.note,
              title: "3 Catatan Terakhir",
              description: "Lihat catatan terbaru yang kamu buat.",
              color: Colors.indigo,
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const NotesPage()),
                );
              },
            ),
            const SizedBox(height: 16),
            _buildFeatureCard(
              context,
              icon: Icons.schedule,
              title: "Jadwal Pelajaran Hari ini",
              description: "Cek mata pelajaran dan jam belajar.",
              color: Colors.green,
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Jadwal2Page()),
                );
              },
            ),
            const SizedBox(height: 16),
            _buildFeatureCard(
              context,
              icon: Icons.assignment,
              title: "Tugas Hari ini",
              description: "Daftar tugas yang harus dikerjakan.",
              color: Colors.orange,
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Tugas2Page()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // 🔹 Widget untuk membuat card fitur
  Widget _buildFeatureCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String description,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: color, size: 36),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(description, style: TextStyle(color: Colors.grey[600])),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
