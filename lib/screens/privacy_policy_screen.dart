import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  PrivacyPolicyScreen();

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
          'Privacy Policy',
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
              // Your Privacy Matters Card
        
              Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(14, 8, 14, 8),
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Color(0xFFF1F6FD),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  children: [
                    // Privacy Icon
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: 74,
                          height: 74,
                          decoration: BoxDecoration(
                            color: Color(0xFFDCE8FF),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.verified_user,
                            size: 43,
                            color: Color(0xFF0755FF),
                          ),
                        ),
        
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: Container(
                            width: 19,
                            height: 19,
                            decoration: BoxDecoration(
                              color: Color(0xFF20C878),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              ),
                            ),
                            child: Icon(
                              Icons.check,
                              size: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
        
                    SizedBox(width: 14),
        
                    // Privacy Text
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your Privacy\nMatters',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF092747),
                              height: 1.4,
                            ),
                          ),
        
                          SizedBox(height: 5),
        
                          Text(
                            'We are committed to protecting your personal information and your right to privacy.',
                            style: TextStyle(
                              fontSize: 12,
                              height: 1.5,
                              color: Color(0xFF718096),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Last Updated Section
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(18, 12, 18, 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEF3FF),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Icon(
                            Icons.calendar_month_outlined,
                            size: 16,
                            color: Color(0xFF315BFF),
                          ),
                        ),
        
                        SizedBox(width: 8),
        
                        Text(
                          'Last Updated: 16 May 2026',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF344054),
                          ),
                        ),
                      ],
                    ),
        
                    SizedBox(height: 14),
        
                    Text(
                      'This Privacy Policy describes how Zero Commission ("we", "our", "us") collects, uses, stores, and protects your information when you use our app or website.',
                      style: TextStyle(
                        fontSize: 12,
                        height: 1.5,
                        color: Color(0xFF64748B),
                      ),
                    ),
                  ],
                ),
              ),
              // Information We Collect Section
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Color(0xFFF8FAFD),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // User Icon
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEF3FF),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.person_outline,
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
                            '1. Information We Collect',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF092747),
                            ),
                          ),
        
                          SizedBox(height: 7),
        
                          Text(
                            'We collect personal information that you provide to us directly, such as your name, mobile number, email address, date of birth, PAN, and financial information when you use our services.',
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
        
                    // Dropdown Arrow
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 19,
                      color: Color(0xFF94A3B8),
                    ),
                  ],
                ),
              ),
              // How We Use Your Information
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10,
                vertical: 5),
                padding: EdgeInsets.all(14),
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
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEF5FF),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.folder_outlined,
                        size: 20,
                        color: Color(0xFF315BFF),
                      ),
                    ),
        
                    SizedBox(width: 12),
        
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '2. How We Use Your Information',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF092747),
                            ),
                          ),
        
                          SizedBox(height: 7),
        
                          Text(
                            'We use your information to provide, maintain and improve our services, process loan applications, communicate with you, and comply with legal obligations.',
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
              // How We Protect Your Information
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10 , vertical: 5),
                padding: EdgeInsets.all( 14),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
        
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '3. How We Protect Your Information',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF092747),
                            ),
                          ),
        
                          SizedBox(height: 7),
        
                          Text(
                            'We implement industry-standard security measures to protect your data from unauthorized access, disclosure, alteration, or destruction.',
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
              // Information Sharing
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                padding: EdgeInsets.all( 14),
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
                    // Sharing Icon
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEF5FF),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.share_outlined,
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
                            '4. Information Sharing',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF092747),
                            ),
                          ),
        
                          SizedBox(height: 7),
        
                          Text(
                            'We do not sell your personal information. We may share your information with trusted partners and service providers only for the purpose of delivering our services.',
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
        
                    // Dropdown Arrow
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 19,
                      color: Color(0xFF94A3B8),
                    ),
                  ],
                ),
              ),
              // Your Rights
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                padding: EdgeInsets.all( 14),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // User Icon
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

                    // Section Details
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '5. Your Rights',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF092747),
                            ),
                          ),

                          SizedBox(height: 7),

                          Text(
                            'You have the right to access, update, or delete your personal information. You can also object to or restrict the processing of your data.',
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

                    // Dropdown Arrow
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 19,
                      color: Color(0xFF94A3B8),
                    ),
                  ],
                ),
              ),
              // Changes to This Policy
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                padding: EdgeInsets.all( 14),
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
                            '6. Changes to This Policy',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF092747),
                            ),
                          ),

                          SizedBox(height: 7),

                          Text(
                            'We may update this Privacy Policy from time to time. We will notify you of any significant changes through the app or email.',
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

                    // Dropdown Arrow
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 19,
                      color: Color(0xFF94A3B8),
                    ),
                  ],
                ),
              ),
              // Privacy Agreement
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                padding: EdgeInsets.all(14
                ),
                decoration: BoxDecoration(
                  color: Color(0xFFF3F7FF),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Color(0xFFDCE8FF),
                    width: 1,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.verified_user_outlined,
                      size: 20,
                      color: Color(0xFF315BFF),
                    ),

                    SizedBox(width: 12),

                    Expanded(
                      child: Text(
                        'By using our app or website, you agree to the collection and use of information in accordance with this Privacy Policy.',
                        style: TextStyle(
                          fontSize: 11,
                          height: 1.3,
                          color: Color(0xFF344054),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              // Contact Us Button
              SafeArea(
                child: Container(
                  width: double.infinity,
                  height: 44,
                  margin: EdgeInsets.fromLTRB(10, 2, 10, 16),
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
                          Icons.mail_outline,
                          size: 20,
                          color: Colors.white,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Contact Us',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
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
    );
  }
}