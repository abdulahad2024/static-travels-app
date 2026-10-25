import 'package:flutter/material.dart';
import 'package:static_travels_app/screen/explore_travels/explore_travels_screen.dart';

class PopularRowHeader extends StatelessWidget {
  const PopularRowHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'জনপ্রিয় গন্তব্যসমূহ',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1C2D27),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ExploreTravelsScreen(),
              ),
            );
          },
          child: const Text(
            'সব দেখুন',
            style: TextStyle(
              color: Color(0xFF2E7D32),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}