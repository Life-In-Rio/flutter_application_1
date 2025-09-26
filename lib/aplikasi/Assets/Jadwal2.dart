import 'package:flutter/material.dart';
import 'package:flutter_application_1/aplikasi/app/home.dart';

class Jadwal2Page extends StatelessWidget {
  const Jadwal2Page({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> jadwal = [
      {"jam": "07:00 - 08:30", "mapel": "Muwancing"},
      {"jam": "08:30 - 10:00", "mapel": "Ilmu pengetahuan Muwani"},
      {"jam": "10:15 - 11:45", "mapel": "Silat pesilitan PSHT"},
      {"jam": "13:00 - 14:30", "mapel": "Ilmu Cukur Kang Rusdi"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Jadwal Pelajaran"),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
           Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                ); // balik ke halaman sebelumnya
          },
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: jadwal.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 3,
            child: ListTile(
              leading: const Icon(Icons.book, color: Colors.green),
              title: Text(jadwal[index]["mapel"]!),
              subtitle: Text(jadwal[index]["jam"]!),
            ),
          );
        },
      ),
    );
  }
}
