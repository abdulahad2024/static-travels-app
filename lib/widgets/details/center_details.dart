import 'package:flutter/material.dart';
import 'package:static_travels_app/screen/details/travel_details_screen.dart';
import 'package:static_travels_app/widgets/details/info_tile.dart';

class CenterDetails extends StatelessWidget {
  const new({
    super.key,
    required this.widget,
    required this._textDark,
    required this._green,
  });

  final TravelDetailsScreen widget;
  final Color _textDark;
  final Color _green;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    widget.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1C2D27),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFF8E1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.star_rounded,
                        color: Colors.amber,
                        size: 18,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '${widget.rating}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1C2D27),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),

            Row(
              children: [
                const Icon(
                  Icons.location_on_rounded,
                  color: Color(0xFF2E7D32),
                  size: 18,
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    widget.location,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: InfoTile(
                    icon: Icons.schedule_rounded,
                    label: 'সময়কাল',
                    value: widget.duration,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: InfoTile(
                    icon: Icons.payments_outlined,
                    label: 'খরচ',
                    value: widget.price,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            const Text(
              'বিস্তারিত',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1C2D27),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              widget.details,
              style: TextStyle(
                fontSize: 14.5,
                height: 1.7,
                color: Colors.grey.shade700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
