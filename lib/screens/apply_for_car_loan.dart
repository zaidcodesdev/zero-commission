
import 'package:flutter/material.dart';

class ApplyForCarLoanScreen extends StatefulWidget {
  const ApplyForCarLoanScreen();

  @override
  State<ApplyForCarLoanScreen> createState() =>
      _ApplyForCarLoanScreenState();
}

class _ApplyForCarLoanScreenState
    extends State<ApplyForCarLoanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(

        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 44,
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Color(0xFF334155),
                        size: 22,
                      ),
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(
                        minWidth: 40,
                        minHeight: 40,
                      ),
                    ),
          
                    Expanded(
                      child: Center(
                        child: Text(
                          'Apply for Loan',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF172033),
                          ),
                        ),
                      ),
                    ),
          
                    IconButton(
                      onPressed: () {
          
                      },
                      icon: Icon(
                        Icons.headset_mic_outlined,
                        color: Color(0xFF334155),
                        size: 21,
                      ),
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(
                        minWidth: 40,
                        minHeight: 40,
                      ),
                    ),
                  ],
                ),
              ),
          
              SizedBox(height: 12),
          
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFF1F8F1),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        top: 0,
                        bottom: 0,
                        width: 175,
                        child: Image.asset(
                          'assets/images/apply_for_car_loan.png',
                          fit: BoxFit.contain,
                          alignment: Alignment.centerRight,
                        ),
                      ),
          
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 12, 0, 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 36,
                              width: 36,
                              decoration: BoxDecoration(
                                color: Color(0xFFE4F3E7),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.directions_car_filled,
                                color: Color(0xFF176B35),
                                size: 22,
                              ),
                            ),
          
                            SizedBox(height: 6),
          
                            Text(
                              'Car Loan',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF172033),
                              ),
                            ),
          
                            SizedBox(height: 7),
          
                            Text(
                              'Starting From',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF64748B),
                              ),
                            ),
          
                            SizedBox(height: 2),
          
                            Text(
                              '7.99%*',
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF08783E),
                              ),
                            ),
          
                            SizedBox(height: 3),
          
                            Text(
                              'Up to 100% Funding',
                              style: TextStyle(
                                fontSize: 11,
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
          
              SizedBox(height: 14),
          
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFF0F6FF),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xFFDCE9FF),
                      width: 1,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(
                            color: Color(0xFFDCE9FF),
                          ),
                        ),
                        child: Icon(
                          Icons.verified_user_outlined,
                          size: 17,
                          color: Color(0xFF2670FF),
                        ),
                      ),
          
                      SizedBox(width: 12),
          
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '100% Secure & Confidential',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF163B91),
                              ),
                            ),
          
                            SizedBox(height: 3),
          
                            Text(
                              'Your information is safe with us and will '
                                  'never be shared.',
                              style: TextStyle(
                                fontSize: 11,
                                height: 1.3,
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
          
              SizedBox(height: 16),
          
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: Color(0xFFF0F2F6),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.person_outline,
                            size: 20,
                            color: Color(0xFF2867FF),
                          ),
                          SizedBox(width: 7),
                          Text(
                            'Your Details (Pre-filled)',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF183B91),
                            ),
                          ),
                        ],
                      ),
          
                      SizedBox(height: 12),
          
                      // Full Name
                      _detailCard(
                        icon: Icons.person_outline,
                        label: 'FULL NAME',
                        value: 'Rahul Sharma',
                      ),
          
                      SizedBox(height: 8),
          
                      // Phone Number
                      _detailCard(
                        icon: Icons.phone_outlined,
                        label: 'PHONE NUMBER',
                        value: '+91 98765 43210',
                      ),
          
                      SizedBox(height: 8),
          
                      // Email Address
                      _detailCard(
                        icon: Icons.mail_outline,
                        label: 'EMAIL ADDRESS',
                        value: 'rahul.sharma@email.com',
                      ),
                    ],
                  ),
                ),
              ),
          
              SizedBox(height: 16),
          
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: Color(0xFFF0F2F6),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.assignment_outlined,
                            size: 18,
                            color: Color(0xFF3478FF),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Your Information',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF183B91),
                            ),
                          ),
                        ],
                      ),
          
                      SizedBox(height: 16),
          
                      // Profession
                      _formLabel('Profession *'),
                      SizedBox(height: 6),
          
                      DropdownButtonFormField<String>(
                        value: 'Doctor',
                        decoration: _formDecoration(),
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          color: Color(0xFF3478FF),
                        ),
                        items: [
                          'Doctor',
                          'Engineer',
                          'Teacher',
                          'Business',
                          'Government Employee',
                          'Private Employee',
                          'Other',
                        ].map((profession) {
                          return DropdownMenuItem<String>(
                            value: profession,
                            child: Text(
                              profession,
                              style: TextStyle(fontSize: 13),
                            ),
                          );
                        }).toList(),
                        onChanged: (value) {},
                      ),
          
                      SizedBox(height: 14),
          
                      // Monthly Salary
                      _formLabel('Monthly Salary (in hand) *'),
                      SizedBox(height: 6),
          
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: _formDecoration(
                          hint: 'Enter your monthly salary',
                          prefix: Icons.currency_rupee,
                        ),
                      ),
          
                      SizedBox(height: 14),
          
                      // Loan Amount
                      _formLabel('Loan Amount Required *'),
                      SizedBox(height: 6),
          
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: _formDecoration(
                                hint: 'Enter loan amount',
                                prefix: Icons.currency_rupee,
                              ),
                            ),
                          ),
          
                          SizedBox(width: 6),
          
                          Container(
                            width: 60,
                            height: 48,
                            decoration: BoxDecoration(
                              color: Color(0xFFF8FAFD),
                              border: Border.all(
                                color: Color(0xFFE3EAF4),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: '₹',
                                isExpanded: true,
                                alignment: Alignment.center,
                                items: ['₹', '\$', '€'].map((currency) {
                                  return DropdownMenuItem<String>(
                                    value: currency,
                                    child: Center(
                                      child: Text(
                                        currency,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (value) {},
                              ),
                            ),
                          ),
                        ],
                      ),
          
                      SizedBox(height: 14),
          
                      // Message
                      _formLabel('Message (Optional)'),
                      SizedBox(height: 6),
          
                      TextFormField(
                        maxLines: 5,
                        maxLength: 500,
                        decoration: _formDecoration(
                          hint: 'Tell us more about your loan requirement...',
                        ).copyWith(
                          counterStyle: TextStyle(
                            fontSize: 10,
                            color: Color(0xFF94A3B8),
                          ),
                          alignLabelWithHint: true,
                        ),
                      ),
          
                      SizedBox(height: 4),
          
                      Text(
                        'Share any specific details so we can assist you better.',
                        style: TextStyle(
                          fontSize: 10,
                          fontStyle: FontStyle.italic,
                          color: Color(0xFF64748B),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 16),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: SizedBox(
                  width: double.infinity,
                  height: 44,
                  child: ElevatedButton(
                    onPressed: () {
                      // Submit action baad mein add karenge
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF2450DC),
                      foregroundColor: Colors.white,
                      elevation: 3,
                      shadowColor: Color(0x332450DC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.send_outlined,
                          size: 16,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Submit Loan Application',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 16),

              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  color: Color(0xFFF8FAFC),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.lock_outline,
                        size: 18,
                        color: Color(0xFF64748B),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          "We'll contact you shortly with the best loan options.",
                          style: TextStyle(
                            fontSize: 11,
                            color: Color(0xFF64748B),
                            fontWeight: FontWeight.w400,
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

  Widget _formLabel(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w600,
        color: Color(0xFF475569),
      ),
    );
  }

  InputDecoration _formDecoration({
    String? hint,
    IconData? prefix,
  }) {
    return InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(
        fontSize: 12,
        color: Color(0xFF94A3B8),
      ),
      prefixIcon: prefix == null
          ? null
          : Icon(
        prefix,
        size: 18,
        color: Color(0xFF3478FF),
      ),
      filled: true,
      fillColor: Color(0xFFF8FAFD),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 13,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Color(0xFFE3EAF4),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Color(0xFFE3EAF4),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Color(0xFF3478FF),
        ),
      ),
    );
  }


  Widget _detailCard({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFF8FAFD),
        borderRadius: BorderRadius.circular(11),
        border: Border.all(
          color: Color(0xFFE7ECF4),
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 29,
            width: 29,
            decoration: BoxDecoration(
              color: Color(0xFFEDF3FF),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              size: 18,
              color: Color(0xFF3478FF),
            ),
          ),

          SizedBox(width: 11),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 10,
                    color: Color(0xFF94A3B8),
                    fontWeight: FontWeight.w500,
                  ),
                ),

                SizedBox(height: 3),

                Text(
                  value,
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xFF172033),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
