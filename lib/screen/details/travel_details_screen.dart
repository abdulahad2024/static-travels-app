import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:static_travels_app/widgets/details/bottom_bar.dart';
import 'package:static_travels_app/widgets/details/center_details.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TravelDetailsScreen extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String location;
  final double rating;
  final String details;
  final String videoUrl;
  final String duration;
  final String price;

  const TravelDetailsScreen({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.location,
    required this.rating,
    required this.details,
    required this.videoUrl,
    required this.duration,
    required this.price,
  });

  @override
  State<TravelDetailsScreen> createState() => _TravelDetailsScreenState();
}

class _TravelDetailsScreenState extends State<TravelDetailsScreen> {
  YoutubePlayerController? _controller;
  bool _videoFailed = false;

  static const _green = Color(0xFF2E7D32);
  static const _darkGreen = Color(0xFF1E5631);
  static const _textDark = Color(0xFF1C2D27);
  static const _softBg = Color(0xFFF0F4F1);

  @override
  void initState() {
    super.initState();
    final videoId = YoutubePlayer.convertUrlToId(widget.videoUrl);
    if (videoId != null) {
      _controller = YoutubePlayerController(
        initialVideoId: videoId,
        flags: const YoutubePlayerFlags(autoPlay: false, mute: false),
      )..addListener(_onPlayerChanged);
    }
  }

  void _onPlayerChanged() {
    final controller = _controller;
    if (controller == null || !mounted) return;
    if (controller.value.hasError && !_videoFailed) {
      setState(() => _videoFailed = true);
    }
  }

  @override
  void deactivate() {
    _controller?.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller?.removeListener(_onPlayerChanged);
    _controller?.dispose();
    super.dispose();
  }

  Widget _fallbackImage() {
    return SizedBox(
      height: 230,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            widget.imageUrl,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, progress) {
              if (progress == null) return child;
              return Container(
                color: const Color(0xFFE8F5E9),
                child: const Center(
                  child: SizedBox(
                    width: 28,
                    height: 28,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.5,
                      color: _green,
                    ),
                  ),
                ),
              );
            },
            errorBuilder: (context, error, stackTrace) => Container(
              color: _softBg,
              child: Icon(
                Icons.image_not_supported_outlined,
                size: 40,
                color: Colors.grey.shade400,
              ),
            ),
          ),
          if (_videoFailed)
            Positioned(
              right: 12,
              bottom: 12,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'ভিডিও লোড করা যায়নি',
                  style: TextStyle(color: Colors.white, fontSize: 11),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildScaffold(Widget? player) {
    final topPadding = MediaQuery.of(context).padding.top;
    final bottomPadding = MediaQuery.of(context).padding.bottom;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFF9FBF9),
          elevation: 0,
          scrolledUnderElevation: 0,
          title: Text('ভ্রমণ বিস্তারিত', style: TextStyle(color: Colors.black)),
        ),

        backgroundColor: Colors.white,
        body: Column(
          children: [
            Stack(children: [Container(child: player ?? _fallbackImage())]),

            CenterDetails(widget: widget, textDark: _textDark, green: _green),

            BottomBar(
              bottomPadding: bottomPadding,
              widget: widget,
              darkGreen: _darkGreen,
              context: context,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = _controller;

    if (controller == null || _videoFailed) {
      return _buildScaffold(null);
    }

    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: controller,
        showVideoProgressIndicator: true,
        progressIndicatorColor: _green,
        progressColors: const ProgressBarColors(
          playedColor: _green,
          handleColor: _green,
        ),
      ),
      builder: (context, player) => _buildScaffold(player),
    );
  }
}
