import 'package:flutter/material.dart';
import 'package:zero_commission/screens/home_screen1.dart';
import 'package:zero_commission/screens/report_screen.dart';
import 'More_options_screen.dart';
import 'accounts_screen_2.dart';

class AccountsScreen extends StatelessWidget {
  AccountsScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F8),
      body: SafeArea(
        child: Column(
          children: [

            // Top Bar
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Icon(
                    Icons.menu,
                    size: 24,
                    color: Colors.black,
                  ),

                  Text(
                    'Accounts',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF111827),
                    ),
                  ),

                  Icon(
                    Icons.notifications_none,
                    size: 25,
                    color: Colors.black,
                  ),
                ],
              ),
            ),

            // Screen Content
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 32),
                        child: Text(
                          'Credit Accounts Summary',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF20233F),
                          ),
                        ),
                      ),

                      SizedBox(height: 18),

                      // Summary Card
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 14,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [

                            _accountRow(
                              Icons.credit_card_outlined,
                              Color(0xFFEAF2FF),
                              Color(0xFF2879FF),
                              'Total Accounts',
                              '12',
                              'Total',
                            ),

                            _divider(),

                            _accountRow(
                              Icons.person_outline,
                              Color(0xFFE9FFF7),
                              Color(0xFF00B879),
                              'Active Accounts',
                              '8',
                              'Active',
                            ),

                            _divider(),

                            _accountRow(
                              Icons.cancel_outlined,
                              Color(0xFFFFF4E8),
                              Color(0xFFFF7900),
                              'Closed Accounts',
                              '4',
                              'Closed',
                            ),

                            _divider(),

                            _accountRow(
                              Icons.error_outline,
                              Color(0xFFFFEEEE),
                              Color(0xFFFF3B30),
                              'Overdue Accounts',
                              '0',
                              'Overdue',
                            ),

                            _divider(),

                            _accountRow(
                              Icons.credit_card_outlined,
                              Color(0xFFEAF2FF),
                              Color(0xFF2879FF),
                              'Credit Limit',
                              '₹8,50,000',
                              'Total Limit',
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 18),

                      // Detailed Accounts Button
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AccountsScreen2(),
                            ),
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 48,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Color(0xFF2879FF),
                              width: 1,
                            ),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'View Detailed Accounts',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF1769FF),
                                  ),
                                ),
                                SizedBox(width: 7),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Color(0xFF1769FF),
                                  size: 18,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar:  SafeArea(
        top: false,
        child: Container(
          height: 62,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, -2),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.grey,
                      size: 30,
                    ),
                    SizedBox(height: 1),
                    Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AccountsScreen(),
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.note_add_outlined,
                      color: Color(0xFF356AC3),
                      size: 30,
                    ),
                    SizedBox(height: 1),

                       Text(
                        'Accounts',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF356AC3),
                        ),
                      ),

                  ],
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReportsScreen(),
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.trending_up_outlined,
                      color: Colors.grey,
                      size: 30,
                    ),
                    SizedBox(height: 1),
                    Text(
                      'Reports',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MoreScreen(),
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.grid_view_outlined,
                      color: Colors.grey,
                      size: 30,
                    ),
                    SizedBox(height: 1),
                    Text(
                      'More',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _accountRow(
      IconData icon,
      Color iconBackground,
      Color iconColor,
      String title,
      String value,
      String subtitle,
      ) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [

          Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              color: iconBackground,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: iconColor,
              size: 23,
            ),
          ),

          SizedBox(width: 14),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                title,
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF667085),
                ),
              ),

              SizedBox(height: 2),

              Text(
                value,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF20233F),
                ),
              ),

              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF7B8494),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _divider() {
    return Divider(
      height: 1,
      color: Color(0xFFF0F1F3),
    );
  }
}