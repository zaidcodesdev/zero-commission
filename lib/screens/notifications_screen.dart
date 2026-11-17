import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  NotificationsScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F9FB),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 56,

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 21,
            color: Color(0xFF344054),
          ),
        ),

        title: Text(
          'Notifications',
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
              Icons.settings_outlined,
              size: 21,
              color: Color(0xFF344054),
            ),
          ),
          SizedBox(width: 5),
        ],
      ),

      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  // All Tab
                  Expanded(
                    child: Container(
                      height: 42,
                      decoration: BoxDecoration(
                        color: Color(0xFFF8F9FB),
                        border: Border(
                          bottom: BorderSide(
                            color: Color(0xFF315BFF),
                            width: 2,
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'All',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF315BFF),
                        ),
                      ),
                    ),
                  ),
        
                  // Unread Tab
                  Expanded(
                    child: Container(
                      height: 42,
                      color: Color(0xFFF8F9FB),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Unread',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF64748B),
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            width: 19,
                            height: 19,
                            decoration: BoxDecoration(
                              color: Color(0xFF315BFF),
                              shape: BoxShape.circle,
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              '3',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
        
                  // Offers Tab
                  Expanded(
                    child: Container(
                      height: 42,
                      color: Color(0xFFF8F9FB),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Offers',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF64748B),
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            width: 6,
                            height: 6,
                            decoration: BoxDecoration(
                              color: Color(0xFF20C878),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(15, 16, 15, 12),
                color: Colors.white,
                alignment: Alignment.centerLeft,
                child: Text(
                  'TODAY',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.6,
                    color: Color(0xFF718096),
                  ),
                ),
              ),
              // CIBIL Report Notification
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 13,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFFF1F3F7),
                      width: 0.7,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    // Unread Indicator
                    Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: Color(0xFF315BFF),
                        shape: BoxShape.circle,
                      ),
                    ),
        
                    SizedBox(width: 8),
        
                    // Icon Circle
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEF3FF),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.description_outlined,
                        color: Color(0xFF3164FF),
                        size: 20,
                      ),
                    ),
        
                    SizedBox(width: 12),
        
                    // Notification Details
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'CIBIL Report Generated',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF182230),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Your CIBIL report has been generated successfully.',
                            style: TextStyle(
                              fontSize: 10,
                              height: 1.5,
                              color: Color(0xFF718096),
                            ),
                          ),
                        ],
                      ),
                    ),
        
                    SizedBox(width: 7),
        
                    // Time and Arrow
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '10:30 AM',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xFF64748B),
                          ),
                        ),
                        SizedBox(height: 10),
                        Icon(
                          Icons.chevron_right,
                          size: 19,
                          color: Color(0xFF9AA6B8),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // EMI Calculated Notification
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 13,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFFF1F3F7),
                      width: 0.7,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    // Unread Indicator
                    Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: Color(0xFF315BFF),
                        shape: BoxShape.circle,
                      ),
                    ),
        
                    SizedBox(width: 8),
        
                    // Icon Circle
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFFF8EEFF),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.calculate_outlined,
                        color: Color(0xFFAA43FF),
                        size: 20,
                      ),
                    ),
        
                    SizedBox(width: 12),
        
                    // Notification Details
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'EMI Calculated',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF182230),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Your EMI calculation of ₹25,000 has been completed.',
                            style: TextStyle(
                              fontSize: 10,
                              height: 1.5,
                              color: Color(0xFF718096),
                            ),
                          ),
                        ],
                      ),
                    ),
        
                    SizedBox(width: 7),
        
                    // Time and Arrow
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '10:15 AM',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xFF64748B),
                          ),
                        ),
                        SizedBox(height: 10),
                        Icon(
                          Icons.chevron_right,
                          size: 19,
                          color: Color(0xFF9AA6B8),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Personal Loan Application Notification
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 13,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFFF1F3F7),
                      width: 0.7,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    // Unread Indicator
                    Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: Color(0xFF315BFF),
                        shape: BoxShape.circle,
                      ),
                    ),
        
                    SizedBox(width: 8),
        
                    // Icon Circle
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFFEBFBF1),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.business_outlined,
                        color: Color(0xFF16B65B),
                        size: 20,
                      ),
                    ),
        
                    SizedBox(width: 12),
        
                    // Notification Details
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Personal Loan Application',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF182230),
                            ),
                          ),
        
                          SizedBox(height: 5),
        
                          Text(
                            'Your personal loan application has been submitted successfully.',
                            style: TextStyle(
                              fontSize: 10,
                              height: 1.5,
                              color: Color(0xFF718096),
                            ),
                          ),
                        ],
                      ),
                    ),
        
                    SizedBox(width: 7),
        
                    // Time and Arrow
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '09:45 AM',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xFF64748B),
                          ),
                        ),
        
                        SizedBox(height: 10),
        
                        Icon(
                          Icons.chevron_right,
                          size: 19,
                          color: Color(0xFF9AA6B8),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Yesterday Heading
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(15, 16, 15, 12),
                color: Colors.white,
                alignment: Alignment.centerLeft,
                child: Text(
                  'YESTERDAY',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.6,
                    color: Color(0xFF718096),
                  ),
                ),
              ),
              // Documents Uploaded Notification
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 13,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFFF1F3F7),
                      width: 0.7,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    // Upload Icon
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFF5E9),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.upload_outlined,
                        size: 20,
                        color: Color(0xFFFF7A00),
                      ),
                    ),
        
                    SizedBox(width: 10),
        
                    // Notification Details
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Documents Uploaded',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF182230),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Your documents have been uploaded successfully.',
                            style: TextStyle(
                              fontSize: 10,
                              height: 1.5,
                              color: Color(0xFF718096),
                            ),
                          ),
                        ],
                      ),
                    ),
        
                    SizedBox(width: 7),
        
                    // Time and Arrow
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '07:20 PM',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xFF64748B),
                          ),
                        ),
                        SizedBox(height: 10),
                        Icon(
                          Icons.chevron_right,
                          size: 19,
                          color: Color(0xFF9AA6B8),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Credit Score Updated Notification
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 13,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFFF1F3F7),
                      width: 0.7,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    // Credit Score Icon
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEF5FF),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.monitor_heart_outlined,
                        size: 20,
                        color: Color(0xFF315BFF),
                      ),
                    ),
        
                    SizedBox(width: 10),
        
                    // Notification Details
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Credit Score Updated',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF182230),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Great news! Your credit score has increased to 786.',
                            style: TextStyle(
                              fontSize: 10,
                              height: 1.5,
                              color: Color(0xFF718096),
                            ),
                          ),
                        ],
                      ),
                    ),
        
                    SizedBox(width: 7),
        
                    // Time and Arrow
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '06:10 PM',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xFF64748B),
                          ),
                        ),
                        SizedBox(height: 10),
                        Icon(
                          Icons.chevron_right,
                          size: 19,
                          color: Color(0xFF9AA6B8),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Earlier Heading
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(15, 16, 15, 12),
                color: Colors.white,
                alignment: Alignment.centerLeft,
                child: Text(
                  'EARLIER',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.6,
                    color: Color(0xFF718096),
                  ),
                ),
              ),
              // Payment Reminder Notification
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 13,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFFF1F3F7),
                      width: 0.7,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    // Bell Icon
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F7FA),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.notifications_none,
                        size: 20,
                        color: Color(0xFF7B8798),
                      ),
                    ),
        
                    SizedBox(width: 12),
        
                    // Notification Details
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Payment Reminder',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF182230),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Your EMI payment of ₹12,500 is due tomorrow.',
                            style: TextStyle(
                              fontSize: 10,
                              height: 1.5,
                              color: Color(0xFF718096),
                            ),
                          ),
                        ],
                      ),
                    ),
        
                    SizedBox(width: 7),
        
                    // Date and Arrow
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '05 Jul 2026',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xFF64748B),
                          ),
                        ),
                        SizedBox(height: 10),
                        Icon(
                          Icons.chevron_right,
                          size: 19,
                          color: Color(0xFF9AA6B8),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // New Loan Offer Notification
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 13,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFFF1F3F7),
                      width: 0.7,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    // Offer Icon
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFFE9FBF3),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.local_offer_outlined,
                        size: 20,
                        color: Color(0xFF10B981),
                      ),
                    ),
        
                    SizedBox(width: 12),
        
                    // Notification Details
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'New Loan Offer',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF182230),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'You are pre-approved for a Personal Loan up to ₹5,00,000.',
                            style: TextStyle(
                              fontSize: 10,
                              height: 1.5,
                              color: Color(0xFF718096),
                            ),
                          ),
                        ],
                      ),
                    ),
        
                    SizedBox(width: 7),
        
                    // Date and Arrow
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '04 Jul 2026',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xFF64748B),
                          ),
                        ),
                        SizedBox(height: 10),
                        Icon(
                          Icons.chevron_right,
                          size: 19,
                          color: Color(0xFF9AA6B8),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Refer & Earn Notification
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 13,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFFF1F3F7),
                      width: 0.7,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    // Refer Icon
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFFF8EEFF),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.card_giftcard_outlined,
                        size: 20,
                        color: Color(0xFFAA43FF),
                      ),
                    ),

                    SizedBox(width: 12),

                    // Notification Details
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Refer & Earn',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF182230),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Refer your friends and earn exciting rewards.',
                            style: TextStyle(
                              fontSize: 10,
                              height: 1.5,
                              color: Color(0xFF718096),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 7),

                    // Date and Arrow
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '02 Jul 2026',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xFF64748B),
                          ),
                        ),
                        SizedBox(height: 10),
                        Icon(
                          Icons.chevron_right,
                          size: 19,
                          color: Color(0xFF9AA6B8),
                        ),
                      ],
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
}