import 'package:flutter/material.dart';
import 'package:kc_tv_app/widgets/suggestion_card.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ariantors TV',
      style: Theme.of(context).textTheme.headlineLarge,
      ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Recomendado para ti',
              style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SuggestionCard(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Albums',
            backgroundColor: Color.fromARGB(255, 57, 1, 107),
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.music_video),
            label: 'Video tracks',
            backgroundColor: Color.fromARGB(255, 57, 1, 107),
           ),
           BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: 'list tracks',
            backgroundColor: Color.fromARGB(255, 57, 1, 107),
           ),
        ],
        backgroundColor: Color.fromARGB(255, 140, 47, 245),
        onTap: null,
        ),
    );
  }
}