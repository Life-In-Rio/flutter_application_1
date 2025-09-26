import 'package:flutter/material.dart';

import 'package:flutter_application_1/aplikasi/app/home.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    // contoh data inbox
    final List<Map<String, String>> inboxData = [
      {
        "title": "Pengumuman Ujian",
        "subtitle": "Ujian matematika akan dilaksanakan Senin depan.",
        "time": "20 Sep 2025"
      },
      {
        "title": "Reminder Tugas",
        "subtitle": "Jangan lupa mengumpulkan tugas PAI sebelum deadline.",
        "time": "18 Sep 2025"
      },
    ];

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("Inbox"),
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
      body: inboxData.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.notifications_off,
                      size: 80, color: Colors.grey.shade400),
                  const SizedBox(height: 16),
                  const Text(
                    "Tidak ada pesan baru",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: inboxData.length,
              itemBuilder: (context, index) {
                final item = inboxData[index];
                return Card(
                  elevation: 2,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(Icons.notifications,
                          color: Colors.blueAccent),
                    ),
                    title: Text(
                      item["title"]!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    subtitle: Text(
                      item["subtitle"]!,
                      style: const TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    trailing: Text(
                      item["time"]!,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
