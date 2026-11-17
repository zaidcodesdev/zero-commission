import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F9FB),

      appBar: AppBar(
        backgroundColor: Color(0xFFF8F9FB),
        elevation: 0,
        toolbarHeight: 50,
        centerTitle: true,

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 21,
            color: Color(0xFF182230),
          ),
        ),

        title: Text(
          'Help',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xFF182230),
          ),
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.history,
              size: 20,
              color: Color(0xFF182230),
            ),
          ),
          SizedBox(width: 8),
        ],
      ),

      body: Container(
        width: double.infinity,
        color: Color(0xFFF8F9FB),
        child: Column(
          children: [
            SizedBox(height: 80),

            // Report Illustration
            Container(
              width: 175,
              height: 175,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Back Document
                  Positioned(
                    top: 15,
                    left: 20,
                    child: Container(
                      width: 110,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Color(0xFFDCE8FF),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.description_outlined,
                        size: 85,
                        color: Color(0xFF8CB3FF),
                      ),
                    ),
                  ),

                  // Main Blue Folder
                  Positioned(
                    bottom: 18,
                    child: Container(
                      width: 135,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Color(0xFF0755FF),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: 85,
                          height: 12,
                          decoration: BoxDecoration(
                            color: Color(0xFF0755FF),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Download Circle
                  Positioned(
                    right: 18,
                    bottom: 5,
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xFF0755FF),
                          width: 5,
                        ),
                      ),
                      child: Icon(
                        Icons.download,
                        size: 22,
                        color: Color(0xFF0755FF),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 48),

// Heading
            Text(
              'Need Help?',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Color(0xFF0755FF),
              ),
            ),

            SizedBox(height: 12),

// Description
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 45),
              child: Text(
                'You can search another report or download your CIBIL report for your records.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  height: 1.6,
                  color: Color(0xFF64748B),
                ),
              ),
            ),
            Spacer(),

// Search Another Button
            Container(
              width: double.infinity,
              height: 43,
              margin: EdgeInsets.symmetric(horizontal: 18),
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  foregroundColor: Color(0xFF0755FF),
                  side: BorderSide(
                    color: Color(0xFF0755FF),
                    width: 1,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.sync,
                      size: 17,
                    ),
                    SizedBox(width: 7),
                    Text(
                      'Search Another',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 12),

// Download PDF Report Button
            Container(
              width: double.infinity,
              height: 43,
              margin: EdgeInsets.symmetric(horizontal: 18),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF0755FF),
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.download,
                      size: 17,
                    ),
                    SizedBox(width: 7),
                    Text(
                      'Download PDF Report',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}