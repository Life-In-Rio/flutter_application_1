
import 'package:flutter/material.dart';
import 'package:flutter_application_1/aplikasi/app/home.dart';

class Tugas2Page extends StatelessWidget {
  const Tugas2Page({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> tugas = [
      {"mapel": "Muwancing", "tugas": "Teknik Muwancing Sama Pak Amba"},
      {"mapel": "Ilmu pengetahuan Muwani", "tugas": "Explore Muwani Adventure"},
      {"mapel": "Silat Pesilitan PSHT", "tugas": "Silat bersama Rafa PSHT"},
      {"mapel": "Ilmu Cukur Kang Rusdi", "tugas": "Belajar Gerak Cukur Aduh Gantengnya"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tugas Hari ini"),
        backgroundColor: Colors.orange,
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
        itemCount: tugas.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 3,
            child: ListTile(
              leading: const Icon(Icons.assignment, color: Colors.orange),
              title: Text(tugas[index]["mapel"]!),
              subtitle: Text(tugas[index]["tugas"]!),
            ),
          );
        },
      ),
    );
  }
}
