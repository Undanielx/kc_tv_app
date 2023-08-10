import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PlayerScreen extends StatefulWidget {
  final String url;
  const PlayerScreen({super.key, required this.url});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {

  late YoutubePlayerController _controller;
  late TextEditingController _idController;
  late TextEditingController _seekController;
  late PlayerState _playerState;
  late YoutubeMetaData _videoMetaData;
  bool _isPlayerReady=false;
  late String _VideoId;


  @override
  void initState(){
    super.initState();
    _VideoId = YoutubePlayer.convertUrlToId(widget.url).toString();
    print('VideoId: $_VideoId');
    _controller = YoutubePlayerController(
      initialVideoId: _VideoId, 
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,) );
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}