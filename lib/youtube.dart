import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YouTubePlayerPages extends StatefulWidget {
  const YouTubePlayerPages({Key? key}) : super(key: key);

  @override
  State<YouTubePlayerPages> createState() => _YouTubePlayerPagesState();
}

class _YouTubePlayerPagesState extends State<YouTubePlayerPages> {
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'wY6QAyAUJps',
    flags: const YoutubePlayerFlags(
      autoPlay: true,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('YouTube Player'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            progressColors: const ProgressBarColors(
              bufferedColor: Colors.red,
              handleColor: Colors.orange,
              backgroundColor: Colors.purple,
              playedColor: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
