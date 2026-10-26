import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SimpleAppBar extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color(0xFFE8F5E9),
            borderRadius: BorderRadius.circular(14),
          ),
          child: const Icon(
            Ionicons.location,
            color: Color(0xFF2E7D32),
            size: 24,
          ),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'গন্তব্য খুঁজুন',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
                fontWeight: FontWeight.normal,
                fontFamily: "Hind",
              ),
            ),
            SizedBox(height: 2),
            Text(
              'বাংলাদেশ ঘুরে দেখুন',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1C2D27),
                fontFamily: "Hind",
              ),
            ),
          ],
        ),
      ],
    );
  }
}

