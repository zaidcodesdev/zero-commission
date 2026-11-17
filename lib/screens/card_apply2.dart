
import 'package:flutter/material.dart';

class CardApply2Screen extends StatefulWidget {
  const CardApply2Screen({super.key});

  @override
  State<CardApply2Screen> createState() =>
      _CardApply2ScreenState();
}

class _CardApply2ScreenState extends State<CardApply2Screen> {
  @override

  void showOtpPopup() {
    final otpController = TextEditingController();

    final bottomInset = MediaQuery.of(context).viewPadding.bottom;
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: false,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setModalState) {
            return SafeArea(
              top: false,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(
                  19,
                  22,
                  19,
                  60,
                ),
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
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
      body: SafeArea(

        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 42,
              padding: EdgeInsets.symmetric(horizontal: 16),
              color: Color(0xFFE8E8E8),
              child: Row(
                children: [
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
                    size: 19,
                    color: Color(0xFF64748B),
                  ),
                ],
              ),
            ),
            Container(height: 25,
            color: Color(0xFFE8E8E8),),

            Container(
              width: double.infinity,
              color: Color(0xFFE8E8E8),
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Step 1: PAN Verification
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
                            '1',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF16A34A),
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
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF172033),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Step 2: Personal Details
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

                  // Step 3: Employment Details
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

                  // Step 4: Address Details
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

          ],
        ),

      ),
    );
  }

}
