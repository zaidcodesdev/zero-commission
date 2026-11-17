
import 'package:flutter/material.dart';
import 'package:zero_commission/screens/card_apply6.dart';

class CardApply5Screen extends StatefulWidget {
  const CardApply5Screen();

  @override
  State<CardApply5Screen> createState() =>
      _CardApply5ScreenState();
}

class _CardApply5ScreenState extends State<CardApply5Screen> {
  @override

  String reportedDate = '30 Apr 2026';

  String currentAddress =
      'HDFC BANK LIMITED C3 3RD\n'
      'FLOOR TVS FLOOR MILAP\n'
      'NAGAR NZB216 NZB216\n'
      'BLOCK B MILAP NAGAR\n'
      'UTTAM NAGAR\n'
      'NEW DELHI DELHI 110059';

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(9, 6, 9, 8),
        child: SizedBox(
          width: double.infinity,
          height: 46,
          child: ElevatedButton(
            onPressed: () {

            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF2450E8),
              foregroundColor: Colors.white,
              elevation: 4,
              shadowColor: Color(0x332450E8),
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 8),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CardApply6Screen(),
                        ),
                      );
                    },
                    child: Text(
                      'Verify PAN',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 22,
                      color: Color(0xFF263449),
                    ),
                  ),
                  SizedBox(width: 35),
                  Expanded(
                    child: Text(
                      'Application Form',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF172033),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.help_outline,
                    size: 20,
                    color: Color(0xFF64748B),
                  ),
                ],
              ),
            ),
            SizedBox(height: 35,),

            Container(
              width: double.infinity,
              color: Colors.white,
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Step 1
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: 25,
                          height: 25,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Color(0xFFD1D5DB)),
                          ),
                          child: Text(
                            '1',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF94A3B8),
                            ),
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'PAN\nVerification',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 9,
                            height: 1.15,
                            color: Color(0xFF94A3B8),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Step 2
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: 25,
                          height: 25,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Color(0xFFD1D5DB)),
                          ),
                          child: Text(
                            '2',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF94A3B8),
                            ),
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Personal\nDetails',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 9,
                            height: 1.15,
                            color: Color(0xFF94A3B8),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Step 3
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: 25,
                          height: 25,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Color(0xFFD1D5DB)),
                          ),
                          child: Text(
                            '3',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF94A3B8),
                            ),
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Employment\nDetails',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 9,
                            height: 1.15,
                            color: Color(0xFF94A3B8),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Step 4 - Active
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: 25,
                          height: 25,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xFF16A34A),
                              width: 1.5,
                            ),
                          ),
                          child: Text(
                            '4',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF16A34A),
                            ),
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Address\nDetails',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 9,
                            height: 1.15,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF172033),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 35,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Color(0xFFF0F1F3),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Current Address heading
                    Row(
                      children: [
                        Icon(
                          Icons.person_pin_circle,
                          size: 21,
                          color: Colors.black,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Current Address',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF111827),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 12),

                    // Reported date
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 9,
                        vertical: 7,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFE7F5E9),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                          'Reported on\n$reportedDate',
                        style: TextStyle(
                          fontSize: 10,
                          height: 1.4,
                          color: Color(0xFF38834A),
                        ),
                      ),
                    ),

                    SizedBox(height: 18),

                    // Address
                    Text(
                      currentAddress,
                      style: TextStyle(
                        fontSize: 12,
                        height: 1.6,
                        color: Color(0xFF2146B5),
                      ),
                    ),
                  ],
                ),
              ),
            ),


          ],
        ),

      ),
    );
  }
}
