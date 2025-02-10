import 'package:flutter/material.dart';
import 'package:talktalk/screens/dashboard/dashboard_screen.dart';

class DailyReportScreen extends StatefulWidget {
  const DailyReportScreen({Key? key}) : super(key: key);

  @override
  State<DailyReportScreen> createState() => _DailyReportScreenState();
}

class _DailyReportScreenState extends State<DailyReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F4F8),
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
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: Color(0x33000000),
                    offset: Offset(0, 2),
                  )
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 32, 16, 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                            color: const Color(0x4C4B39EF),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(0xFF4B39EF),
                              width: 2,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(44),
                            child: Image.asset(
                              'assets/avatar.png',
                              width: 44,
                              height: 44,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 4),
                                  child: Text(
                                    'Welcome',
                                    style: TextStyle(
                                      color: Color(0xFF14181B),
                                      fontSize: 24,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                const Text(
                                  'Your recent activity is below.',
                                  style: TextStyle(
                                    color: Color(0xFF14181B),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.add_circle_outline_rounded,
                            color: Color(0xFF57636C),
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(right: 12),
                              child: Icon(
                                Icons.radio_button_checked,
                                color: Color(0xFF4B39EF),
                                size: 16,
                              ),
                            ),
                            Text(
                              'Mood',
                              style: TextStyle(
                                color: Color(0xFF14181B),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(right: 12),
                              child: Icon(
                                Icons.radio_button_checked,
                                color: Color(0xFF39D2C0),
                                size: 16,
                              ),
                            ),
                            Text(
                              'Progress',
                              style: TextStyle(
                                color: Color(0xFF14181B),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Placeholder for chart
                  Container(
                    width: double.infinity,
                    height: 200,
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Weekly Overview',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Last 7 Days',
                                style: TextStyle(
                                  color: Color(0xFF57636C),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                _buildChartBar('M', 0.5, const Color(0xFF4B39EF)),
                                _buildChartBar('T', 0.7, const Color(0xFF39D2C0)),
                                _buildChartBar('W', 0.3, const Color(0xFF4B39EF)),
                                _buildChartBar('T', 0.8, const Color(0xFF39D2C0)),
                                _buildChartBar('F', 0.6, const Color(0xFF4B39EF)),
                                _buildChartBar('S', 0.4, const Color(0xFF39D2C0)),
                                _buildChartBar('S', 0.9, const Color(0xFF4B39EF)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
                children: [
                  _buildActivityCard(
                    title: 'Morning Check-in',
                    description: 'How are you feeling today?',
                    time: '9:00 AM',
                  ),
                  _buildActivityCard(
                    title: 'Therapy Session',
                    description: 'Session completed with AI therapist',
                    time: '2:30 PM',
                  ),
                  _buildActivityCard(
                    title: 'Evening Reflection',
                    description: 'Record your thoughts and progress',
                    time: '8:00 PM',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActivityCard({
    required String title,
    required String description,
    required String time,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            blurRadius: 3,
            color: Color(0x33000000),
            offset: Offset(0, 1),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Container(
              width: 4,
              height: 60,
              decoration: BoxDecoration(
                color: const Color(0xFF4B39EF),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      description,
                      style: const TextStyle(
                        color: Color(0xFF57636C),
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      time,
                      style: const TextStyle(
                        color: Color(0xFF57636C),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChartBar(String label, double height, Color color) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 20,
          height: 100 * height,
          decoration: BoxDecoration(
            color: color.withOpacity(0.2),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 20,
                height: 100 * height * 0.7,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            color: Color(0xFF57636C),
            fontSize: 12,
          ),
        ),
      ],
    );
  }
} 