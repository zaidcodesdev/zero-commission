
import 'package:flutter/material.dart';
import 'card_apply4.dart';

class CardApply3Screen extends StatefulWidget {
  const CardApply3Screen();

  @override
  State<CardApply3Screen> createState() =>
      _CardApply3ScreenState();
}

class _CardApply3ScreenState extends State<CardApply3Screen> {
  @override

  String selectedProfession = 'Doctor';

  final List<String> professions = [
    'Doctor',
    'Salaried',
    'Self Employed',
    'Business',
    'Government Employee',
  ];

  final TextEditingController salaryController =
  TextEditingController();

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
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CardApply4Screen(),
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
                            border: Border.all(
                              color: Color(0xFFD1D5DB),
                            ),
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

                  // Step 2 - Active
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
                            '2',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF16A34A),
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
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF172033),
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
                            border: Border.all(
                              color: Color(0xFFD1D5DB),
                            ),
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
                            border: Border.all(
                              color: Color(0xFFD1D5DB),
                            ),
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
            SizedBox(height: 25,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color(0xFFE1E6ED),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Profession heading
                    Text(
                      'Profession',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF475569),
                      ),
                    ),

                    SizedBox(height: 7),

                    // Profession dropdown
                    Container(
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
                            Icons.work_outline,
                            size: 19,
                            color: Color(0xFF3478FF),
                          ),
                          SizedBox(width: 14),

                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Profession *',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF334155),
                                  ),
                                ),
                                SizedBox(height: 3),

                              ],
                            ),
                          ),

                          DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: selectedProfession,
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                size: 19,
                                color: Color(0xFF3478FF),
                              ),
                              items: professions.map((profession) {
                                return DropdownMenuItem<String>(
                                  value: profession,
                                  child: Text(
                                    profession,
                                    style: TextStyle(fontSize: 13),
                                  ),
                                );
                              }).toList(),
                              onChanged: (value) {
                                if (value != null) {
                                  setState(() {
                                    selectedProfession = value;
                                  });
                                }
                              },
                            ),
                          ),
                        ],
                      )

                    ),

                    SizedBox(height: 22),

                    // Salary heading
                    Text(
                      'Salary',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF475569),
                      ),
                    ),

                    SizedBox(height: 7),

                    // Monthly salary input
                    Container(
                      height: 48,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color(0xFFE1E8F2),
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color(0xFFF3F6FA),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.currency_rupee,
                              size: 18,
                              color: Color(0xFF3478FF),
                            ),
                          ),

                          SizedBox(width: 10),


                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Monthly Salary (in hand) *',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF334155),
                                  ),
                                ),
                                SizedBox(height: 2),
                                SizedBox(
                                  height: 22,
                                  child: TextField(
                                    controller: salaryController,
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color(0xFF172033),
                                    ),
                                    decoration: InputDecoration(
                                      hintText: 'Enter your monthly salary',
                                      hintStyle: TextStyle(
                                        fontSize: 11,
                                        color: Color(0xFF9AAAC3),
                                      ),
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.zero,
                                      isDense: true,
                                    ),
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



          ],
        ),

      ),
    );
  }
}
