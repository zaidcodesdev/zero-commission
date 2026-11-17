
import 'package:flutter/material.dart';
import 'card_apply5.dart';

class CardApply4Screen extends StatefulWidget {
  const CardApply4Screen();

  @override
  State<CardApply4Screen> createState() =>
      _CardApply4ScreenState();
}

class _CardApply4ScreenState extends State<CardApply4Screen> {
  @override

  String selectedCompany = 'Digivahan';

  final List<String> companies = [
    'Digivahan',
    'Tata Motors',
    'Infosys',
    'Wipro',
    'HDFC Bank',
    'Other',
  ];

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
              // Submit action baad mein add karenge
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
                          builder: (context) => CardApply5Screen(),
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
            SizedBox(height: 25,),

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

                  // Step 3 - Active
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
                            '3',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF16A34A),
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
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF172033),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Step 4
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
                            '4',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF94A3B8),
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
                            color: Color(0xFF94A3B8),
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
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Container(
                width: double.infinity,
                height: 48,
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Color(0xFFF8FAFD),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color(0xFFE1E8F2),
                  ),
                ),
                child:
                Row(
                  children: [
                    Icon(
                      Icons.business_outlined,
                      size: 21,
                      color: Color(0xFF3478FF),
                    ),
                    SizedBox(width: 14),

                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Company Name *',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF334155),
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            selectedCompany,
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0xFF71829D),
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),

                    DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectedCompany,
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          size: 19,
                          color: Color(0xFF3478FF),
                        ),
                        items: companies.map((company) {
                          return DropdownMenuItem<String>(
                            value: company,
                            child: Text(
                              company,
                              style: TextStyle(fontSize: 12),
                            ),
                          );
                        }).toList(),
                        onChanged: (value) {
                          if (value != null) {
                            setState(() {
                              selectedCompany = value;
                            });
                          }
                        },
                      ),
                    ),
                  ],
                )

              ),
            ),


          ],
        ),

      ),
    );
  }
}
