import 'package:flutter/material.dart';

class ExploreHeader extends StatelessWidget {
  const ExploreHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'আরও অনুসন্ধান করুন',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1C2D27),
          ),
        ),
        Text(
          'সব দেখুন',
          style: TextStyle(
            color: Color(0xFF2E7D32),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}