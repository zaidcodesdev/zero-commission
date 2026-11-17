import 'package:flutter/material.dart';
import 'accounts_screen_4.dart';
import 'accounts_screen_2.dart';
import 'accounts_screen.dart';

class AccountsScreen3 extends StatelessWidget {
  AccountsScreen3();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F9FA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
          
              // Header
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
                            'Closed (6)',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2563EB),
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
                                builder: (context) => AccountsScreen4(),
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              'Overdue (2)',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF64748B),
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
                  horizontal: 15,
                  vertical: 14,
                ),
                child: Container(
                  width: double.infinity,
                  height: 88,
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFEAF3FF),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xFFD6E7FF),
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
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.lock_outline,
                          color: Color(0xFF2563EB),
                          size: 24,
                        ),
                      ),
          
                      SizedBox(width: 10),
          
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
          
                            Text(
                              'Closed Accounts Summary',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF173B8F),
                              ),
                            ),
          
                            SizedBox(height: 2),
          
                            Text(
                              'These are accounts that have been\nclosed.',
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(0xFF64748B),
                              ),
                            ),
                          ],
                        ),
                      ),
          
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
          
                          Text(
                            '6',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2563EB),
                            ),
                          ),
          
                          SizedBox(height: 1),
          
                          Text(
                            'TOTAL',
                            style: TextStyle(
                              fontSize: 9,
                              color: Color(0xFF2563EB),
                            ),
                          ),
          
                          SizedBox(height: 3),
          
                          Text(
                            'CLOSED',
                            style: TextStyle(
                              fontSize: 9,
                              color: Color(0xFF2563EB),
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
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
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
          
                      // HDFC Bank Credit Card
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 38,
                                height: 38,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEAF3FF),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Icon(
                                  Icons.credit_card,
                                  color: Color(0xFF2563EB),
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
                              'CLOSED',
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
                            'Credit Limit\n₹75,000',
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
                            'Last Reported Balance\n₹0',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF64748B),
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
                            'Closed On\n15 Mar 2024',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF64748B),
                              height: 1.6,
                            ),
                          ),
                          Text(
                            'Status\nClosed',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF00A86B),
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
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
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
                                  color: Color(0xFFEAF3FF),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Icon(
                                  Icons.home,
                                  color: Color(0xFF2563EB),
                                  size: 20,
                                ),
                              ),
          
                              SizedBox(width: 10),
          
                              Text(
                                'SBI Home Loan',
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
                              'CLOSED',
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
                            'Sanctioned Amount\n₹35,00,000',
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
                            'Account Type\nHome Loan',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF64748B),
                              height: 1.6,
                            ),
                          ),
          
                          Text(
                            'Last Reported Balance\n₹0',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF64748B),
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
                            'Closed On\n02 Feb 2024',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF64748B),
                              height: 1.6,
                            ),
                          ),
          
                          Text(
                            'Status\nClosed',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF00A86B),
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
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
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
                                  color: Color(0xFFEAF3FF),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Icon(
                                  Icons.account_balance_wallet,
                                  color: Color(0xFF2563EB),
                                  size: 20,
                                ),
                              ),
          
                              SizedBox(width: 10),
          
                              Text(
                                'Personal Loan (ICICI Bank)',
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
                              'CLOSED',
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
                            'Account Number\nXXXX XXXX XXXX 9101',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF64748B),
                              height: 1.6,
                            ),
                          ),
          
                          Text(
                            'Loan Amount\n₹2,00,000',
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
                            'Last Reported Balance\n₹0',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF64748B),
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
                            'Closed On\n10 Jan 2024',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF64748B),
                              height: 1.6,
                            ),
                          ),
          
                          Text(
                            'Status\nClosed',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF00A86B),
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
                  horizontal: 14,
                  vertical: 14,
                ),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFF1F7FF),
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(
                      color: Color(0xFFD9E9FF),
                      width: 1,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          color: Color(0xFF60A5FA),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.info_outline,
                          color: Colors.white,
                          size: 13,
                        ),
                      ),

                      SizedBox(width: 9),

                      Expanded(
                        child: Text(
                          'Closed accounts are not considered in your active '
                              'credit utilization and payment behavior.',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF315A91),
                            height: 1.5,
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
    );
  }
}