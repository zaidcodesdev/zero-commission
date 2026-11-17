import 'package:flutter/material.dart';

class TermsConditionsScreen extends StatelessWidget {
  TermsConditionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F9FB),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFF344054),
          ),
        ),
        centerTitle: true,
        title: Text(
          'Terms & Conditions',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xFF182230),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Color(0xFFF8F9FB),
          child: Column(
            children: [
              // Please Read Carefully Card
              Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(14, 8, 14, 8),
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F8FF),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Color(0xFFEAF0FF),
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    // Document Icon
                    Container(
                      width: 56,
                      height: 65,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Icon(
                            Icons.description,
                            size: 52,
                            color: Color(0xFF78A9FF),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 7,
                            child: Container(
                              width: 23,
                              height: 23,
                              decoration: BoxDecoration(
                                color: Color(0xFF0755FF),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1.5,
                                ),
                              ),
                              child: Icon(
                                Icons.verified_user,
                                size: 14,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
        
                    SizedBox(width: 14),
        
                    // Text Content
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Please Read Carefully',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF182230),
                            ),
                          ),
        
                          SizedBox(height: 9),
        
                          Text(
                            'These Terms & Conditions govern your use of Zero Commission app and services. By accessing or using our app, you agree to be bound by these terms.',
                            style: TextStyle(
                              fontSize: 10,
                              height: 1.7,
                              color: Color(0xFF64748B),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Last Updated Section
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.fromLTRB(18, 8, 18, 12),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 7,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Color(0xFFE6EDFA),
                      width: 0.8,
                    ),
                  ),
        
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.calendar_month_outlined,
                          size: 15,
                          color: Color(0xFF315BFF),
                        ),
        
                        SizedBox(width: 7),
        
                        Text(
                          'Last Updated: 16 May 2026',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF64748B),
                          ),
                        ),
                      ],
                    ),
        
                ),
              ),
              // 1. Acceptance of Terms
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 14,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFFF0F2F5),
                      width: 0.7,
                    ),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Icon
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEF5FF),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.person_outline,
                        size: 20,
                        color: Color(0xFF315BFF),
                      ),
                    ),

                    SizedBox(width: 12),

                    // Text
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '1. Acceptance of Terms',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF092747),
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'By accessing or using the Zero Commission app or our website, you agree to comply with and be bound by these Terms & Conditions and our Privacy Policy.',
                            style: TextStyle(
                              fontSize: 11,
                              height: 1.5,
                              color: Color(0xFF718096),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 5),

                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 19,
                      color: Color(0xFF94A3B8),
                    ),
                  ],
                ),
              ),
              // 2. Use of Our Services
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 14,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFFF0F2F5),
                      width: 0.7,
                    ),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Mobile Icon
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEF5FF),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.phone_iphone_outlined,
                        size: 20,
                        color: Color(0xFF315BFF),
                      ),
                    ),

                    SizedBox(width: 12),

                    // Section Details
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '2. Use of Our Services',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF092747),
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'You agree to use our services only for lawful purposes and in accordance with applicable laws and regulations.',
                            style: TextStyle(
                              fontSize: 11,
                              height: 1.5,
                              color: Color(0xFF718096),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 5),

                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 19,
                      color: Color(0xFF94A3B8),
                    ),
                  ],
                ),
              ),
              // 3. User Information
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 14,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFFF0F2F5),
                      width: 0.7,
                    ),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Document Icon
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEF5FF),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.description_outlined,
                        size: 20,
                        color: Color(0xFF315BFF),
                      ),
                    ),

                    SizedBox(width: 12),

                    // Section Details
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '3. User Information',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF092747),
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'You agree to provide accurate, complete, and up-to-date information when using our services.',
                            style: TextStyle(
                              fontSize: 11,
                              height: 1.5,
                              color: Color(0xFF718096),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 5),

                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 19,
                      color: Color(0xFF94A3B8),
                    ),
                  ],
                ),
              ),
              // 4. Loans and Financial Services
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 14,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFFF0F2F5),
                      width: 0.7,
                    ),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Shield Icon
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEF5FF),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.shield_outlined,
                        size: 20,
                        color: Color(0xFF315BFF),
                      ),
                    ),

                    SizedBox(width: 12),

                    // Section Details
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '4. Loans and Financial Services',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF092747),
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'We act as a marketplace/DSA connecting you with our lending partners.',
                            style: TextStyle(
                              fontSize: 11,
                              height: 1.5,
                              color: Color(0xFF718096),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 5),

                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 19,
                      color: Color(0xFF94A3B8),
                    ),
                  ],
                ),
              ),
              // 5. Fees and Charges
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 14,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFFF0F2F5),
                      width: 0.7,
                    ),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Rupee Icon
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEF5FF),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.currency_rupee,
                        size: 20,
                        color: Color(0xFF315BFF),
                      ),
                    ),

                    SizedBox(width: 12),

                    // Section Details
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '5. Fees and Charges',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF092747),
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'Some services may attract fees or charges as disclosed before availing services.',
                            style: TextStyle(
                              fontSize: 11,
                              height: 1.5,
                              color: Color(0xFF718096),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 5),

                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 19,
                      color: Color(0xFF94A3B8),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              // Terms Confirmation Section
              Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(20, 12, 20, 16),
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: Color(0xFFEEF5FF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.check_circle_outline,
                      size: 20,
                      color: Color(0xFF315BFF),
                    ),

                    SizedBox(width: 9),

                    Expanded(
                      child: Text(
                        'By using our app, you acknowledge that you have read, understood, and agree to be bound by these Terms & Conditions.',
                        style: TextStyle(
                          fontSize: 11,
                          height: 1.4,
                          color: Color(0xFF344054),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // I Agree Button
              Container(
                width: double.infinity,
                height: 46,
                margin: EdgeInsets.fromLTRB(17, 0, 17, 16),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0755D9),
                    foregroundColor: Colors.white,
                    elevation: 3,
                    shadowColor: Color(0x400755D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.check_circle,
                        size: 14,
                        color: Colors.white,
                      ),
                      SizedBox(width: 7),
                      Text(
                        'I Agree',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
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
    );
  }
}