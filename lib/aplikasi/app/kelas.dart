import 'package:flutter/material.dart';
import 'package:flutter_application_1/aplikasi/app/School.dart';
import 'package:flutter_application_1/aplikasi/app/home.dart';

class KelasPage extends StatelessWidget {
  const KelasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kelas'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Homepage'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('School'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const SchoolPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.date_range),
              title: const Text('Date'),
              onTap: () {
                // Navigator ke DatePage nanti
              },
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // contoh 3 kelas, ubah data sesuai kebutuhan
          _buildClassCard(
            context,
            title: 'Ilmu Muwani - 11',
            year: '2025/2026',
            teacher: 'Rusdi Pecenongan',
            color: Colors.indigo,
            avatarAsset: 'assets/class1.png', // ganti asset kalau perlu
          ),
          const SizedBox(height: 16),
          _buildClassCard(
            context,
            title: 'Sejarah - 11',
            year: '2025/2026',
            teacher: 'Ambarawa Kikiroyo',
            color: Colors.teal,
            avatarAsset: 'assets/class2.png',
          ),
          const SizedBox(height: 16),
          _buildClassCard(
            context,
            title: 'Muwancing Rek -11',
            year: '2025/2026',
            teacher: 'Fuad Parjono',
            color: Colors.deepOrange,
            avatarAsset: 'assets/class3.png',
          ),
        ],
      ),
    );
  }

  // Membuat satu card mirip Google Classroom (persegi empat / rectangular)
  Widget _buildClassCard(
    BuildContext context, {
    required String title,
    required String year,
    required String teacher,
    required Color color,
    required String avatarAsset,
  }) {
    return GestureDetector(
      onTap: () {
        // contoh navigasi ke halaman detail kelas (buat sendiri nanti)
        // Navigator.push(context, MaterialPageRoute(builder: (_) => ClassDetailPage(...)));
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Masuk ke kelas: $title')),
        );
      },
      child: Container(
        height: 200, // tinggi card, cukup kotak / persegi empat
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10), // sedikit rounded corner
          boxShadow: const [
            BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 3)),
          ],
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // 1) Header berwarna di bagian atas
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                height: 72,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title,
                    style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),

            // 2) Avatar kecil yang menumpuk (overlap) di kanan header
            Positioned(
              top: 36, // agar sedikit menempel ke header bawah
              right: 14,
              child: CircleAvatar(
                radius: 28,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage(avatarAsset), // ganti asset kalau belum ada
                ),
              ),
            ),

            // 3) Isi card (tahun & guru) ditempatkan di bawah header
            Positioned(
              top: 82,
              left: 14,
              right: 14,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(year, style: TextStyle(color: Colors.grey[700], fontSize: 13)),
                  const SizedBox(height: 6),
                  Text(teacher, style: TextStyle(color: Colors.grey[800], fontSize: 14)),
                  const SizedBox(height: 10),
                  // 4) Bar kecil ikon aksi di bawah kanan
                  Row(
                    children: [
                      IconButton(
                        onPressed: () { /* contoh aksi foto */ },
                        icon: const Icon(Icons.photo_camera_outlined),
                        color: Colors.grey[700],
                      ),
                      IconButton(
                        onPressed: () { /* contoh aksi folder */ },
                        icon: const Icon(Icons.folder_open),
                        color: Colors.grey[700],
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () { /* more */ },
                        icon: const Icon(Icons.more_vert),
                        color: Colors.grey[700],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
