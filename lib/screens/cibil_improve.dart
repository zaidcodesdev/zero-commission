
import 'package:flutter/material.dart';

class CibilImproveScreen extends StatefulWidget {
  const CibilImproveScreen();

  @override
  State<CibilImproveScreen> createState() =>
      _CibilImproveScreenState();
}

class _CibilImproveScreenState
    extends State<CibilImproveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 48,
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFFF0F0F0),
                      width: 1,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    // Back arrow
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 21,
                        color: Color(0xFF263449),
                      ),
                    ),
          
                    SizedBox(width: 85),
          
                    // Title and subtitle
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'CIBIL AI Assistant',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF172033),
                            ),
                          ),
                          Text(
                            'Your personal credit guide',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF7A8497),
                            ),
                          ),
                        ],
                      ),
                    ),
          
                    // History icon
                    Icon(
                      Icons.history,
                      size: 21,
                      color: Color(0xFF263449),
                    ),
                  ],
                ),
              ),
          
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Color(0xFFF8FAFC),
                  child: Column(
                    children: [
                      // Online status
                      Padding(
                        padding: EdgeInsets.only(top: 12, bottom: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 6,
                              height: 6,
                              decoration: BoxDecoration(
                                color: Color(0xFF10B981),
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(width: 7),
                            Text(
                              'AI Assistant is online',
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xFF059669),
                              ),
                            ),
                          ],
                        ),
                      ),
          
                      // Chat messages
                      Expanded(
                        child: SingleChildScrollView(
                          padding: EdgeInsets.symmetric(horizontal: 13),
                          child: Column(
                            children: [
                              // First AI message
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 31,
                                    height: 31,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEAF2FF),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Color(0xFFD8E7FF),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.smart_toy,
                                      size: 21,
                                      color: Color(0xFF1677FF),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.all(13),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(17),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x08000000),
                                            blurRadius: 4,
                                            offset: Offset(0, 2),
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Hi Hasan 👋',
                                            style: TextStyle(
                                              fontSize: 11,
                                              color: Color(0xFF253247),
                                            ),
                                          ),
                                          SizedBox(height: 20),
                                          Text(
                                            "I'm your CIBIL AI Assistant. I can help you understand your score, suggest ways to improve it and clear any doubts you have.",
                                            style: TextStyle(
                                              fontSize: 11,
                                              height: 1.6,
                                              color: Color(0xFF253247),
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            '10:30 AM',
                                            style: TextStyle(
                                              fontSize: 8,
                                              color: Color(0xFF9AA5B5),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
          
                              SizedBox(height: 18),
          
                              // User message
                              Padding(
                                padding: EdgeInsets.only(left: 58),
                                child: Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEAF1FF),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Why is my CIBIL score low?',
                                          style: TextStyle(
                                            fontSize: 11,
                                            height: 1.4,
                                            color: Color(0xFF253247),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        '10:31\nAM',
                                        style: TextStyle(
                                          fontSize: 8,
                                          color: Color(0xFF9AA5B5),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Icon(
                                        Icons.done_all,
                                        size: 13,
                                        color: Color(0xFF3478FF),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
          
                              SizedBox(height: 18),
          
                              // Second AI message
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 31,
                                    height: 31,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEAF2FF),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Color(0xFFD8E7FF),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.smart_toy,
                                      size: 21,
                                      color: Color(0xFF1677FF),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.all(13),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(17),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x08000000),
                                            blurRadius: 4,
                                            offset: Offset(0, 2),
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'There can be several reasons like high credit utilization, missed payments, multiple loan inquiries or short credit history.',
                                            style: TextStyle(
                                              fontSize: 11,
                                              height: 1.6,
                                              color: Color(0xFF253247),
                                            ),
                                          ),
                                          SizedBox(height: 18),
                                          Text(
                                            'Would you like me to analyze your score and suggest improvements?',
                                            style: TextStyle(
                                              fontSize: 11,
                                              height: 1.6,
                                              color: Color(0xFF253247),
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            '10:31 AM',
                                            style: TextStyle(
                                              fontSize: 8,
                                              color: Color(0xFF9AA5B5),
                                            ),
                                          ),

                                        ],

                                      ),
                                    ),
                                  ),
                                ],
                              ),







                              // Bottom suggestion buttons
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                          color: Color(0xFFF8FAFC),
                          child: Row(
                            children: [
                              Expanded(
                                child: OutlinedButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.analytics_outlined,
                                    size: 14,
                                  ),
                                  label: Text(
                                    'Analyze My Score',
                                    style: TextStyle(fontSize: 11),
                                  ),
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: Color(0xFF1769FF),
                                    backgroundColor: Colors.white,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 4,
                                      vertical: 12,
                                    ),
                                    side: BorderSide(
                                      color: Color(0xFFD9E6FF),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(13),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 7),
                              Expanded(
                                child: OutlinedButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.calendar_month_outlined,
                                    size: 14,
                                  ),
                                  label: Text(
                                    'Payment History Tips',
                                    style: TextStyle(fontSize: 11),
                                  ),
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: Color(0xFF1769FF),
                                    backgroundColor: Colors.white,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 4,
                                      vertical: 12,
                                    ),
                                    side: BorderSide(
                                      color: Color(0xFFD9E6FF),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(13),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.fromLTRB(10, 8, 10, 10),
                        color: Color(0xFFF8FAFC),
                        child: Container(
                          height: 50,
                          padding: EdgeInsets.only(left: 17, right: 7),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: Color(0xFFE2E8F0),
                            ),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Type your message...',
                                    hintStyle: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFF8490A3),
                                    ),
                                    border: InputBorder.none,
                                    isDense: true,
                                  ),
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF172033),
                                  ),
                                ),
                              ),

                              Icon(
                                Icons.attach_file,
                                size: 21,
                                color: Color(0xFF9AA5B5),
                              ),

                              SizedBox(width: 10),

                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xFF2864F0),
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  onPressed: () {
                                    // Message send functionality baad mein add karenge
                                  },
                                  icon: Icon(
                                    Icons.send_rounded,
                                    size: 21,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                              Container(
                                width: double.infinity,
                                margin: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 10,
                                ),
                                padding: EdgeInsets.fromLTRB(25, 30, 10, 15),
                                decoration: BoxDecoration(
                                  color: Color(0xFFF0F3FF),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                  children: [
                                    // Left content
                                    Expanded(
                                      flex: 6,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Need help\nchoosing the\nright loan?',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                              height: 1.25,
                                              color: Color(0xFF203D91),
                                            ),
                                          ),
                                          SizedBox(height: 7),
                                          Text(
                                            'Our experts can guide you\nthrough the best offers\navailable.',
                                            style: TextStyle(
                                              fontSize: 13,
                                              height: 1.4,
                                              color: Color(0xFF536078),
                                            ),
                                          ),
                                          SizedBox(height: 18),
                                          OutlinedButton(
                                            onPressed: () {
                                              // Talk to Expert action baad mein add karenge
                                            },
                                            style: OutlinedButton.styleFrom(
                                              foregroundColor: Color(0xFF1557FF),
                                              backgroundColor: Colors.white,
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 18,
                                                vertical: 11,
                                              ),
                                              side: BorderSide(
                                                color: Color(0xFF3970FF),
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(25),
                                              ),
                                            ),
                                            child: Text(
                                              'Talk to Expert',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    // Right side headset illustration
                                    Expanded(
                                      flex: 4,
                                      child: Icon(
                                        Icons.headphones,
                                        size: 125,
                                        color: Color(0xFFD9DFF2),
                                      ),
                                    ),
                                  ],
                                ),
                              ),



                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 12,
                        ),
                        color: Color(0xFFF8FAFC),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.lock,
                              size: 10,
                              color: Color(0xFF64748B),
                            ),
                            SizedBox(width: 7),
                            Text(
                              'Your data is 100% secure and confidential.',
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
                ),

              ),
          
            ],
          ),


      ),
    )
      ]
          )
          )
      );
  }
}
