import 'package:flutter/material.dart';
import 'destination_card.dart';

class CardPopularExploreGrid extends StatelessWidget {
  const new({
    super.key,
    required this.cards,
  });

  final List<DestinationCard> cards;

  @override
  Widget build(BuildContext context) {
    if (cards.isEmpty) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Center(
          child: Text(
            'কোন গন্তব্য খুঁজে পাওয়া যায়নি',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      );
    }
    return GridView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: cards.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        mainAxisExtent: 200,
      ),
      itemBuilder: (context, index) => cards[index],
    );
  }
}
