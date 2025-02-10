import 'package:flutter/material.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Therapeutic Playlist'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 10, // Example count
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: const Icon(Icons.music_note),
              title: Text('Song ${index + 1}'),
              subtitle: const Text('Artist Name'),
              trailing: const Icon(Icons.play_arrow),
              onTap: () {
                // Implement song playback
              },
            ),
          );
        },
      ),
    );
  }
} 