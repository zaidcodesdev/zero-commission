import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  AboutUsScreen({Key? key}) : super(key: key);

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
          'About Us',
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
              // About Us Main Card
              Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(13, 8, 13, 8),
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Color(0xFFF2F7FF),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Color(0xFFEAF0FA),
                    width: 1,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Zero Commission Logo
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/about_us_1.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
        
                    SizedBox(width: 10),
        
                    // Text Content
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Empowering Your\nFinancial Journey',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              height: 1.3,
                              color: Color(0xFF20345D),
                            ),
                          ),
        
                          SizedBox(height: 5),
        
                          Text(
                            'Zero Commission is a trusted loan marketplace that connects you with leading banks and NBFCs to help you achieve your financial goals.',
                            style: TextStyle(
                              fontSize: 12,
                              height: 1.6,
                              color: Color(0xFF64748B),
                            ),
                          ),
                        ],
                      ),
                    ),
        
                    SizedBox(width: 5),
        
                    // Financial Illustration
                    Image.asset(
                      'assets/images/about_us_2.png',
                      width: 42,
                      height: 55,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
              // Who We Are Section
              Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(13, 12, 13, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Who We Are',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF20345D),
                      ),
                    ),
        
                    SizedBox(height: 7),
        
                    // Blue Underline
                    Container(
                      width: 52,
                      height: 2,
                      decoration: BoxDecoration(
                        color: Color(0xFF0755FF),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
        
                    SizedBox(height: 12),
        
                    Text(
                      'Zero Commission is a Loan DSA (Direct Selling Agent) platform that helps customers discover, compare and apply for the best loan products from top financial institutions - all at zero commission.',
                      style: TextStyle(
                        fontSize: 12,
                        height: 1.7,
                        color: Color(0xFF64748B),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              // Feature Cards
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    // First Row
                    Row(
                      children: [
                        Expanded(
                          child: _featureCard(
                            icon: Icons.groups,
                            iconColor: Color(0xFF1670FF),
                            iconBackground: Color(0xFFEEF5FF),
                            title: 'Customer First',
                            description:
                            'We prioritize your needs and provide transparent guidance at every step.',
                          ),
                        ),
        
                        SizedBox(width: 12),
        
                        Expanded(
                          child: _featureCard(
                            icon: Icons.verified_user_outlined,
                            iconColor: Color(0xFF16B86A),
                            iconBackground: Color(0xFFECFBF2),
                            title: 'Trusted Partners',
                            description:
                            'We partner with leading banks and NBFCs to offer the best solutions.',
                          ),
                        ),
                      ],
                    ),
        
                    SizedBox(height: 12),
        
                    // Second Row
                    Row(
                      children: [
                        Expanded(
                          child: _featureCard(
                            icon: Icons.workspace_premium_outlined,
                            iconColor: Color(0xFFAA43FF),
                            iconBackground: Color(0xFFF8EEFF),
                            title: 'Transparent & Fair',
                            description:
                            'No hidden charges. No commissions. Just the best loan options for you.',
                          ),
                        ),
        
                        SizedBox(width: 12),
        
                        Expanded(
                          child: _featureCard(
                            icon: Icons.rocket_launch,
                            iconColor: Color(0xFFFF8A24),
                            iconBackground: Color(0xFFFFF4E8),
                            title: 'Simple & Fast',
                            description:
                            'Our digital process makes loan application quick, easy and hassle-free.',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Our Mission Heading
              Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(13, 18, 13, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Our Mission',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF20345D),
                      ),
                    ),
        
                    SizedBox(height: 7),
        
                    Container(
                      width: 24,
                      height: 2,
                      decoration: BoxDecoration(
                        color: Color(0xFF0755FF),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ],
                ),
              ),
        
              SizedBox(height: 12),
        
        // Mission Description Card
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 13),
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Color(0xFFF2F7FF),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    // Target Icon
                    Container(
                      width: 24,
                      height: 24,
                      child: Icon(
                        Icons.track_changes,
                        size: 23,
                        color: Color(0xFF0755FF),
                      ),
                    ),
        
                    SizedBox(width: 14),
        
                    // Mission Text
                    Expanded(
                      child: Text(
                        'To simplify access to credit and empower individuals and businesses with the right financial solutions, enabling them to build a better tomorrow.',
                        style: TextStyle(
                          fontSize: 12,
                          height: 1.5,
                          color: Color(0xFF536987),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Our Vision Heading
              Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(13, 18, 13, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Our Vision',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF20345D),
                      ),
                    ),

                    SizedBox(height: 7),

                    Container(
                      width: 24,
                      height: 2,
                      decoration: BoxDecoration(
                        color: Color(0xFF0755FF),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 12),

// Vision Description Card
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 13),
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Color(0xFFF2F7FF),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    // Eye Icon
                    Container(
                      width: 34,
                      height: 34,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xFFDCE8FF),
                          width: 1,
                        ),
                      ),
                      child: Icon(
                        Icons.visibility_outlined,
                        size: 22,
                        color: Color(0xFF0755FF),
                      ),
                    ),

                    SizedBox(width: 12),

                    // Vision Text
                    Expanded(
                      child: Text(
                        "To become India's most trusted and customer-centric loan marketplace, known for transparency, innovation and exceptional service.",
                        style: TextStyle(
                          fontSize: 12,
                          height: 1.5,
                          color: Color(0xFF536987),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // What We Offer Heading
              Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(13, 20, 13, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'What We Offer',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF20345D),
                      ),
                    ),
                    SizedBox(height: 7),
                    Container(
                      width: 24,
                      height: 2,
                      decoration: BoxDecoration(
                        color: Color(0xFF0755FF),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 13),

// Loan Categories Grid
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: _offerCard(
                            icon: Icons.person_outline,
                            title: 'Personal Loan',
                            iconColor: Color(0xFF1670FF),
                            iconBackground: Color(0xFFEEF5FF),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: _offerCard(
                            icon: Icons.home_outlined,
                            title: 'Home Loan',
                            iconColor: Color(0xFF16B86A),
                            iconBackground: Color(0xFFECFBF2),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 10),

                    Row(
                      children: [
                        Expanded(
                          child: _offerCard(
                            icon: Icons.business_center_outlined,
                            title: 'Business Loan',
                            iconColor: Color(0xFFAA43FF),
                            iconBackground: Color(0xFFF8EEFF),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: _offerCard(
                            icon: Icons.apartment,
                            title: 'Loan Against\nProperty',
                            iconColor: Color(0xFFFF7A24),
                            iconBackground: Color(0xFFFFF4E8),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 10),

                    Row(
                      children: [
                        Expanded(
                          child: _offerCard(
                            icon: Icons.account_balance_wallet_outlined,
                            title: 'Working Capital',
                            iconColor: Color(0xFF13A89E),
                            iconBackground: Color(0xFFE9FBF8),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: _offerCard(
                            icon: Icons.credit_card_outlined,
                            title: 'Credit Card',
                            iconColor: Color(0xFFFF4D9D),
                            iconBackground: Color(0xFFFFEEF6),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 10),

                    Row(
                      children: [
                        Expanded(
                          child: _offerCard(
                            icon: Icons.account_balance_outlined,
                            title: 'OD / CC',
                            iconColor: Color(0xFF536BFF),
                            iconBackground: Color(0xFFEEF0FF),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: _offerCard(
                            icon: Icons.grid_view,
                            title: 'Other Loan\nSolutions',
                            iconColor: Color(0xFFFF9A24),
                            iconBackground: Color(0xFFFFF4E8),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Connect With Us Heading
              Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(13, 20, 13, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Connect With Us',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF20345D),
                      ),
                    ),
                    SizedBox(height: 7),
                    Container(
                      width: 24,
                      height: 2,
                      decoration: BoxDecoration(
                        color: Color(0xFF0755FF),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

// Contact Information
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      // Phone
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Color(0xFF2864F0),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.phone,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              '+91 98765 43210',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 9,
                                color: Color(0xFF20345D),
                              ),
                            ),
                          ],
                        ),
                      ),
                
                      // Email
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Color(0xFF20C878),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.email_outlined,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'support@zerocom.com',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 9,
                                color: Color(0xFF20345D),
                              ),
                            ),
                          ],
                        ),
                      ),
                
                      // Website
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Color(0xFFAA43FF),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.language,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'www.zerocommissionloan.com',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 9,
                                color: Color(0xFF20345D),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
  Widget _offerCard({
    required IconData icon,
    required String title,
    required Color iconColor,
    required Color iconBackground,
  }) {
    return Container(
      height: 55,
      padding: EdgeInsets.symmetric(horizontal: 9),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xFFF0F2F5),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x08000000),
            blurRadius: 3,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 34,
            height: 34,
            decoration: BoxDecoration(
              color: iconBackground,
              borderRadius: BorderRadius.circular(7),
            ),
            child: Icon(
              icon,
              size: 21,
              color: iconColor,
            ),
          ),

          SizedBox(width: 8),

          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: Color(0xFF20345D),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _featureCard({
    required IconData icon,
    required Color iconColor,
    required Color iconBackground,
    required String title,
    required String description,
  }) {
    return Container(
      height: 125,
      padding: EdgeInsets.fromLTRB(8, 10, 8, 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xFFF0F2F5),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x08000000),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 38,
            height: 38,
            decoration: BoxDecoration(
              color: iconBackground,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              size: 21,
              color: iconColor,
            ),
          ),

          SizedBox(height: 7),

          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w700,
              color: Color(0xFF20345D),
            ),
          ),

          SizedBox(height: 4),

          Expanded(
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 9,
                height: 1.3,
                color: Color(0xFF64748B),
              ),
            ),
          ),

        ],
      ),
    );
  }
}