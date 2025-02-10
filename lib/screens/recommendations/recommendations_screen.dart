import 'package:flutter/material.dart';
import 'package:talktalk/screens/recommendations/playlist_screen.dart';
import 'package:talktalk/screens/recommendations/reading_screen.dart';
import 'package:talktalk/screens/recommendations/quote_screen.dart';
import 'package:talktalk/screens/dashboard/dashboard_screen.dart';

class RecommendationsScreen extends StatelessWidget {
  const RecommendationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF14181B),
            size: 30,
          ),
          onPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const DashboardScreen()),
          ),
        ),
        title: const Text(
          "Today's Recommendations",
          style: TextStyle(
            color: Color(0xFF14181B),
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildFeatureCard(
              context,
              'Therapeutic Playlist',
              'Curated music to help you relax and reflect',
              Icons.music_note,
              Colors.purple.shade100,
              () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PlaylistScreen()),
              ),
            ),
            const SizedBox(height: 16),
            _buildFeatureCard(
              context,
              'Reading Recommendations',
              'Books and articles for personal growth',
              Icons.book,
              Colors.blue.shade100,
              () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ReadingScreen()),
              ),
            ),
            const SizedBox(height: 16),
            _buildFeatureCard(
              context,
              'Daily Quote',
              'Inspirational quote for today',
              Icons.format_quote,
              Colors.orange.shade100,
              () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const QuoteScreen()),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard(
    BuildContext context,
    String title,
    String subtitle,
    IconData icon,
    Color color,
    VoidCallback onTap,
  ) {
    return Card(
      elevation: 2,
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: color.withOpacity(0.3),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, size: 32),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(subtitle),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      ),
    );
  }
} 