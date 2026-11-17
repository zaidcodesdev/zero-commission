import 'package:flutter/material.dart';
import 'package:zero_commission/screens/accounts_screen_3.dart';
import 'accounts_screen_2.dart';
import 'accounts_screen_3.dart';
import 'accounts_screen.dart';

class AccountsScreen4 extends StatelessWidget {
  AccountsScreen4();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F9FA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
          
              Container(
                width: double.infinity,
                height: 55,
                color: Color(0xFFF8F9FA),
                child: Row(
                  children: [
          
                    SizedBox(width: 16),
          
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AccountsScreen(),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 21,
                        color: Color(0xFF374151),
                      ),
                    ),
          
                    SizedBox(width: 68),
          
                    Text(
                      'Detailed Accounts',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF20233F),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 52,
                color: Colors.white,
                child: Row(
                  children: [
          
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AccountsScreen2(),
                            ),
                          );
                        },
                        child: Center(
                          child: Text(
                            'Active (8)',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF64748B),
                            ),
                          ),
                        ),
                      ),
                    ),
          
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AccountsScreen3(),
                            ),
                          );
                        },
                        child: Center(
                          child: Text(
                            'Closed (6)',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF64748B),
                            ),
                          ),
                        ),
                      ),
                    ),
          
                    Expanded(
                      child: Container(
                        height: 52,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xFF2563EB),
                              width: 2,
                            ),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Overdue(2)',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2563EB),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 14,
                ),
                child: Container(
                  width: double.infinity,
                  height: 102,
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFF1F1),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xFFFFDCDC),
                      width: 1,
                    ),
                  ),
                  child: Row(
                    children: [
          
                      Container(
                        width: 38,
                        height: 38,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.warning_amber_outlined,
                          color: Color(0xFFFF4D4D),
                          size: 23,
                        ),
                      ),
          
                      SizedBox(width: 10),
          
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
          
                            Text(
                              'Overdue Accounts',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFE11D48),
                              ),
                            ),
          
                            Text(
                              'Summary',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFE11D48),
                              ),
                            ),
          
                            SizedBox(height: 2),
          
                            Text(
                              'These accounts have\noutstanding payments due\nbeyond the due date.',
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xFF64748B),
                                height: 1.3,
                              ),
                            ),
                          ],
                        ),
                      ),
          
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
          
                          Text(
                            '2',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFEF4444),
                            ),
                          ),
          
                          SizedBox(height: 2),
          
                          Text(
                            'TOTAL OVERDUE',
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF64748B),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 2),
          
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
          
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
          
                          Row(
                            children: [
          
                              Container(
                                width: 38,
                                height: 38,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF1E8FF),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Icon(
                                  Icons.credit_card,
                                  color: Color(0xFF7C3AED),
                                  size: 20,
                                ),
                              ),
          
                              SizedBox(width: 10),
          
                              Text(
                                'HDFC Bank Credit Card',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF20233F),
                                ),
                              ),
                            ],
                          ),
          
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFFFFE1E1),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              'OVERDUE',
                              style: TextStyle(
                                fontSize: 7,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
          
                      SizedBox(height: 14),
          
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
          
                          Text(
                            'Account Number\nXXXX XXXX XXXX 1234',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF64748B),
                              height: 1.6,
                            ),
                          ),
          
                          Text(
                            'Credit Limit\n₹1,50,000',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF64748B),
                              height: 1.6,
                            ),
                          ),
                        ],
                      ),
          
                      SizedBox(height: 10),
          
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
          
                          Text(
                            'Account Type\nCredit Card',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF64748B),
                              height: 1.6,
                            ),
                          ),
          
                          Text(
                            'Minimum Due\n₹2,350',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF64748B),
                              height: 1.6,
                            ),
                          ),
                        ],
                      ),
          
                      SizedBox(height: 10),
          
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
          
                          Text(
                            'Total Outstanding\n₹18,450',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF64748B),
                              height: 1.6,
                            ),
                          ),
          
                          Text(
                            'Amount Overdue\n₹2,350',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              height: 1.6,
                            ),
                          ),
                        ],
                      ),
          
                      SizedBox(height: 10),
          
                      Divider(
                        color: Color(0xFFF0F0F0),
                        height: 1,
                      ),
          
                      SizedBox(height: 10),
          
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
          
                          Text(
                            'Due Date\n05 May 2024',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF64748B),
                              height: 1.6,
                            ),
                          ),
          
                          Text(
                            'Days Overdue\n15 Days',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              height: 1.6,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 14),
          
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
          
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
          
                          Row(
                            children: [
          
                              Container(
                                width: 38,
                                height: 38,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE2FBEA),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Icon(
                                  Icons.home_outlined,
                                  color: Color(0xFF16A34A),
                                  size: 20,
                                ),
                              ),
          
                              SizedBox(width: 10),
          
                              Text(
                                'SBI Personal Loan',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF20233F),
                                ),
                              ),
                            ],
                          ),
          
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFFFFE1E1),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              'OVERDUE',
                              style: TextStyle(
                                fontSize: 7,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
          
                      SizedBox(height: 14),
          
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
          
                          Text(
                            'Account Number\nXXXX XXXX XXXX 5678',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF64748B),
                              height: 1.6,
                            ),
                          ),
          
                          Text(
                            'Loan Amount\n₹5,00,000',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF64748B),
                              height: 1.6,
                            ),
                          ),
                        ],
                      ),
          
                      SizedBox(height: 10),
          
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
          
                          Text(
                            'Account Type\nPersonal Loan',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF64748B),
                              height: 1.6,
                            ),
                          ),
          
                          Text(
                            'EMI Amount\n₹8,750',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF64748B),
                              height: 1.6,
                            ),
                          ),
                        ],
                      ),
          
                      SizedBox(height: 10),
          
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
          
                          Text(
                            'Total Outstanding\n₹2,35,000',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF64748B),
                              height: 1.6,
                            ),
                          ),
          
                          Text(
                            'Amount Overdue\n₹8,750',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              height: 1.6,
                            ),
                          ),
                        ],
                      ),
          
                      SizedBox(height: 10),
          
                      Divider(
                        color: Color(0xFFF0F0F0),
                        height: 1,
                      ),
          
                      SizedBox(height: 10),
          
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
          
                          Text(
                            'Due Date\n01 May 2024',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF64748B),
                              height: 1.6,
                            ),
                          ),
          
                          Text(
                            'Days Overdue\n19 Days',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              height: 1.6,
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
                  horizontal: 10,
                  vertical: 14,
                ),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFF8EF),
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(
                      color: Color(0xFFFFE3C2),
                      width: 1,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
          
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Icon(
                          Icons.warning_amber_outlined,
                          color: Color(0xFFFF8A00),
                          size: 22,
                        ),
                      ),
          
                      SizedBox(width: 10),
          
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
          
                            Text(
                              'Overdue payments may impact your credit score.',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF4B5563),
                              ),
                            ),
          
                            Text(
                              'Please clear your dues at the earliest to avoid penalties.',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF4B5563),
                              ),
                            ),
                          ],
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