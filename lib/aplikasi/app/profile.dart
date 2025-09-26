import 'package:flutter/material.dart';
import 'package:flutter_application_1/aplikasi/app/home.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 20),

            // Foto Profil
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/Myku.PNG"), // Ganti dengan fotomu
            ),
            const SizedBox(height: 15),

            // Nama
            const Text(
              "Abyan Eshan",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Siswa SMA - Kelas 12",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),

            // Card Data Diri
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.badge, color: Colors.blueAccent),
                      title: Text("NIS"),
                      subtitle: Text("1234567890"),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.school, color: Colors.blueAccent),
                      title: Text("Jurusan"),
                      subtitle: Text("IPS"),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.email, color: Colors.blueAccent),
                      title: Text("Email"),
                      subtitle: Text("abyan@example.com"),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.phone, color: Colors.blueAccent),
                      title: Text("Telepon"),
                      subtitle: Text("+62 812-3456-7890"),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Tombol Logout
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/login',
                    (route) => false,
                  );
                },
                icon: const Icon(Icons.logout),
                label: const Text("Logout"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
