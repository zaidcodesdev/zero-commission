
import 'package:flutter/material.dart';
import 'profile_information.dart';
import 'notifications_screen.dart';
import 'privacy_policy_screen.dart';
import 'terms_conditions_screen.dart';
import 'help_screen.dart';
import 'about_us_screen.dart';

class ProfileScreen extends StatelessWidget {
   ProfileScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFFF5F5F5),
      body:
         Column(
          children: [
            Container(
              width: double.infinity,
              height: 170,
              padding:  EdgeInsets.symmetric(
                horizontal: 8,
              ),
              decoration:  BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF4385F5),
                    Color(0xFF1976ED),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  // Status bar space
                   SizedBox(height: 55),

                  // Profile row
                  Row(
                    children: [
                      // Profile avatar
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:  Color(0xFF75A7F7),
                          border: Border.all(
                            color:  Color(0xFFB8D3FF),
                            width: 1.5,
                          ),
                        ),
                        alignment: Alignment.center,
                        child:  Text(
                          'AS',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),

                       SizedBox(width: 12),

                      // Name and phone number
                       Expanded(
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Amit Sharma',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              '98765-43210',
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(0xFFE0ECFF),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Right arrow
                       Icon(
                        Icons.chevron_right,
                        size: 25,
                        color: Colors.white,
                      ),

                       SizedBox(width: 2),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 40,),

            Container(
              width: double.infinity,
              color: Color(0xFFF8F9FB),
              child: Column(
                children: [
                  // Profile Information

                     ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 30),
                      leading: Icon(
                        Icons.person_outline,
                        size: 22,
                        color: Color(0xFF607594),
                      ),
                      title: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfileInformation(),
                            ),
                          );
                        },
                        child: Text(
                          'Profile Information',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF293B56),
                          ),
                        ),
                      ),
                      onTap: () {},
                    ),


                  // Notification Settings
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    leading: Icon(
                      Icons.notifications_none,
                      size: 22,
                      color: Color(0xFF607594),
                    ),
                    title: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NotificationsScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Notification Settings',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF293B56),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),

                  // Privacy Policy
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    leading: Icon(
                      Icons.shield_outlined,
                      size: 22,
                      color: Color(0xFF607594),
                    ),
                    title: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PrivacyPolicyScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Privacy Policy',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF293B56),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),

                  // Terms & Conditions
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    leading: Icon(
                      Icons.description_outlined,
                      size: 22,
                      color: Color(0xFF607594),
                    ),
                    title: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TermsConditionsScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Terms & Conditions',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF293B56),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),

                  // Help & Support
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    leading: Icon(
                      Icons.help_outline,
                      size: 22,
                      color: Color(0xFF607594),
                    ),
                    title: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HelpScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Help & Support',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF293B56),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),

                  // About Us
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    leading: Icon(
                      Icons.info_outline,
                      size: 22,
                      color: Color(0xFF607594),
                    ),
                    title: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AboutUsScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'About Us',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF293B56),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),

                  // Divider
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: Divider(
                      height: 1,
                      color: Color(0xFFF0F2F5),
                    ),
                  ),

                  // Logout
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    leading: Icon(
                      Icons.logout,
                      size: 22,
                      color: Colors.redAccent,
                    ),
                    title: Text(
                      'Logout',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.redAccent,
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),

          ],
        ),

    );
  }
}
