import 'package:flutter/material.dart';
import 'package:talktalk/screens/chat/chat_screen.dart';
import 'package:talktalk/screens/settings/settings_screen.dart';
import 'package:talktalk/screens/report/daily_report_screen.dart';
import 'package:talktalk/screens/recommendations/recommendations_screen.dart';
import 'package:talktalk/screens/journal/journal_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 32.0, // 2rem left padding for title
        title: const Text('AI Therapist'),
        elevation: 2,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 32.0), // 2rem right padding for actions
            child: IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsScreen()),
                );
              },
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            // Main Chat Card
            Card(
              child: ListTile(
                leading: const Icon(Icons.chat_bubble_outline, size: 28),
                title: const Text('Start Therapy Session'),
                subtitle: const Text('Talk to your AI therapist'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ChatScreen()),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            // Today's Recommendations Card
            Card(
              child: ListTile(
                leading: const Icon(Icons.recommend, size: 28),
                title: const Text("Today's Recommendations"),
                subtitle: const Text('Playlist, Reading & Daily Quote'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RecommendationsScreen()),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            // Daily Report button
            Card(
              child: ListTile(
                leading: const Icon(Icons.bar_chart, size: 28),
                title: const Text('Daily Report'),
                subtitle: const Text('Track your progress'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DailyReportScreen()),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            // Journal Entry button
            Card(
              child: ListTile(
                leading: const Icon(Icons.edit_note, size: 28),
                title: const Text('Journal Entry'),
                subtitle: const Text('Record your thoughts and feelings'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const JournalScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
} 