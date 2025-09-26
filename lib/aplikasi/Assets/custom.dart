import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final double? height;

  const CustomCard({
    super.key,
    required this.title,
    this.onTap,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Card(
        color: Colors.blue[700],
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Container(
          height: height ?? 110,
          padding: const EdgeInsets.all(12),
          alignment: Alignment.center,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
