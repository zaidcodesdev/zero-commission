import 'package:flutter/material.dart';
import 'More_options_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning 🙏',
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey,
                          ),
                        ),

                        SizedBox(height: 4),

                        Text(
                          'Hasan Ji',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.notifications_none_outlined,
                          ),
                        ),

                        SizedBox(width: 12),

                        CircleAvatar(
                          radius: 20,
                          child: Icon(Icons.person),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Your Financial Health',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.all(16),
                height: 260,
                decoration: BoxDecoration(
                  color: Color(0xFFF1F7F6),
                  borderRadius: BorderRadius.circular(16),
                ),

                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Image.asset(
                            'assets/images/home_screen1_cartoon.png',
                            fit: BoxFit.contain,
                          ),
                        ),

                        SizedBox(width: 10),

                        Expanded(
                          flex: 5,
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 70,
                                width: double.infinity,
                                child: CustomPaint(
                                  painter: GraphPainter(),
                                ),
                              ),

                              SizedBox(height: 4),

                              Text(
                                '786',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF1E9B68),
                                ),
                              ),

                              SizedBox(height: 4),

                              Text(
                                'Out of 900',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black87,
                                ),
                              ),

                              SizedBox(height: 12),

                              Container(
                                width: 110,
                                height: 32,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xFF1E9B68),
                                  borderRadius:
                                  BorderRadius.circular(20),
                                ),
                                child: Text(
                                  'GOOD',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 8),

                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Last updated: 20 Jul 2026',
                          style: TextStyle(
                            fontSize: 8,
                            color: Colors.black,
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius:
                            BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Refresh CIBIL',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(width: 4),

                              Icon(
                                Icons.refresh,
                                size: 11,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 12),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(
                  'assets/images/onboarding3_header.png',
                ),
              ),
              SizedBox(height: 10),

              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Image.asset(
                      'assets/images/New_onboarding3_AI_suggestion_card.png',
                    ),
                  ),
                  Positioned(
                    left: 20,
                    right: 20,
                    bottom: 20,
                    child: GestureDetector(
                      onTap: () {
                        print('Check your offers clicked');
                      },
                      child: Container(
                        height: 55,
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(
                  'assets/images/onboarding3_heading2.png',
                ),
              ),
              SizedBox(height: 12),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.85,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFF8F7),
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(
                          color: Color(0xFFFFD6D0),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'EMI Due',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFFC0392B),
                            ),
                          ),

                          SizedBox(height: 10),

                          Text(
                            '₹12,450',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1F2A44),
                            ),
                          ),

                          SizedBox(height: 10),

                          Text(
                            'Due in 5 days',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFFC0392B),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color(0xFFF1F7F6),
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(
                          color: Color(0xFFCFE3DE),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Credit Cards',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF5D6878),
                            ),
                          ),

                          SizedBox(height: 10),

                          Text(
                            '2',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1F2A44),
                            ),
                          ),

                          SizedBox(height: 10),

                          Text(
                            'Active',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF287A5D),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color(0xFFF4F7FC),
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(
                          color: Color(0xFFD5E0F0),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Outstanding',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF5D6878),
                            ),
                          ),

                          SizedBox(height: 10),

                          Text(
                            '₹1,25,000',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1F2A44),
                            ),
                          ),

                          SizedBox(height: 10),

                          Text(
                            'Total',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF2F5E9E),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color(0xFFF7F8FC),
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(
                          color: Color(0xFFDDE2EE),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Savings Goal',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF5D6878),
                            ),
                          ),

                          SizedBox(height: 10),

                          Text(
                            '₹78,500',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1F2A44),
                            ),
                          ),

                          SizedBox(height: 10),

                          Text(
                            'of ₹1,00,000',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF5D6878),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/onboarding_heading3.png',
                    ),

                    Positioned(
                      right: 0,
                      top: 0,
                      child: GestureDetector(
                        onTap: () {
                          print('View All clicked');
                        },
                        child: Container(
                          width: 55,
                          height: 30,
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),

              Padding(
                padding: EdgeInsets.only(left: 40, right: 25),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFFEAF1FC),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.description_outlined,
                        color: Color(0xFF2563C7),
                        size: 28,
                      ),
                    ),

                    SizedBox(width: 20),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CIBIL Report Generated',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF374151),
                          ),
                        ),

                        SizedBox(height: 6),

                        Text(
                          '08 Jul 2026 • 10:30 AM',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF7B8794),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14),

              Padding(
                padding: EdgeInsets.only(left: 40, right: 25),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFFF3ECFF),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.calculate_outlined,
                        color: Color(0xFF8B4FD6),
                        size: 28,
                      ),
                    ),

                    SizedBox(width: 20),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'EMI Calculated',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF374151),
                          ),
                        ),

                        SizedBox(height: 6),

                        Text(
                          '08 Jul 2026 • 10:15 AM',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF7B8794),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14),

              Padding(
                padding: EdgeInsets.only(left: 40, right: 25),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFFEAF8F1),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.account_balance_outlined,
                        color: Color(0xFF23835E),
                        size: 28,
                      ),
                    ),

                    SizedBox(width: 20),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Personal Loan Applied',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF374151),
                          ),
                        ),

                        SizedBox(height: 6),

                        Text(
                          '07 Jul 2026 • 04:45 PM',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF7B8794),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14),

              Padding(
                padding: EdgeInsets.only(left: 40, right: 25),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFF3E8),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.home_outlined,
                        color: Color(0xFFD97706),
                        size: 28,
                      ),
                    ),

                    SizedBox(width: 20),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Documents Uploaded',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF374151),
                          ),
                        ),

                        SizedBox(height: 6),

                        Text(
                          '07 Jul 2026 • 11:20 AM',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF7B8794),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14),

              Padding(
                padding: EdgeInsets.only(left: 40, right: 25),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFFEAF1FC),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.monitor_outlined,
                        color: Color(0xFF2563C7),
                        size: 28,
                      ),
                    ),

                    SizedBox(width: 20),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Credit Score Updated',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF374151),
                          ),
                        ),

                        SizedBox(height: 6),

                        Text(
                          '06 Jul 2026 • 09:10 PM',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF7B8794),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.assignment_outlined,
                                  color: Color(0xFF2F66B3),
                                  size: 30,
                                ),

                                SizedBox(width: 3),

                                Expanded(
                                  child: Text(
                                    'Your Loan Applications',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF374151),
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Transform.translate(
                            offset: Offset(20, 0),
                            child: GestureDetector(
                              onTap: () {
                                print('Loan View All clicked');
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFF1F5FA),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      'View All',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF2F66B3),
                                      ),
                                    ),

                                    Icon(
                                      Icons.chevron_right,
                                      color: Color(0xFF2F66B3),
                                      size: 16,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),

                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  '3',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF374151),
                                  ),
                                ),

                                SizedBox(height: 6),

                                Text(
                                  'TOTAL APPLICATIONS',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 9,
                                    color: Color(0xFF7B8794),
                                    height: 1.4,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  '2',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFD97706),
                                  ),
                                ),

                                SizedBox(height: 6),

                                Text(
                                  'IN PROGRESS',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 9,
                                    color: Color(0xFF7B8794),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  '1',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF23835E),
                                  ),
                                ),

                                SizedBox(height: 6),

                                Text(
                                  'APPROVED',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 9,
                                    color: Color(0xFF7B8794),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  '0',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFD14B5A),
                                  ),
                                ),

                                SizedBox(height: 6),

                                Text(
                                  'REJECTED',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 9,
                                    color: Color(0xFF7B8794),
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
              SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/New_homescreen1_support_image.png',
                    ),

                    Positioned(
                      left: 20,
                      bottom: 18,
                      child: GestureDetector(
                        onTap: () {
                          print('Talk to Expert clicked');
                        },
                        child: Container(
                          width: 140,
                          height: 45,
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Top section yahan banega

              // Financial Health section

              // Improve Your CIBIL section

              // Finance Overview section

              // Recent Activity section

              // Loan Applications section

              // Need Help section
            ],
          ),
        ),
      ),

      bottomNavigationBar: Container(
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.home,
                  color: Color(0xFF356AC3),
                  size: 30,
                ),
                SizedBox(height: 1),
                Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF356AC3),
                  ),
                ),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.note_add_outlined,
                  color: Colors.grey,
                  size: 30,
                ),
                SizedBox(height: 1),
                Text(
                  'Accounts',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),

            Column(
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
    );
  }
}

class GraphPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Color(0xFF1E9B68)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    Path path = Path();

    path.moveTo(-15, size.height * 0.75);

    path.cubicTo(
      size.width * 0.15,
      size.height * 0.85,
      size.width * 0.22,
      size.height * 0.35,
      size.width * 0.38,
      size.height * 0.55,
    );

    path.cubicTo(
      size.width * 0.50,
      size.height * 0.75,
      size.width * 0.58,
      size.height * 0.15,
      size.width * 0.72,
      size.height * 0.30,
    );

    path.cubicTo(
      size.width * 0.82,
      size.height * 0.45,
      size.width * 0.90,
      size.height * 0.20,
      size.width,
      size.height * 0.10,
    );

    canvas.drawPath(path, paint);

    Paint dotPaint = Paint()
      ..color = Color(0xFF6BCB77);

    canvas.drawCircle(
      Offset(size.width * 0.72, size.height * 0.30),
      5,
      dotPaint,
    );

    canvas.drawCircle(
      Offset(size.width, size.height * 0.10),
      5,
      dotPaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}