import 'package:flutter/material.dart';

class NoteDetailPage extends StatelessWidget {
  final String title;
  final String content;
  final String date;

  const NoteDetailPage({
    super.key,
    required this.title,
    required this.content,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Judul
            Text(
              title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 10),

            // Tanggal
            Text(
              date,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontStyle: FontStyle.italic,
              ),
            ),
            const Divider(height: 30, thickness: 1),

            // Isi catatan
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  content,
                  style: const TextStyle(fontSize: 16, color: Colors.black87),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
