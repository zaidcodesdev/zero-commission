import 'package:flutter/material.dart';

class AvailableOffersScreen extends StatefulWidget {
  AvailableOffersScreen();

  @override
  State<AvailableOffersScreen> createState() =>
      _AvailableOffersScreenState();
}

class _AvailableOffersScreenState
    extends State<AvailableOffersScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8FAFC),
      body: SafeArea(
        child: Column(
          children: [

            // Top Bar
            Container(
              height: 55,
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
                      size: 22,
                      color: Color(0xFF374151),
                    ),
                  ),

                  Expanded(
                    child: Center(
                      child: Text(
                        'Available Offers',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1E293B),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: Color(0xFFE2E8F0),
                      ),
                    ),
                    child: Icon(
                      Icons.filter_alt_outlined,
                      size: 18,
                      color: Color(0xFF475569),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 10,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Padding(
                          padding: EdgeInsets.only(right: 100),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              RichText(
                                text: TextSpan(
                                  children: [

                                    TextSpan(
                                      text: 'Personalized Offers ',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF1E293B),
                                      ),
                                    ),

                                    TextSpan(
                                      text: 'for You',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF2563EB),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(height: 5),

                              Text(
                                'Based on your profile & credit score',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF64748B),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 30),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                          _offerCategory(
                            icon: Icons.grid_view_outlined,
                            title: 'All Offers',
                            selected: true,
                          ),

                          SizedBox(width: 32),

                          _offerCategory(
                            icon: Icons.person_outline,
                            title: 'Personal Loan',
                          ),

                          SizedBox(width: 12),

                          _offerCategory(
                            icon: Icons.home_outlined,
                            title: 'Home Loan',
                          ),

                          SizedBox(width: 12),

                          _offerCategory(
                            icon: Icons.business_outlined,
                            title: 'Business Loan',
                          ),
                        ],
                      ),
                    ),
              ),
                    SizedBox(height: 50),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 13,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFF0F6FF),
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                            color: Color(0xFFD6E6FF),
                          ),
                        ),
                        child: Row(
                          children: [

                            Container(
                              width: 42,
                              height: 42,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(
                                Icons.verified_user,
                                size: 30,
                                color: Color(0xFF0755FF),
                              ),
                            ),

                            SizedBox(width: 12),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  '100% Safe & Secure',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF1E293B),
                                  ),
                                ),

                                SizedBox(height: 3),

                                Text(
                                  'Your data is protected and never shared',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFF64748B),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 24),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text(
                            'Personal Loan Offers',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1E293B),
                            ),
                          ),

                          Text(
                            'View All',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2563EB),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Container(
                        width: double.infinity,
                        height: 170,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Color(0xFFE2E8F0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.03),
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [

                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Image.asset(
                                      'assets/images/hdfc_image.png',
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              height: 57,
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    color: Color(0xFFE5E7EB),
                                  ),
                                ),
                              ),
                              child: Row(
                                children: [

                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 12),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Text(
                                            'Up to',
                                            style: TextStyle(
                                              fontSize: 8,
                                              color: Color(0xFF94A3B8),
                                            ),
                                          ),

                                          SizedBox(height: 3),

                                          Text(
                                            '₹25,00,000',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF1E293B),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  Container(
                                    width: 1,
                                    height: 35,
                                    color: Color(0xFFE5E7EB),
                                  ),

                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 12),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Text(
                                            'Interest Rate',
                                            style: TextStyle(
                                              fontSize: 8,
                                              color: Color(0xFF94A3B8),
                                            ),
                                          ),

                                          SizedBox(height: 3),

                                          Text(
                                            '10.49% p.a.',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF1E293B),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  Container(
                                    width: 1,
                                    height: 35,
                                    color: Color(0xFFE5E7EB),
                                  ),

                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 12),
                                      child: Row(
                                        children: [

                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [

                                              Text(
                                                'Tenure',
                                                style: TextStyle(
                                                  fontSize: 8,
                                                  color: Color(0xFF94A3B8),
                                                ),
                                              ),

                                              SizedBox(height: 3),

                                              Text(
                                                '12 - 60',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF1E293B),
                                                ),
                                              ),

                                              Text(
                                                'Months',
                                                style: TextStyle(
                                                  fontSize: 9,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF1E293B),
                                                ),
                                              ),
                                            ],
                                          ),

                                          Spacer(),

                                          Icon(
                                            Icons.chevron_right,
                                            size: 22,
                                            color: Color(0xFF2563EB),
                                          ),

                                          SizedBox(width: 8),
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
                    SizedBox(height: 12),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Container(
                        width: double.infinity,
                        height: 170,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Color(0xFFE2E8F0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.03),
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [

                            Expanded(
                              child: Image.asset(
                                'assets/images/SBI_loan.png',
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),

                            Container(
                              height: 57,
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    color: Color(0xFFE5E7EB),
                                  ),
                                ),
                              ),
                              child: Row(
                                children: [

                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 12),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Text(
                                            'Up to',
                                            style: TextStyle(
                                              fontSize: 8,
                                              color: Color(0xFF94A3B8),
                                            ),
                                          ),

                                          SizedBox(height: 3),

                                          Text(
                                            '₹20,00,000',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF1E293B),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  Container(
                                    width: 1,
                                    height: 35,
                                    color: Color(0xFFE5E7EB),
                                  ),

                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 12),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Text(
                                            'Interest Rate',
                                            style: TextStyle(
                                              fontSize: 8,
                                              color: Color(0xFF94A3B8),
                                            ),
                                          ),

                                          SizedBox(height: 3),

                                          Text(
                                            '10.75% p.a.',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF1E293B),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  Container(
                                    width: 1,
                                    height: 35,
                                    color: Color(0xFFE5E7EB),
                                  ),

                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 12),
                                      child: Row(
                                        children: [

                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [

                                              Text(
                                                'Tenure',
                                                style: TextStyle(
                                                  fontSize: 8,
                                                  color: Color(0xFF94A3B8),
                                                ),
                                              ),

                                              SizedBox(height: 3),

                                              Text(
                                                '12 - 72',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF1E293B),
                                                ),
                                              ),

                                              Text(
                                                'Months',
                                                style: TextStyle(
                                                  fontSize: 9,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF1E293B),
                                                ),
                                              ),
                                            ],
                                          ),

                                          Spacer(),

                                          Icon(
                                            Icons.chevron_right,
                                            size: 22,
                                            color: Color(0xFF2563EB),
                                          ),

                                          SizedBox(width: 8),
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
                    SizedBox(height: 12),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Container(
                        width: double.infinity,
                        height: 170,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Color(0xFFE2E8F0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.03),
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [

                            Expanded(
                              child: Image.asset(
                                'assets/images/ICICI_image.png',
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),

                            Container(
                              height: 57,
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    color: Color(0xFFE5E7EB),
                                  ),
                                ),
                              ),
                              child: Row(
                                children: [

                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 12),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Text(
                                            'Up to',
                                            style: TextStyle(
                                              fontSize: 8,
                                              color: Color(0xFF94A3B8),
                                            ),
                                          ),

                                          SizedBox(height: 3),

                                          Text(
                                            '₹20,00,000',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF1E293B),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  Container(
                                    width: 1,
                                    height: 35,
                                    color: Color(0xFFE5E7EB),
                                  ),

                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 12),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Text(
                                            'Interest Rate',
                                            style: TextStyle(
                                              fontSize: 8,
                                              color: Color(0xFF94A3B8),
                                            ),
                                          ),

                                          SizedBox(height: 3),

                                          Text(
                                            '10.75% p.a.',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF1E293B),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  Container(
                                    width: 1,
                                    height: 35,
                                    color: Color(0xFFE5E7EB),
                                  ),

                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 12),
                                      child: Row(
                                        children: [

                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [

                                              Text(
                                                'Tenure',
                                                style: TextStyle(
                                                  fontSize: 8,
                                                  color: Color(0xFF94A3B8),
                                                ),
                                              ),

                                              SizedBox(height: 3),

                                              Text(
                                                '12 - 72',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF1E293B),
                                                ),
                                              ),

                                              Text(
                                                'Months',
                                                style: TextStyle(
                                                  fontSize: 9,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF1E293B),
                                                ),
                                              ),
                                            ],
                                          ),

                                          Spacer(),

                                          Icon(
                                            Icons.chevron_right,
                                            size: 22,
                                            color: Color(0xFF2563EB),
                                          ),

                                          SizedBox(width: 8),
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
                    SizedBox(height: 24),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text(
                            'Home Loan Offers',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1E293B),
                            ),
                          ),

                          Text(
                            'View All',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2563EB),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Container(
                        width: double.infinity,
                        height: 170,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Color(0xFFE2E8F0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.03),
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [

                            Expanded(
                              child: Image.asset(
                                'assets/images/Axis_image.png',
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),

                            Container(
                              height: 57,
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    color: Color(0xFFE5E7EB),
                                  ),
                                ),
                              ),
                              child: Row(
                                children: [

                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 12),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Text(
                                            'Up to',
                                            style: TextStyle(
                                              fontSize: 8,
                                              color: Color(0xFF94A3B8),
                                            ),
                                          ),

                                          SizedBox(height: 3),

                                          Text(
                                            '₹5,00,00,000',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF1E293B),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  Container(
                                    width: 1,
                                    height: 35,
                                    color: Color(0xFFE5E7EB),
                                  ),

                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 12),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Text(
                                            'Interest Rate',
                                            style: TextStyle(
                                              fontSize: 8,
                                              color: Color(0xFF94A3B8),
                                            ),
                                          ),

                                          SizedBox(height: 3),

                                          Text(
                                            '8.35% p.a.',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF1E293B),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  Container(
                                    width: 1,
                                    height: 35,
                                    color: Color(0xFFE5E7EB),
                                  ),

                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 12),
                                      child: Row(
                                        children: [

                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [

                                              Text(
                                                'Tenure',
                                                style: TextStyle(
                                                  fontSize: 8,
                                                  color: Color(0xFF94A3B8),
                                                ),
                                              ),

                                              SizedBox(height: 3),

                                              Text(
                                                '5 - 30',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF1E293B),
                                                ),
                                              ),

                                              Text(
                                                'Years',
                                                style: TextStyle(
                                                  fontSize: 9,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF1E293B),
                                                ),
                                              ),
                                            ],
                                          ),

                                          Spacer(),

                                          Icon(
                                            Icons.chevron_right,
                                            size: 22,
                                            color: Color(0xFF2563EB),
                                          ),

                                          SizedBox(width: 8),
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
                    SizedBox(height: 24),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text(
                            'Credit Card Offers',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1E293B),
                            ),
                          ),

                          Text(
                            'View All',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2563EB),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Container(
                        width: double.infinity,
                        height: 170,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Color(0xFFE2E8F0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.03),
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [

                            Expanded(
                              flex: 6,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Row(
                                    children: [

                                      Image.asset(
                                        'assets/images/HDFC_channels.png',
                                        width: 35,
                                        height: 35,
                                        fit: BoxFit.contain,
                                      ),

                                      SizedBox(width: 8),

                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Text(
                                            'HDFC Regalia Gold',
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF1E293B),
                                            ),
                                          ),

                                          SizedBox(height: 2),

                                          Text(
                                            'Credit Card',
                                            style: TextStyle(
                                              fontSize: 9,
                                              color: Color(0xFF64748B),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 12),

                                  Row(
                                    children: [

                                      Icon(
                                        Icons.info,
                                        size: 13,
                                        color: Color(0xFF2563EB),
                                      ),

                                      SizedBox(width: 7),

                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Text(
                                            '5% Cashback',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF1E293B),
                                            ),
                                          ),

                                          Text(
                                            'On Online Spends',
                                            style: TextStyle(
                                              fontSize: 9,
                                              color: Color(0xFF64748B),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 7),

                                  Row(
                                    children: [

                                      Icon(
                                        Icons.info,
                                        size: 13,
                                        color: Color(0xFF2563EB),
                                      ),

                                      SizedBox(width: 7),

                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Text(
                                            '1% Cashback',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF1E293B),
                                            ),
                                          ),

                                          Text(
                                            'On Other Spends',
                                            style: TextStyle(
                                              fontSize: 9,
                                              color: Color(0xFF64748B),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 7),

                                  Row(
                                    children: [

                                      Icon(
                                        Icons.info,
                                        size: 13,
                                        color: Color(0xFF2563EB),
                                      ),

                                      SizedBox(width: 7),

                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Text(
                                            'Lifetime',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF1E293B),
                                            ),
                                          ),

                                          Text(
                                            'Free Card',
                                            style: TextStyle(
                                              fontSize: 9,
                                              color: Color(0xFF64748B),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            Expanded(
                              flex: 4,
                              child: Image.asset(
                                'assets/images/Card_images.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 12),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Container(
                        width: double.infinity,
                        height: 170,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Color(0xFFE2E8F0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.03),
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [

                            Expanded(
                              flex: 6,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Row(
                                    children: [

                                      Image.asset(
                                        'assets/images/SBI_logo.png',
                                        width: 35,
                                        height: 35,
                                        fit: BoxFit.contain,
                                      ),

                                      SizedBox(width: 8),

                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Text(
                                            'SBI Cashback Card',
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF1E293B),
                                            ),
                                          ),

                                          SizedBox(height: 2),

                                          Text(
                                            'Credit Card',
                                            style: TextStyle(
                                              fontSize: 9,
                                              color: Color(0xFF64748B),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 12),

                                  Row(
                                    children: [

                                      Icon(
                                        Icons.info,
                                        size: 13,
                                        color: Color(0xFF2563EB),
                                      ),

                                      SizedBox(width: 7),

                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Text(
                                            '5% Cashback',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF1E293B),
                                            ),
                                          ),

                                          Text(
                                            'On Online Spends',
                                            style: TextStyle(
                                              fontSize: 9,
                                              color: Color(0xFF64748B),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 7),

                                  Row(
                                    children: [

                                      Icon(
                                        Icons.info,
                                        size: 13,
                                        color: Color(0xFF2563EB),
                                      ),

                                      SizedBox(width: 7),

                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Text(
                                            '1% Cashback',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF1E293B),
                                            ),
                                          ),

                                          Text(
                                            'On Other Spends',
                                            style: TextStyle(
                                              fontSize: 9,
                                              color: Color(0xFF64748B),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 7),

                                  Row(
                                    children: [

                                      Icon(
                                        Icons.info,
                                        size: 13,
                                        color: Color(0xFF2563EB),
                                      ),

                                      SizedBox(width: 7),

                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Text(
                                            'Lifetime',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF1E293B),
                                            ),
                                          ),

                                          Text(
                                            'Free Card',
                                            style: TextStyle(
                                              fontSize: 9,
                                              color: Color(0xFF64748B),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            Expanded(
                              flex: 4,
                              child: Image.asset(
                                'assets/images/Card_images.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFEFF6FF),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Color(0xFFD6E7FF),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.04),
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [

                            Container(
                              width: 34,
                              height: 34,
                              child: Icon(
                                Icons.card_giftcard_outlined,
                                size: 25,
                                color: Color(0xFF2563EB),
                              ),
                            ),

                            SizedBox(width: 10),

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text(
                                    'Pre-approved offers just for you!',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF1E293B),
                                    ),
                                  ),

                                  SizedBox(height: 3),

                                  Text(
                                    'Higher chances of approval with instant\nprocess.',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color(0xFF64748B),
                                      height: 1.2,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(width: 8),

                            Container(
                              width: 62,
                              height: 38,
                              decoration: BoxDecoration(
                                color: Color(0xFF2563EB),
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: Center(
                                child: Text(
                                  'Check\nNow',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    height: 1.2,
                                  ),
                                ),
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
          ],
        ),
      ),
    );
  }
  Widget _offerCategory({
    required IconData icon,
    required String title,
    bool selected = false,
  }) {
    return Column(
      children: [

        Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            color: selected
                ? Colors.white
                : Colors.white,
            borderRadius: BorderRadius.circular(9),
            border: Border.all(
              color: selected
                  ? Color(0xFFBFDBFE)
                  : Color(0xFFF1F5F9),
            ),
          ),
          child: Icon(
            icon,
            size: 25,
            color: Color(0xFF2563EB),
          ),
        ),

        SizedBox(height: 5),

        Text(
          title,
          style: TextStyle(
            fontSize: 11,
            fontWeight: selected
                ? FontWeight.bold
                : FontWeight.normal,
            color: selected
                ? Color(0xFF2563EB)
                : Color(0xFF64748B),
          ),
        ),
      ],
    );
  }
}