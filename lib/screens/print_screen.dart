import 'package:flutter/material.dart';

class PrintScreen extends StatefulWidget {
  PrintScreen();

  @override
  State<PrintScreen> createState() => _PrintScreenState();
}

class _PrintScreenState extends State<PrintScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E7EB),
      body: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                Image.asset(
                  'assets/images/search_image.png',
                  width: 220,
                  height: 180,
                  fit: BoxFit.contain,
                ),

                SizedBox(height: 28),

                Text(
                  'Loading Your Data',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF172033),
                  ),
                ),

                SizedBox(height: 12),

                Text(
                  'Please wait while we fetch the\ndata for your request.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF64748B),
                    height: 1.5,
                  ),
                ),

                SizedBox(height: 40),

                Row(
                  children: [

                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: LinearProgressIndicator(
                          value: 0.65,
                          minHeight: 9,
                          backgroundColor: Color(0xFFEEF2FF),
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Color(0xFF3267F5),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 12),

                    Text(
                      '65%',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2563EB),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 40),

                Divider(
                  color: Color(0xFFF1F5F9),
                  height: 1,
                ),

                SizedBox(height: 26),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      width: 38,
                      height: 38,
                      decoration: BoxDecoration(
                        color: Color(0xFFEFF6FF),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.access_time,
                        size: 20,
                        color: Color(0xFF2563EB),
                      ),
                    ),

                    SizedBox(width: 14),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            'This may take a few\nseconds.',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF475569),
                              height: 1.2,
                            ),
                          ),

                          SizedBox(height: 10),

                          Text(
                            "Please don't close the app or go back.",
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0xFF64748B),
                              height: 1.3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}