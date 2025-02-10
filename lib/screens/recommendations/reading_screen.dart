import 'package:flutter/material.dart';

class ReadingScreen extends StatelessWidget {
  const ReadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reading Recommendations'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 5, // Example count
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Book Title ${index + 1}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text('Author Name'),
                  const SizedBox(height: 8),
                  const Text(
                    'A brief description of the book and why it might be helpful...',
                  ),
                  const SizedBox(height: 8),
                  TextButton(
                    onPressed: () {
                      // Implement book link
                    },
                    child: const Text('Read More'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
} 