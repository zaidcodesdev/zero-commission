import 'package:flutter/material.dart';
import 'emi_calculator.dart';
import 'eligibility_calculator.dart';
import 'home_screen1.dart';
import 'rd_calculator.dart';
import 'gst_calculator.dart';
import 'sip_calculator.dart';
import 'fd_calculator.dart';

class MoreScreen extends StatelessWidget {
  MoreScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F8FA),

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
                    Icon(
                      Icons.menu,
                      size: 25,
                      color: Color(0xFF374151),
                    ),

                    Text(
                      'More',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF374151),
                      ),
                    ),

                    Icon(
                      Icons.notifications_none_outlined,
                      size: 25,
                      color: Color(0xFF374151),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only( right: 40, left:18 ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Calculators',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF374151),
                      ),
                    ),

                    SizedBox(height: 4),

                    Text(
                      'Smart financial calculators to help you plan better',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EmiCalculator(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 58,
                            height: 58,
                            decoration: BoxDecoration(
                              color: Color(0xFFEAF1FC),
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                             "assets/images/more_screen_EMI_logo.png"
                            ),
                          ),

                          SizedBox(height: 6),

                          Text(
                            'EMI\nCalculator',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF374151),
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
                            builder: (context) => EligibilityCalculator(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 58,
                            height: 58,
                            decoration: BoxDecoration(
                              color: Color(0xFFEAF8F1),
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                             "assets/images/more_screen_Eligiblity_logo.png"
                            ),
                          ),
                      
                          SizedBox(height: 6),

                          Text(
                            'Eligibility\nCalculator',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF374151),
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
                            builder: (context) => GSTCalculator(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 58,
                            height: 58,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFF3E8),
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                             "assets/images/more_screen_GST_logo.png"
                            ),
                          ),

                          SizedBox(height: 6),

                          Text(
                            'GST\nCalculator',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF374151),
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
                            builder: (context) => const FDCalculator(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 58,
                            height: 58,
                            decoration: BoxDecoration(
                              color: Color(0xFFF3ECFF),
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                             "assets/images/more_screen_FD_logo.png"
                            ),
                          ),

                          SizedBox(height: 6),

                          Text(
                            'FD\nCalculator',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF374151),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RDCalculator(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 58,
                            height: 58,
                            decoration: BoxDecoration(
                              color: Color(0xFFEAF1FC),
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                             "assets/images/more_screen_RD_logo.png"
                            ),
                          ),

                          SizedBox(height: 6),

                          Text(
                            'RD\nCalculator',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF374151),
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
                            builder: (context) => SIPCalculator(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 58,
                            height: 58,
                            decoration: BoxDecoration(
                              color: Color(0xFFEAF8F1),
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              "assets/images/more_screen_SIP_logo.png"
                            ),
                          ),

                          SizedBox(height: 6),

                          Text(
                            'SIP\nCalculator',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF374151),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Column(
                      children: [
                        Container(
                          width: 58,
                          height: 58,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFF3E8),
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                          "assets/images/more_screen_Affordability_logo.png"
                          ),
                        ),

                        SizedBox(height: 6),

                        Text(
                          'Affordability\nCalculator',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xFF374151),
                          ),
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          width: 58,
                          height: 58,
                          decoration: BoxDecoration(
                            color: Color(0xFFF3ECFF),
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                           "assets/images/more_screen_BT_calculator.png"
                          ),
                        ),

                        SizedBox(height: 6),

                        Text(
                          'BT\nCalculator',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xFF374151),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),

              Padding(
                padding: EdgeInsets.only(left: 17, right: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Quick Actions',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF374151),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.95,
                  children: [

                    // Track Application
                    Container(
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFFE1E9FF),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.description_outlined,
                              color: Color(0xFF0755D9),
                              size: 38,
                            ),
                          ),

                          SizedBox(height: 12),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Track\nApplication',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF1F2A44),
                                ),
                              ),

                              Icon(
                                Icons.chevron_right,
                                color: Colors.grey,
                                size: 28,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Upload Document
                    Container(
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFFE1E9FF),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.upload_file_outlined,
                              color: Color(0xFF0755D9),
                              size: 38,
                            ),
                          ),

                          SizedBox(height: 12),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Upload\nDocument',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF1F2A44),
                                ),
                              ),

                              Icon(
                                Icons.chevron_right,
                                color: Colors.grey,
                                size: 28,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Quick Support
                    Container(
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFFE1E9FF),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.support_agent_outlined,
                              color: Color(0xFF0755D9),
                              size: 38,
                            ),
                          ),

                          SizedBox(height: 12),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Quick\nSupport',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF1F2A44),
                                ),
                              ),

                              Icon(
                                Icons.chevron_right,
                                color: Colors.grey,
                                size: 28,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Feedback
                    Container(
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFFE1E9FF),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.chat_bubble_outline,
                              color: Color(0xFF0755D9),
                              size: 38,
                            ),
                          ),

                          SizedBox(height: 12),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Feedback',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF1F2A44),
                                ),
                              ),

                              Icon(
                                Icons.chevron_right,
                                color: Colors.grey,
                                size: 28,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 28),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/more_screen_banner.png',
                    ),

                    SizedBox(height: 14),

                    Text(
                      'Explore Our Loan Solutions',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF172033),
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      'Choose from a wide range of loan options designed\n'
                          'to meet your personal and business needs.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF7B8194),
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xFFE1E6F0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // Top section
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 64,
                                    height: 64,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE1E9FF),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.home,
                                      color: Color(0xFF0755D9),
                                      size: 34,
                                    ),
                                  ),

                                  SizedBox(height: 16),

                                  Text(
                                    'Home Loan',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF172033),
                                      height: 1
                                    ),
                                  ),

                                  SizedBox(height: 14),

                                  Text(
                                    'Starting From',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF737B8C),
                                    ),
                                  ),

                                  SizedBox(height: 4),

                                  Text(
                                    '8.35%*',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0755D9),
                                    ),
                                  ),

                                  SizedBox(height: 6),

                                  Text(
                                    'Up to ₹5 Cr Loan Amount',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF737B8C),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(width: 8),

                            Image.asset(
                              'assets/images/more_screen_house.png',
                              width: 210,
                              height: 220,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),

                      Divider(
                        height: 1,
                        color: Color(0xFFE5E7EB),
                      ),

                      // Details
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          children: [

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.access_time_outlined,
                                        color: Color(0xFF0755D9),
                                        size: 20,
                                      ),

                                      SizedBox(width: 5),

                                      Text(
                                        'PROCESSING TIME',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF737B8C),
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 4),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text(
                                      '24 - 48 Hrs',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF172033),
                                      ),
                                    ),
                                  ),

                                  SizedBox(height: 24),

                                  Row(
                                    children: [
                                      Icon(
                                        Icons.person_outline,
                                        color: Color(0xFF0755D9),
                                        size: 20,
                                      ),

                                      SizedBox(width: 8),

                                      Text(
                                        'ELIGIBILITY',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF737B8C),
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 4),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text(
                                      'Salaried / Self',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF172033),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.description_outlined,
                                          color: Color(0xFF0755D9),
                                          size: 20,
                                        ),

                                        SizedBox(width: 8),

                                        Text(
                                          'DOCUMENTS',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF737B8C),
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 4),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(
                                        'Minimal',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF172033),
                                        ),
                                      ),
                                    ),

                                    SizedBox(height: 24),

                                    Row(
                                      children: [
                                        Icon(
                                          Icons.percent,
                                          color: Color(0xFF0755D9),
                                          size: 20,
                                        ),

                                        SizedBox(width: 8),

                                        Text(
                                          'INTEREST RATE',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF737B8C),
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 4),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(
                                        'Floating',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF172033),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Apply Now button
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                        child: GestureDetector(
                          onTap: () {
                            print('Home Loan Apply Now clicked');
                          },
                          child: Container(
                            width: double.infinity,
                            height: 52,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0xFF0755D9),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Apply Now',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),

                                SizedBox(width: 10),

                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 28,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xFFE1E6F0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // Top section
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color(0xFFF0FAF2),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 64,
                                    height: 64,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE1F2E5),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.directions_car,
                                      color: Color(0xFF087443),
                                      size: 34,
                                    ),
                                  ),

                                  SizedBox(height: 16),

                                  Text(
                                    'Car Loan',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF172033),
                                      height: 1
                                    ),
                                  ),

                                  SizedBox(height: 14),

                                  Text(
                                    'Starting From',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF737B8C),
                                    ),
                                  ),

                                  SizedBox(height: 4),

                                  Text(
                                    '7.99%*',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF087443),
                                    ),
                                  ),

                                  SizedBox(height: 6),

                                  Text(
                                    'Up to 100% Funding',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF737B8C),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(width: 8),

                            Image.asset(
                              'assets/images/more_screen_car.png',
                              width: 210,
                              height: 190,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ),

                      // Details section
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          children: [

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.timer_outlined,
                                        color: Color(0xFF087443),
                                        size: 20,
                                      ),

                                      SizedBox(width: 5),

                                      Text(
                                        'PROCESSING TIME',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF737B8C),
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 4),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text(
                                      '2 - 24 Hrs',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF172033),
                                      ),
                                    ),
                                  ),

                                  SizedBox(height: 24),

                                  Row(
                                    children: [
                                      Icon(
                                        Icons.badge_outlined,
                                        color: Color(0xFF087443),
                                        size: 20,
                                      ),

                                      SizedBox(width: 8),

                                      Text(
                                        'ELIGIBILITY',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF737B8C),
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 4),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text(
                                      'Salaried / Self',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF172033),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.article_outlined,
                                          color: Color(0xFF087443),
                                          size: 20,
                                        ),

                                        SizedBox(width: 8),

                                        Text(
                                          'DOCUMENTS',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF737B8C),
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 4),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(
                                        'Minimal',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF172033),
                                        ),
                                      ),
                                    ),

                                    SizedBox(height: 24),

                                    Row(
                                      children: [
                                        Icon(
                                          Icons.speed_outlined,
                                          color: Color(0xFF087443),
                                          size: 20,
                                        ),

                                        SizedBox(width: 8),

                                        Text(
                                          'INTEREST RATE',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF737B8C),
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 4),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(
                                        'Fixed / Float',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF172033),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Apply Now
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                        child: GestureDetector(
                          onTap: () {
                            print('Car Loan Apply Now clicked');
                          },
                          child: Container(
                            width: double.infinity,
                            height: 52,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0xFF0755D9),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Apply Now',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),

                                SizedBox(width: 10),

                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 28,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xFFE1E6F0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // Top section
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color(0xFFF0F3FF),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 64,
                                    height: 64,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE1E7FA),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.business_center,
                                      color: Color(0xFF59677F),
                                      size: 34,
                                    ),
                                  ),

                                  SizedBox(height: 16),

                                  Text(
                                    'Business Loan',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF172033),
                                      height: 1
                                    ),
                                  ),

                                  SizedBox(height: 14),

                                  Text(
                                    'Starting From',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF737B8C),
                                    ),
                                  ),

                                  SizedBox(height: 4),

                                  Text(
                                    '10.50%*',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF59677F),
                                    ),
                                  ),

                                  SizedBox(height: 6),

                                  Text(
                                    'Up to ₹2 Cr Loan Amount',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF737B8C),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(width: 8),

                            Image.asset(
                              'assets/images/more_screen_building.png',
                              width: 180,
                              height: 250,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),

                      // Details section
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          children: [

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.history,
                                        color: Color(0xFF59677F),
                                        size: 20,
                                      ),

                                      SizedBox(width: 5),

                                      Text(
                                        'PROCESSING TIME',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF737B8C),
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 4),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text(
                                      '24 - 72 Hrs',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF172033),
                                      ),
                                    ),
                                  ),

                                  SizedBox(height: 24),

                                  Row(
                                    children: [
                                      Icon(
                                        Icons.people_outline,
                                        color: Color(0xFF59677F),
                                        size: 20,
                                      ),

                                      SizedBox(width: 8),

                                      Text(
                                        'ELIGIBILITY',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF737B8C),
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 4),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text(
                                      '1+ Year Vintage',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF172033),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.copy_outlined,
                                          color: Color(0xFF59677F),
                                          size: 20,
                                        ),

                                        SizedBox(width: 8),

                                        Text(
                                          'DOCUMENTS',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF737B8C),
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 4),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(
                                        'Minimal',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF172033),
                                        ),
                                      ),
                                    ),

                                    SizedBox(height: 24),

                                    Row(
                                      children: [
                                        Icon(
                                          Icons.insights_outlined,
                                          color: Color(0xFF59677F),
                                          size: 20,
                                        ),

                                        SizedBox(width: 8),

                                        Text(
                                          'INTEREST RATE',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF737B8C),
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 4),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(
                                        'Floating',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF172033),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Apply Now
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                        child: GestureDetector(
                          onTap: () {
                            print('Business Loan Apply Now clicked');
                          },
                          child: Container(
                            width: double.infinity,
                            height: 52,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0xFF0755D9),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Apply Now',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),

                                SizedBox(width: 10),

                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 28,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Credit Card',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF172033),
                      ),
                    ),

                    SizedBox(height: 5),

                    Text(
                      'Choose your credit card according to your need '
                          '& Life style.',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF4B5563),
                        height: 1,
                      ),
                    ),

                    SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              'assets/images/more_screen_travel_card.png',
                              width: 72,
                              height: 125,
                              fit: BoxFit.contain,
                            ),

                            SizedBox(height: 10),

                            Text(
                              'Travel Card',
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xFF172033),
                              ),
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            Image.asset(
                              'assets/images/more_screen_shopping_card.png',
                              width: 72,
                              height: 125,
                              fit: BoxFit.contain,
                            ),

                            SizedBox(height: 10),

                            Text(
                              'Shopping card',
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xFF172033),
                              ),
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            Image.asset(
                              'assets/images/more_screen_platinum_card.png',
                              width: 72,
                              height: 125,
                              fit: BoxFit.contain,
                            ),

                            SizedBox(height: 10),

                            Text(
                              'Platinum Card',
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xFF172033),
                              ),
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            Image.asset(
                              'assets/images/more_screen_lifetime_card.png',
                              width: 72,
                              height: 125,
                              fit: BoxFit.contain,
                            ),

                            SizedBox(height: 10),

                            Text(
                              'Lite Time Free\nCard',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xFF172033),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 28),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(28),
                  decoration: BoxDecoration(
                    color: Color(0xFF0B4ACB),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Need expert advice?',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          height: 1
                        ),
                      ),

                      SizedBox(height: 14),

                      Text(
                        'Book a free consultation with our financial advisors to optimize your portfolio. ',

                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          height: 1,
                        ),
                      ),

                      SizedBox(height: 24),

                      Center(
                        child: GestureDetector(
                          onTap: () {
                            print('Talk to Advisor clicked');
                          },
                          child: Container(
                            width: 250,
                            height: 52,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Text(
                              'Talk to Advisor',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0B4ACB),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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
                    color:  Color(0xFF356AC3),
                    size: 30,
                  ),
                  SizedBox(height: 1),
                  Text(
                    'More',
                    style: TextStyle(
                      fontSize: 12,
                      color:  Color(0xFF356AC3),
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