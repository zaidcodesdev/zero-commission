
import 'package:flutter/material.dart';
import 'card_apply2.dart';
import 'card_apply3.dart';

class CardApplyScreen extends StatefulWidget {
  const CardApplyScreen();

  @override
  State<CardApplyScreen> createState() => _CardApplyScreenState();
}

class _CardApplyScreenState extends State<CardApplyScreen> {
  @override
  void showOtpPopup() {
    final otpController = TextEditingController();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setModalState) {
            return Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(19, 22, 19, 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          'Enter OTP sent by HDFC\nBank to 8279861949',
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.05,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF172033),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Icon(
                          Icons.close,
                          size: 21,
                          color: Color(0xFF94A3B8),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 28),

                  Text(
                    'Enter 6 Digit OTP',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF172033),
                    ),
                  ),

                  SizedBox(height: 12),

                  Center(
                    child: SizedBox(
                      width: 220,
                      child: TextField(
                        controller: otpController,
                        keyboardType: TextInputType.number,
                        maxLength: 6,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                          letterSpacing: 12,
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          counterText: '',
                          hintText: '○○○○○○',
                          hintStyle: TextStyle(
                            fontSize: 22,
                            letterSpacing: 2,
                            color: Color(0xFFD1D5DB),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 12,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color(0xFFE2E8F0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color(0xFF2450E8),
                            ),
                          ),
                        ),
                        onChanged: (value) {
                          setModalState(() {});
                        },
                      ),
                    ),
                  ),

                  SizedBox(height: 14),

                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 11,
                        color: Color(0xFF64748B),
                      ),
                      children: [
                        TextSpan(text: 'Resend OTP in '),
                        TextSpan(
                          text: '01:55',
                          style: TextStyle(
                            color: Color(0xFF172033),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 22),

                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: otpController.text.length == 6
                          ? () {
                        // OTP verification baad mein add karenge
                        FocusScope.of(context).unfocus();
                      }
                          : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF2450E8),
                        disabledBackgroundColor: Color(0xFFE5E7EB),
                        foregroundColor: Colors.white,
                        disabledForegroundColor: Color(0xFF737D8D),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CardApply3Screen(),
                            ),
                          );
                        },
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      bottomNavigationBar: SafeArea(
        top: false,
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(9, 6, 9, 8),
          child: SizedBox(
            width: double.infinity,
            height: 46,
            child: ElevatedButton(
              onPressed: () {
                // Verify PAN action baad mein add karenge
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF2450E8),
                foregroundColor: Colors.white,
                elevation: 4,
                shadowColor: Color(0x332450E8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.zero,
              ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 8),
                       Padding(
                         padding: const EdgeInsets.only(right: 20),
                         child: GestureDetector(
        
                           onTap: () {
                             showOtpPopup();
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
      ),


      body: SafeArea(

        child: Column(
          children: [
            Container(
              height: 48,
              width: double.infinity,
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
                  // Back button
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

                  // Title
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

                  // Help icon
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
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xFF16A34A),
                              width: 1.5,
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            '1',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF16A34A),
                            ),
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          'PAN\nVerification',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 9,
                            height: 1.2,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF172033),
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
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xFFD6DCE5),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            '2',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF94A3B8),
                            ),
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          'Personal\nDetails',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 9,
                            height: 1.2,
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
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xFFD6DCE5),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            '3',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF94A3B8),
                            ),
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          'Employment\nDetails',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 9,
                            height: 1.2,
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
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xFFD6DCE5),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            '4',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF94A3B8),
                            ),
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          'Address\nDetails',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 9,
                            height: 1.2,
                            color: Color(0xFF94A3B8),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),

            Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Color(0xFFE5E7EB),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x08000000),
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // PAN Number
                    Text(
                      'PAN Number',
                      style: TextStyle(
                        fontSize: 11,
                        color: Color(0xFF475569),
                      ),
                    ),

                    SizedBox(height: 7),

                    TextFormField(
                      initialValue: 'AURPH 0343 Q',
                      style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 2,
                        color: Color(0xFF1E293B),
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.badge_outlined,
                          color: Color(0xFF1765FF),
                          size: 22,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 12,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(
                            color: Color(0xFFD6DCE5),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(
                            color: Color(0xFFD6DCE5),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 20),

                    // Date of Birth
                    Text(
                      'Date of Birth',
                      style: TextStyle(
                        fontSize: 11,
                        color: Color(0xFF475569),
                      ),
                    ),

                    SizedBox(height: 7),

                    TextFormField(
                      initialValue: '12/08/1997',
                      readOnly: true,
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF1E293B),
                      ),
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.calendar_month_outlined,
                          size: 19,
                          color: Color(0xFF64748B),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 12,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(
                            color: Color(0xFFD6DCE5),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(
                            color: Color(0xFFD6DCE5),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 6),

                    Text(
                      'Enter details as per PAN',
                      style: TextStyle(
                        fontSize: 10,
                        color: Color(0xFF94A3B8),
                      ),
                    ),

                    SizedBox(height: 20),

                    // Name as per PAN
                    Text(
                      'Name as per PAN',
                      style: TextStyle(
                        fontSize: 11,
                        color: Color(0xFF475569),
                      ),
                    ),

                    SizedBox(height: 7),

                    TextFormField(
                      initialValue: 'MUSTAFA HASAN',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF1E293B),
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 12,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(
                            color: Color(0xFFD6DCE5),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(
                            color: Color(0xFFD6DCE5),
                          ),
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
    );
  }
}
