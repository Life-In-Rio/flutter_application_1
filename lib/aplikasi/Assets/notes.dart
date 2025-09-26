import 'package:flutter/material.dart';
import 'package:flutter_application_1/aplikasi/Assets/notes_detail.dart';
import 'package:flutter_application_1/aplikasi/app/home.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> notes = [
      {
        "title": "Catatan PAI",
        "content": "Rangkuman materi berbakti kepada orang tua dan guru...",
        "date": "20 September 2025"
      },
      {
        "title": "Catatan Matematika",
        "content": "Integral dasar dan latihan soal halaman 75...",
        "date": "18 September 2025"
      },
      {
        "title": "Catatan Bahasa Indonesia",
        "content": "Analisis cerpen ‘Robohnya Surau Kami’...",
        "date": "15 September 2025"
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Catatan Terakhir"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        // 🔹 Tombol Back
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
           Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                ); // balik ke halaman sebelumnya
          },
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: notes.length,
        itemBuilder: (context, index) {
          final note = notes[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => NoteDetailPage(
                    title: note["title"]!,
                    content: note["content"]!,
                    date: note["date"]!,
                  ),
                ),
              );
            },
            child: Card(
              elevation: 4,
              margin: const EdgeInsets.only(bottom: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      note["title"]!,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      note["content"]!,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 12),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        note["date"]!,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Nanti bisa diarahkan ke halaman tambah catatan
        },
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.add),
      ),
    );
  }
}
