import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        const Text(
          'পরবর্তী গন্তব্য কোথায়?',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1C2D27),
          ),
        ),

        const SizedBox(height: 4),
        const Text(
          'আপনার মনের মতো ঘুরে বেড়ানোর জায়গা খুঁজুন।',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),

      ],
    );
  }
}