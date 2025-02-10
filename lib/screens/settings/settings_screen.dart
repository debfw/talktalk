import 'package:flutter/material.dart';
import 'package:talktalk/screens/dashboard/dashboard_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Color(0xFF14181B),
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x33000000),
                      offset: Offset(0, 1),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          color: const Color(0x4D39D2C0),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color(0xFF39D2C0),
                            width: 2,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              'assets/avatar.png',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Joy Augustin',
                              style: TextStyle(
                                color: Color(0xFF14181B),
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'joy@augustin.com',
                              style: TextStyle(
                                color: Color(0xFF57636C),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
                child: Text(
                  'Account',
                  style: TextStyle(
                    color: Color(0xFF57636C),
                    fontSize: 16,
                  ),
                ),
              ),
              _buildSettingItem(
                icon: Icons.account_circle_outlined,
                title: 'Edit Profile',
              ),
              _buildSettingItem(
                icon: Icons.attach_money_rounded,
                title: 'Payment Options',
              ),
              _buildSettingItem(
                icon: Icons.notifications_none,
                title: 'Notification Settings',
              ),
          
              _buildSettingItem(
                icon: Icons.palette_outlined,
                title: 'Theme Customization',
              ),
              _buildSettingItem(
                icon: Icons.font_download_outlined,
                title: 'Font Size',
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
                child: Text(
                  'General',
                  style: TextStyle(
                    color: Color(0xFF57636C),
                    fontSize: 16,
                  ),
                ),
              ),
              _buildSettingItem(
                icon: Icons.help_outline_rounded,
                title: 'Support',
              ),
              _buildSettingItem(
                icon: Icons.privacy_tip_rounded,
                title: 'Privacy Policy',
              ),
              _buildSettingItem(
                icon: Icons.feedback_outlined,
                title: 'Feedback',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSettingItem({
    required IconData icon,
    required String title,
  }) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 5,
              color: Color(0x3416202A),
              offset: Offset(0, 2),
            )
          ],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Icon(
                icon,
                color: const Color(0xFF57636C),
                size: 24,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Color(0xFF14181B),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFF57636C),
                size: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
} 