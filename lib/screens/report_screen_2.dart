import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'print_screen.dart';

class ReportScreen2 extends StatelessWidget {
  ReportScreen2();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8FAFC),
      body: SafeArea(
        child: Column(
          children: [

            // Top Header
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 14),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xFFE5E7EB),
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                children: [

                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 23,
                      color: Color(0xFF27347A),
                    ),
                  ),

                  SizedBox(width: 30),

                  Text(
                    'CIBIL Report',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF27347A),
                    ),
                  ),

                  Expanded(
                    child: SizedBox(),
                  ),

                  Icon(
                    Icons.download_outlined,
                    size: 23,
                    color: Color(0xFF27347A),
                  ),

                  SizedBox(width: 20),

                  Icon(
                    Icons.share_outlined,
                    size: 23,
                    color: Color(0xFF27347A),
                  ),
                ],
              ),
            ),

            // PDF Report Area
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [

                      // PDF File Information
                      SizedBox(height: 10),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Container(
                          width: double.infinity,
                          height: 70,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                              color: Color(0xFFE5E7EB),
                            ),
                          ),
                          child: Row(
                            children: [

                              Container(
                                width: 36,
                                height: 36,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE53935),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Center(
                                  child: Text(
                                    'PDF',
                                    style: TextStyle(
                                      fontSize: 9,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(width: 9),

                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text(
                                      'CIBIL_Report_08_Jul_2026.pdf',
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF27347A),
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),

                                    SizedBox(height: 3),

                                    Text(
                                      'Generated on 08 Jul 2026 • 10:30 AM',
                                      style: TextStyle(
                                        fontSize: 9,
                                        color: Color(0xFF64748B),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 7,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFF1F5FF),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  '1 / 12',
                                  style: TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF2563EB),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 10),

                      // BIG PDF CONTAINER STARTS HERE
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Color(0xFFE2E8F0),
                          ),
                        ),
                        child: Column(
                          children: [

                            // PDF Viewer Toolbar
                            Container(
                              width: double.infinity,
                              height: 45,
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              decoration: BoxDecoration(
                                color: Color(0xFF1E293B),
                              ),
                              child: Row(
                                children: [

                                  Icon(
                                    Icons.menu,
                                    size: 18,
                                    color: Colors.white,
                                  ),

                                  SizedBox(width: 18),

                                  Container(
                                    width: 25,
                                    height: 25,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF334155),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),

                                  SizedBox(width: 7),

                                  Text(
                                    '/ 12',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),

                                  Expanded(
                                    child: SizedBox(),
                                  ),

                                  Icon(
                                    Icons.remove,
                                    size: 14,
                                    color: Colors.white,
                                  ),

                                  SizedBox(width: 10),

                                  Text(
                                    '100%',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),

                                  SizedBox(width: 10),

                                  Icon(
                                    Icons.add,
                                    size: 14,
                                    color: Colors.white,
                                  ),

                                  SizedBox(width: 12),

                                  Container(
                                    width: 1,
                                    height: 25,
                                    color: Color(0xFF475569),
                                  ),

                                  SizedBox(width: 14),

                                  Icon(
                                    Icons.fullscreen,
                                    size: 18,
                                    color: Colors.white,
                                  ),

                                  SizedBox(width: 18),

                                  Icon(
                                    Icons.download_outlined,
                                    size: 18,
                                    color: Colors.white,
                                  ),

                                  SizedBox(width: 18),

                                  Icon(
                                    Icons.more_vert,
                                    size: 18,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 12,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  // CIBIL Logo
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Text(
                                          'CIBIL',
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF0EA5E9),
                                            height: 1,
                                          ),
                                        ),

                                        SizedBox(height: 5),

                                        Text(
                                          'PART OF\nTRANSUNION',
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xFF64748B),
                                            height: 1.3,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Report Title
                                  Expanded(
                                    flex: 5,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Text(
                                          'CIBIL CONSUMER CREDIT\nINFORMATION REPORT',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF2563EB),
                                            height: 1.3,
                                          ),
                                        ),

                                        SizedBox(height: 4),

                                        Text(
                                          'Date : 08 Jul 2026 | Time :\n10:30 AM',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xFF475569),
                                            height: 1.4,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  // Zero Commission Logo
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Image.asset(
                                          'assets/images/zero_commission_black.png',
                                          width: 85,
                                          height: 25,
                                          fit: BoxFit.contain,
                                        ),

                                        SizedBox(height: 2),

                                        Text(
                                          'Loan\nSolutions',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFF1E3A8A),
                                            height: 1.1,
                                          ),
                                        ),

                                        Text(
                                          'Smart Loans.\nZero\nCommission.',
                                          style: TextStyle(
                                            fontSize: 9,
                                            color: Color(0xFF94A3B8),
                                            height: 1.1,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 8,
                              ),
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.fromLTRB(
                                  16,
                                  14,
                                  16,
                                  14,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(9),
                                  border: Border.all(
                                    color: Color(0xFFD8E5F7),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    // Heading
                                    Row(
                                      children: [

                                        Icon(
                                          Icons.person_outline,
                                          size: 22,
                                          color: Color(0xFF4F46E5),
                                        ),

                                        SizedBox(width: 8),

                                        Text(
                                          'PERSONAL INFORMATION',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF4F46E5),
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 22),

                                    // Name + Current Address
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Expanded(
                                          child: _reportInfoItem(
                                            'Name',
                                            'Rahul Sharma',
                                          ),
                                        ),

                                        SizedBox(width: 12),

                                        Expanded(
                                          child: _reportInfoItem(
                                            'Current\nAddress',
                                            '123, Green Park, New Delhi - 110016, India',
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 18),

                                    // Date of Birth + Gender
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Expanded(
                                          child: _reportInfoItem(
                                            'Date of Birth',
                                            '15 Jan 1992',
                                          ),
                                        ),

                                        SizedBox(width: 12),

                                        Expanded(
                                          child: _reportInfoItem(
                                            'Gender',
                                            'Male',
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 18),

                                    // Phone + PAN
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Expanded(
                                          child: _reportInfoItem(
                                            'Phone',
                                            '+91 98765 43210',
                                          ),
                                        ),

                                        SizedBox(width: 12),

                                        Expanded(
                                          child: _reportInfoItem(
                                            'PAN',
                                            'ABCPS1234D',
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 18),

                                    // Email + CIBIL Number
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Expanded(
                                          child: _reportInfoItem(
                                            'Email',
                                            'rahul.sharma@email.com',
                                          ),
                                        ),

                                        SizedBox(width: 12),

                                        Expanded(
                                          child: _reportInfoItem(
                                            'CIBIL\nNumber',
                                            '5,6789,4321,0987',
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 18),

                                    // Report Reference Number
                                    _reportInfoItem(
                                      'Report\nReference\nNumber',
                                      '2890 5678 1234',
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 8,
                              ),
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.fromLTRB(
                                  14,
                                  14,
                                  14,
                                  12,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(9),
                                  border: Border.all(
                                    color: Color(0xFFD8E5F7),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    // Heading
                                    Row(
                                      children: [

                                        Icon(
                                          Icons.bar_chart_outlined,
                                          size: 18,
                                          color: Color(0xFF4F46E5),
                                        ),

                                        SizedBox(width: 6),

                                        Text(
                                          'CIBIL SCORE',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF4F46E5),
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 14),

                                    // Score Gauge
                                    SizedBox(
                                      width: double.infinity,
                                      height: 115,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [

                                          Positioned(
                                            top: 0,
                                            child: CustomPaint(
                                              size: Size(180, 100),
                                              painter: CibilScorePainter(),
                                            ),
                                          ),

                                          Positioned(
                                            top: 42,
                                            child: Column(
                                              children: [

                                                Text(
                                                  '786',
                                                  style: TextStyle(
                                                    fontSize: 28,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xFF059669),
                                                  ),
                                                ),

                                                Text(
                                                  'Good',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xFF059669),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),

                                          Positioned(
                                            left: 5,
                                            bottom: 0,
                                            child: Text(
                                              '300',
                                              style: TextStyle(
                                                fontSize: 9,
                                                color: Color(0xFF94A3B8),
                                              ),
                                            ),
                                          ),

                                          Positioned(
                                            right: 5,
                                            bottom: 0,
                                            child: Text(
                                              '900',
                                              style: TextStyle(
                                                fontSize: 9,
                                                color: Color(0xFF94A3B8),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    SizedBox(height: 10),

                                    // Summary Heading
                                    Text(
                                      'Your CIBIL Score Summary',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF1E3A8A),
                                      ),
                                    ),

                                    SizedBox(height: 7),

                                    Text(
                                      'Your CIBIL Score is 786 which is in the Good '
                                          'range. It indicates a low credit risk and the '
                                          'probability of repayment is high.',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Color(0xFF64748B),
                                        height: 1.5,
                                      ),
                                    ),

                                    SizedBox(height: 12),

                                    // Score Range
                                    Row(
                                      children: [

                                        Expanded(
                                          child: Container(
                                            height: 9,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFEF4444),
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(2),
                                                bottomLeft: Radius.circular(2),
                                              ),
                                            ),
                                          ),
                                        ),

                                        Expanded(
                                          child: Container(
                                            height: 9,
                                            color: Color(0xFFF97316),
                                          ),
                                        ),

                                        Expanded(
                                          child: Container(
                                            height: 9,
                                            color: Color(0xFFEAB308),
                                          ),
                                        ),

                                        Expanded(
                                          child: Container(
                                            height: 9,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF10B981),
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(2),
                                                bottomRight: Radius.circular(2),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 3),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [

                                        Text(
                                          '300-549\nPoor',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 7,
                                            color: Color(0xFF64748B),
                                          ),
                                        ),

                                        Text(
                                          '550-649\nFair',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 7,
                                            color: Color(0xFF64748B),
                                          ),
                                        ),

                                        Text(
                                          '650-749\nGood',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 7,
                                            color: Color(0xFF64748B),
                                          ),
                                        ),

                                        Text(
                                          '750-900\nExcellent',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 7,
                                            color: Color(0xFF64748B),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 8,
                              ),
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.fromLTRB(
                                  14,
                                  14,
                                  14,
                                  14,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(9),
                                  border: Border.all(
                                    color: Color(0xFFD8E5F7),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    // Heading
                                    Row(
                                      children: [

                                        Icon(
                                          Icons.assignment_outlined,
                                          size: 18,
                                          color: Color(0xFF4F46E5),
                                        ),

                                        SizedBox(width: 6),

                                        Text(
                                          'CREDIT ACCOUNT SUMMARY',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF4F46E5),
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 12),

                                    // Summary Cards
                                    Row(
                                      children: [

                                        Expanded(
                                          child: _summaryBox(
                                            'Total\nAccounts',
                                            '12',
                                            Color(0xFFF0F6FF),
                                          ),
                                        ),

                                        SizedBox(width: 7),

                                        Expanded(
                                          child: _summaryBox(
                                            'Active\nAccounts',
                                            '08',
                                            Color(0xFFF0FFF7),
                                          ),
                                        ),

                                        SizedBox(width: 7),

                                        Expanded(
                                          child: _summaryBox(
                                            'Closed\nAccounts',
                                            '04',
                                            Color(0xFFF8F7FF),
                                          ),
                                        ),

                                        SizedBox(width: 7),

                                        Expanded(
                                          child: _summaryBox(
                                            'Enquiries',
                                            '03',
                                            Color(0xFFFFFAEC),
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 14),

                                    // Table Header
                                    Row(
                                      children: [

                                        Expanded(
                                          flex: 4,
                                          child: Text(
                                            'Account Type',
                                            style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF4F46E5),
                                            ),
                                          ),
                                        ),

                                        Expanded(
                                          flex: 2,
                                          child: Text(
                                            'Total',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 7,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF4F46E5),
                                            ),
                                          ),
                                        ),

                                        Expanded(
                                          flex: 2,
                                          child: Text(
                                            'Active',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 7,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF4F46E5),
                                            ),
                                          ),
                                        ),

                                        Expanded(
                                          flex: 2,
                                          child: Text(
                                            'Closed',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 7,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF4F46E5),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 7),

                                    Divider(
                                      height: 1,
                                      color: Color(0xFFE2E8F0),
                                    ),

                                    _accountSummaryRow(
                                      'Credit Cards',
                                      '04',
                                      '03',
                                      '01',
                                    ),

                                    _accountSummaryRow(
                                      'Personal Loans',
                                      '03',
                                      '02',
                                      '01',
                                    ),

                                    _accountSummaryRow(
                                      'Home Loans',
                                      '02',
                                      '01',
                                      '01',
                                    ),

                                    _accountSummaryRow(
                                      'Auto Loans',
                                      '01',
                                      '01',
                                      '00',
                                    ),

                                    _accountSummaryRow(
                                      'Other Loans',
                                      '02',
                                      '01',
                                      '01',
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 8,
                              ),
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.fromLTRB(
                                  14,
                                  14,
                                  14,
                                  14,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(9),
                                  border: Border.all(
                                    color: Color(0xFFD8E5F7),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    // Heading
                                    Row(
                                      children: [

                                        Icon(
                                          Icons.calendar_today_outlined,
                                          size: 18,
                                          color: Color(0xFF4F46E5),
                                        ),

                                        SizedBox(width: 6),

                                        Text(
                                          'PAYMENT HISTORY',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF4F46E5),
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 18),

                                    // Payment Statistics
                                    Row(
                                      children: [

                                        Expanded(
                                          flex: 4,
                                          child: Center(
                                            child: Text(
                                              '100%',
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF10B981),
                                              ),
                                            ),
                                          ),
                                        ),

                                        Expanded(
                                          flex: 6,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [

                                              _paymentStatusRow(
                                                Color(0xFF10B981),
                                                'On-time Payments',
                                                '100%',
                                              ),

                                              SizedBox(height: 8),

                                              _paymentStatusRow(
                                                Color(0xFFF59E0B),
                                                'Delinquent',
                                                '0%',
                                              ),

                                              SizedBox(height: 8),

                                              _paymentStatusRow(
                                                Color(0xFFEF4444),
                                                'Default',
                                                '0%',
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 20),

                                    // Excellent Payment Behaviour
                                    Container(
                                      width: double.infinity,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 9,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF0FDF4),
                                        borderRadius: BorderRadius.circular(7),
                                        border: Border.all(
                                          color: Color(0xFFD1FAE5),
                                        ),
                                      ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Container(
                                            width: 18,
                                            height: 18,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: Color(0xFF86EFAC),
                                              ),
                                            ),
                                            child: Icon(
                                              Icons.check,
                                              size: 12,
                                              color: Color(0xFF10B981),
                                            ),
                                          ),

                                          SizedBox(width: 8),

                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [

                                                Text(
                                                  'Excellent Payment Behavior',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xFF047857),
                                                  ),
                                                ),

                                                SizedBox(height: 2),

                                                Text(
                                                  'You have made all payments on time. Great going!',
                                                  style: TextStyle(
                                                    fontSize: 9,
                                                    color: Color(0xFF059669),
                                                    height: 1.3,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 8,
                              ),
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.fromLTRB(14, 14, 14, 14),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(9),
                                  border: Border.all(
                                    color: Color(0xFFD8E5F7),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    // Heading
                                    Row(
                                      children: [

                                        Icon(
                                          Icons.search,
                                          size: 16,
                                          color: Color(0xFF4F46E5),
                                        ),

                                        SizedBox(width: 6),

                                        Text(
                                          'CREDIT ENQUIRIES',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF4F46E5),
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 14),

                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        // Enquiry Count Card
                                        Expanded(
                                          flex: 4,
                                          child: Container(
                                            height: 72,
                                            padding: EdgeInsets.all(9),
                                            decoration: BoxDecoration(
                                              color: Color(0xFFF0F6FF),
                                              borderRadius: BorderRadius.circular(7),
                                              border: Border.all(
                                                color: Color(0xFFE0ECFF),
                                              ),
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [

                                                Text(
                                                  'Enquiries in the\nlast 12 months',
                                                  style: TextStyle(
                                                    fontSize: 9,
                                                    color: Color(0xFF4F46E5),
                                                    height: 1.3,
                                                  ),
                                                ),

                                                Expanded(
                                                  child: Center(
                                                    child: Text(
                                                      '03',
                                                      style: TextStyle(
                                                        fontSize: 22,
                                                        fontWeight: FontWeight.bold,
                                                        color: Color(0xFF3730A3),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),

                                        SizedBox(width: 12),

                                        // Enquiry Details
                                        Expanded(
                                          flex: 6,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [

                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [


                                                     Text(
                                                      'Enquiries Impact',
                                                      style: TextStyle(
                                                        fontSize: 9,
                                                        color: Color(0xFF64748B),
                                                      ),
                                                    ),
                                                  SizedBox(width: 40,),


                                                  Text(
                                                    ': Low',
                                                    style: TextStyle(
                                                      fontSize: 9,
                                                      fontWeight: FontWeight.w600,
                                                      color: Color(0xFF334155),
                                                    ),
                                                  ),
                                                ],
                                              ),

                                              SizedBox(height: 12),

                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [

                                                  Expanded(
                                                    child: Text(
                                                      'Most Recent\nEnquiry',
                                                      style: TextStyle(
                                                        fontSize: 9,
                                                        color: Color(0xFF64748B),
                                                        height: 1.3,
                                                      ),
                                                    ),
                                                  ),

                                                  SizedBox(width: 5),

                                                  Expanded(
                                                    child: Text(
                                                      ': 05 Jul\n2026',
                                                      style: TextStyle(
                                                        fontSize: 9,
                                                        fontWeight: FontWeight.w600,
                                                        color: Color(0xFF334155),
                                                        height: 1.3,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),

                                              SizedBox(height: 12),

                                              Text(
                                                'Enquiries in last 6 months : 02',
                                                style: TextStyle(
                                                  fontSize: 9,
                                                  color: Color(0xFF64748B),
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

                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 8,
                              ),
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.fromLTRB(14, 14, 14, 14),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(9),
                                  border: Border.all(
                                    color: Color(0xFFD8E5F7),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    // Heading
                                    Row(
                                      children: [

                                        Icon(
                                          Icons.nightlight_outlined,
                                          size: 16,
                                          color: Color(0xFF4F46E5),
                                        ),

                                        SizedBox(width: 6),

                                        Text(
                                          'CREDIT MIX',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF4F46E5),
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 14),

                                    Row(
                                      children: [

                                        // Donut Chart
                                        SizedBox(
                                          width: 80,
                                          height: 80,
                                          child: CustomPaint(
                                            painter: CreditMixPainter(),
                                          ),
                                        ),

                                        SizedBox(width: 14),

                                        // Legend
                                        Expanded(
                                          child: Column(
                                            children: [

                                              _creditMixRow(
                                                Color(0xFF4F46E5),
                                                'Credit Cards',
                                                '33%',
                                              ),

                                              SizedBox(height: 7),

                                              _creditMixRow(
                                                Color(0xFF10B981),
                                                'Personal Loans',
                                                '25%',
                                              ),

                                              SizedBox(height: 7),

                                              _creditMixRow(
                                                Color(0xFF8B5CF6),
                                                'Home Loans',
                                                '17%',
                                              ),

                                              SizedBox(height: 7),

                                              _creditMixRow(
                                                Color(0xFFF59E0B),
                                                'Auto Loans',
                                                '8%',
                                              ),

                                              SizedBox(height: 7),

                                              _creditMixRow(
                                                Color(0xFFCBD5E1),
                                                'Other Loans',
                                                '17%',
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
                            // Report Footer
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(
                                horizontal: 14,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                  top: BorderSide(
                                    color: Color(0xFFE2E8F0),
                                    width: 0.7,
                                  ),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Expanded(
                                    child: Text(
                                      'This is a system generated report and does not require a signature.',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Color(0xFF94A3B8),
                                        height: 1.4,
                                      ),
                                    ),
                                  ),

                                  SizedBox(width: 12),

                                  Text(
                                    'Page 1 of\n12',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 9,
                                      color: Color(0xFF94A3B8),
                                      height: 1.4,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),

                      SizedBox(height: 20),
                      // Bottom Action Buttons
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 12,
                        ),
                        child: Row(
                          children: [

                            // Download PDF Button
                            Expanded(
                              child: Container(
                                height: 38,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                  border: Border.all(
                                    color: Color(0xFF4563FF),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Icon(
                                      Icons.download_outlined,
                                      size: 14,
                                      color: Color(0xFF3155E7),
                                    ),

                                    SizedBox(width: 6),

                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => PrintScreen(),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        'Download PDF',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF3155E7),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(width: 10),

                            // Print Report Button
                            Expanded(
                              child: Container(
                                height: 38,
                                decoration: BoxDecoration(
                                  color: Color(0xFF3930AD),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Icon(
                                      Icons.print_outlined,
                                      size: 14,
                                      color: Colors.white,
                                    ),

                                    SizedBox(width: 6),

                                    Text(
                                      'Print Report',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
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
    );
  }
  Widget _creditMixRow(
      Color dotColor,
      String title,
      String percentage,
      ) {
    return Row(
      children: [

        Container(
          width: 6,
          height: 6,
          decoration: BoxDecoration(
            color: dotColor,
            shape: BoxShape.circle,
          ),
        ),

        SizedBox(width: 7),

        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 8,
              color: Color(0xFF334155),
            ),
          ),
        ),

        Text(
          percentage,
          style: TextStyle(
            fontSize: 8,
            fontWeight: FontWeight.w600,
            color: Color(0xFF334155),
          ),
        ),
      ],
    );
  }

  Widget _paymentStatusRow(
      Color dotColor,
      String title,
      String percentage,
      ) {
    return Row(
      children: [

        Container(
          width: 6,
          height: 6,
          decoration: BoxDecoration(
            color: dotColor,
            shape: BoxShape.circle,
          ),
        ),

        SizedBox(width: 7),

        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 9,
              color: Color(0xFF334155),
            ),
          ),
        ),

        Text(
          percentage,
          style: TextStyle(
            fontSize: 7,
            fontWeight: FontWeight.w600,
            color: Color(0xFF334155),
          ),
        ),
      ],
    );
  }

  Widget _summaryBox(
      String title,
      String value,
      Color backgroundColor,
      ) {
    return Container(
      height: 70,
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            title,
            style: TextStyle(
              fontSize: 9,
              color: Color(0xFF64748B),
              height: 1.2,
            ),
          ),

          SizedBox(height: 5),

          Text(
            value,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF27347A),
            ),
          ),
        ],
      ),
    );
  }

  Widget _accountSummaryRow(
      String accountType,
      String total,
      String active,
      String closed,
      ) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFE2E8F0),
            width: 0.7,
          ),
        ),
      ),
      child: Row(
        children: [

          Expanded(
            flex: 4,
            child: Text(
              accountType,
              style: TextStyle(
                fontSize: 10,
                color: Color(0xFF334155),
              ),
            ),
          ),

          Expanded(
            flex: 2,
            child: Text(
              total,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 9,
                color: Color(0xFF334155),
              ),
            ),
          ),

          Expanded(
            flex: 2,
            child: Text(
              active,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 9,
                color: Color(0xFF334155),
              ),
            ),
          ),

          Expanded(
            flex: 2,
            child: Text(
              closed,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 9,
                color: Color(0xFF334155),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _reportInfoItem(
      String label,
      String value,
      ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        SizedBox(
          width: 70,
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF64748B),
              height: 1.4,
            ),
          ),
        ),

        Text(
          ':',
          style: TextStyle(
            fontSize: 12,
            color: Color(0xFF1E293B),
          ),
        ),

        SizedBox(width: 5),

        Expanded(
          child: Text(
            value,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xFF1E293B),
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}
class CreditMixPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(
      size.width / 2,
      size.height / 2,
    );

    final radius = math.min(
      size.width,
      size.height,
    ) / 2 - 5;

    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 7
      ..strokeCap = StrokeCap.butt;

    final colors = [
      Color(0xFF4F46E5),
      Color(0xFF10B981),
      Color(0xFF8B5CF6),
      Color(0xFFF59E0B),
      Color(0xFFCBD5E1),
    ];

    final values = [33, 25, 17, 8, 17];

    double startAngle = -math.pi / 2;

    for (int i = 0; i < values.length; i++) {
      paint.color = colors[i];

      final sweepAngle =
          (values[i] / 100) * 2 * math.pi;

      canvas.drawArc(
        Rect.fromCircle(
          center: center,
          radius: radius,
        ),
        startAngle,
        sweepAngle,
        false,
        paint,
      );

      startAngle += sweepAngle;
    }
  }

  @override
  bool shouldRepaint(
      covariant CustomPainter oldDelegate,
      ) {
    return false;
  }
}

class CibilScorePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 14
      ..strokeCap = StrokeCap.butt;

    final rect = Rect.fromLTWH(
      7,
      7,
      size.width - 14,
      size.height * 2 - 14,
    );

    paint.color = Color(0xFFE2E8F0);

    canvas.drawArc(
      rect,
      math.pi,
      math.pi,
      false,
      paint,
    );

    paint.color = Color(0xFF10B981);

    canvas.drawArc(
      rect,
      math.pi,
      math.pi * 0.81,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(
      covariant CustomPainter oldDelegate,
      ) {
    return false;
  }
}