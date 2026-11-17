import 'package:flutter/material.dart';

class GSTCalculator extends StatefulWidget {
   GSTCalculator();

  @override
  State<GSTCalculator> createState() => _GSTCalculatorState();
}

class _GSTCalculatorState extends State<GSTCalculator> {

  Widget _gstRateBox(String rate, bool selected) {
    double rateValue = double.parse(
      rate.replaceAll('%', ''),
    );

    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            gstRate = rateValue;
          });
        },
        child: Container(
          height: 30,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: selected
                ? Color(0xFF0755D9)
                : Colors.white,
            borderRadius: BorderRadius.circular(7),
            border: Border.all(
              color: selected
                  ? Color(0xFF0755D9)
                  : Color(0xFFE1E7F0),
            ),
          ),
          child: Text(
            rate,
            style: TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.bold,
              color: selected
                  ? Colors.white
                  : Color(0xFF344054),
            ),
          ),
        ),
      ),
    );
  }

  Widget _gstBenefit(
      IconData icon,
      String title,
      String description,
      ) {
    return Container(
      height: 190,
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 18,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          // Icon circle
          Container(
            width: 58,
            height: 58,
            decoration: BoxDecoration(
              color: Color(0xFFEFF5FF),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              size: 29,
              color: Color(0xFF0755D9),
            ),
          ),

          SizedBox(height: 18),

          // Title
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color(0xFF172033),
            ),
          ),

          SizedBox(height: 9),

          // Description
          Expanded(
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10,
                height: 1.5,
                color: Color(0xFF98A2B3),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String amountInWords(double value) {
    int number = value.round();

    if (number == 0) {
      return 'Rupees Zero Only';
    }

    String convertHundreds(int n) {
      const ones = [
        '',
        'One',
        'Two',
        'Three',
        'Four',
        'Five',
        'Six',
        'Seven',
        'Eight',
        'Nine',
        'Ten',
        'Eleven',
        'Twelve',
        'Thirteen',
        'Fourteen',
        'Fifteen',
        'Sixteen',
        'Seventeen',
        'Eighteen',
        'Nineteen',
      ];

      const tens = [
        '',
        '',
        'Twenty',
        'Thirty',
        'Forty',
        'Fifty',
        'Sixty',
        'Seventy',
        'Eighty',
        'Ninety',
      ];

      if (n < 20) {
        return ones[n];
      }

      if (n < 100) {
        return tens[n ~/ 10] +
            (n % 10 != 0 ? ' ${ones[n % 10]}' : '');
      }

      return '${ones[n ~/ 100]} Hundred' +
          (n % 100 != 0
              ? ' ${convertHundreds(n % 100)}'
              : '');
    }

    String result = '';

    if (number >= 10000000) {
      result +=
      '${convertHundreds(number ~/ 10000000)} Crore ';
      number %= 10000000;
    }

    if (number >= 100000) {
      result +=
      '${convertHundreds(number ~/ 100000)} Lakh ';
      number %= 100000;
    }

    if (number >= 1000) {
      result +=
      '${convertHundreds(number ~/ 1000)} Thousand ';
      number %= 1000;
    }

    if (number > 0) {
      result += convertHundreds(number);
    }

    return 'Rupees ${result.trim()} Only';
  }

  bool addGST = true;
  double amount = 10000;
  double gstRate = 18;
  bool roundOff = true;

  final TextEditingController amountController =
  TextEditingController(text: '10000');

  double baseAmount = 10000;
  double gstAmount = 1800;
  double totalAmount = 11800;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F7FB),

      appBar: AppBar(
        backgroundColor: Color(0xFFF5F7FB),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFF172033),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'GST Calculator',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF172033),
          ),
        ),
        centerTitle: true,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 22),
                child: SizedBox(
                  width: double.infinity,
                  height: 190,
                  child: Stack(
                    children: [
        
                      // Text
                      Positioned(
                        left: 0,
                        top: 8,
                        right: 125,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
        
                            Text(
                              'Calculate GST',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF172033),
                              ),
                            ),
        
                            Text(
                              'Instantly',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0755D9),
                                height: 1
                              ),
                            ),
        
                            SizedBox(height: 12),
        
                            Text(
                              'Easily calculate GST on any amount. '
                                  'Add or remove GST and get accurate results in seconds.',
                              style: TextStyle(
                                fontSize: 13,
                                height: 1.5,
                                color: Color(0xFF737B8C),
                              ),
                            ),
                          ],
                        ),
                      ),
        
                      // GST Image
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Image.asset(
                          'assets/images/gst_calculator_logo.png',
                          width: 135,
                          height: 150,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
        
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xFFE1E7F0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
        
                      // Enter Details
                      Text(
                        'Enter Details',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF172033),
                        ),
                      ),
        
                      SizedBox(height: 16),
        
                      // Select Calculation Type
                      Text(
                        'Select Calculation Type',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF344054),
                        ),
                      ),
        
                      SizedBox(height: 8),
        
                      // Add GST / Remove GST
                      // Add GST / Remove GST
                      Row(
                        children: [
        
                          // ADD GST
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  addGST = true;
                                });
                              },
                              child: Container(
                                height: 68,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: addGST
                                      ? Color(0xFFF4F7FF)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: addGST
                                        ? Color(0xFF0755D9)
                                        : Color(0xFFDCE3ED),
                                  ),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
        
                                    Icon(
                                      addGST
                                          ? Icons.radio_button_checked
                                          : Icons.radio_button_unchecked,
                                      size: 15,
                                      color: addGST
                                          ? Color(0xFF0755D9)
                                          : Color(0xFF98A2B3),
                                    ),
        
                                    SizedBox(width: 7),
        
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
        
                                          Text(
                                            'Add GST',
                                            style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF173B91),
                                            ),
                                          ),
        
                                          SizedBox(height: 4),
        
                                          Text(
                                            'Calculate GST on\namount',
                                            style: TextStyle(
                                              fontSize: 8,
                                              height: 1.2,
                                              color: Color(0xFF7A8496),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
        
                          SizedBox(width: 10),
        
                          // REMOVE GST
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  addGST = false;
                                });
                              },
                              child: Container(
                                height: 68,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: !addGST
                                      ? Color(0xFFF4F7FF)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: !addGST
                                        ? Color(0xFF0755D9)
                                        : Color(0xFFDCE3ED),
                                  ),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
        
                                    Icon(
                                      !addGST
                                          ? Icons.radio_button_checked
                                          : Icons.radio_button_unchecked,
                                      size: 15,
                                      color: !addGST
                                          ? Color(0xFF0755D9)
                                          : Color(0xFF98A2B3),
                                    ),
        
                                    SizedBox(width: 7),
        
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
        
                                          Text(
                                            'Remove GST',
                                            style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF173B91),
                                            ),
                                          ),
        
                                          SizedBox(height: 4),
        
                                          Text(
                                            'Remove GST from\namount',
                                            style: TextStyle(
                                              fontSize: 8,
                                              height: 1.2,
                                              color: Color(0xFF7A8496),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
        
                      SizedBox(height: 18),
        
                      // Amount
                      Text(
                        'Amount (₹)',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF344054),
                        ),
                      ),
        
                      SizedBox(height: 7),
        
                      Container(
                        width: double.infinity,
                        height: 38,
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          color: Color(0xFFF4F8FF),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
        
                            Text(
                              '₹',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0755D9),
                              ),
                            ),
        
                            Expanded(
                              child: TextField(
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.right,
                                controller: amountController,
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF0755D9),
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '10,000',
                                  contentPadding: EdgeInsets.zero,
                                ),
                                onChanged: (value) {
                                  amount = double.tryParse(value) ?? 0;
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
        
                      SizedBox(height: 6),
        
                      Text(
                        'Enter the amount on which GST is to be calculated',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFF98A2B3),
                        ),
                      ),
        
                      SizedBox(height: 18),
        
                      // GST Rate
                      Text(
                        'GST Rate',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF344054),
                        ),
                      ),
        
                      SizedBox(height: 8),
        
                      Row(
                        children: [
        
                          _gstRateBox('0%', gstRate == 0),
                          _gstRateBox('5%', gstRate == 5),
                          _gstRateBox('12%', gstRate == 12),
                          _gstRateBox('18%', gstRate == 18),
                          _gstRateBox('28%', gstRate == 28),
                        ],
                      ),
        
                      SizedBox(height: 7),
        
                      Text(
                        'Select the applicable GST rate',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFF98A2B3),
                        ),
                      ),
        
                      SizedBox(height: 18),
        
                      // Round Off
                      Text(
                        'Round Off',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF344054),
                        ),
                      ),
        
                      SizedBox(height: 3),
        
                      Row(
                        children: [
        
                          Expanded(
                            child: Text(
                              'Round off to nearest rupee',
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xFF98A2B3),
                              ),
                            ),
                          ),
        
                          Switch(
                            value: roundOff,
                            onChanged: (value) {
                              setState(() {
                                roundOff = value;
                              });
                            },
                            activeColor: Colors.white,
                            activeTrackColor: Color(0xFF0755D9),
                          ),
                        ],
                      ),
        
                      SizedBox(height: 12),
        
                      // Calculate GST Button
                      SizedBox(
                        width: double.infinity,
                        height: 43,
                        child: ElevatedButton(
                          onPressed: () {
                            double newBaseAmount;
                            double newGstAmount;
                            double newTotalAmount;
        
                            if (addGST) {
                              newBaseAmount = amount;
                              newGstAmount = amount * gstRate / 100;
                              newTotalAmount = amount + newGstAmount;
                            } else {
                              newTotalAmount = amount;
                              newBaseAmount = amount / (1 + gstRate / 100);
                              newGstAmount = amount - newBaseAmount;
                            }
        
                            if (roundOff) {
                              newBaseAmount = newBaseAmount.roundToDouble();
                              newGstAmount = newGstAmount.roundToDouble();
                              newTotalAmount = newTotalAmount.roundToDouble();
                            }
        
                            setState(() {
                              baseAmount = newBaseAmount;
                              gstAmount = newGstAmount;
                              totalAmount = newTotalAmount;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF0755D9),
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
        
                              Icon(
                                Icons.calculate_outlined,
                                size: 14,
                                color: Colors.white,
                              ),
        
                              SizedBox(width: 7),
        
                              Text(
                                'Calculate GST',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
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
        
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Color(0xFF07389F),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
        
                      Text(
                        'GST CALCULATION SUMMARY',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.8,
                          color: Colors.white,
                        ),
                      ),
        
                      SizedBox(height: 22),
        
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
        
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
        
                                Text(
                                  'Total Amount (Incl. GST)',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Color(0xFFD4DEFF),
                                  ),
                                ),
        
                                SizedBox(height: 8),
        
                                Text(
                                  '₹ ${totalAmount.toStringAsFixed(2)}',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
        
                          Image.asset(
                            'assets/images/gst_calculator_result_logo.png',
                            width: 110,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
        
                      SizedBox(height: 18),
        
                      Divider(
                        color: Color(0xFF2B55A9),
                        height: 1,
                      ),
        
                      SizedBox(height: 18),
        
                      Row(
                        children: [
        
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
        
                                Text(
                                  'Base Amount (Excl.\nGST)',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFFD4DEFF),
                                  ),
                                ),
        
                                SizedBox(height: 6),
        
                                Text(
                                  '₹ ${baseAmount.toStringAsFixed(2)}',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
        
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
        
                                Text(
                                  'GST Amount',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFFD4DEFF),
                                  ),
                                ),
        
                                SizedBox(height: 6),
        
                                Text(
                                  '₹ ${gstAmount.toStringAsFixed(2)}',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
        
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
        
                                Text(
                                  'GST Rate',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFFD4DEFF),
                                  ),
                                ),
        
                                SizedBox(height: 6),
        
                                Text(
                                  '${gstRate.toStringAsFixed(0)}%',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
        
              SizedBox(height: 20),
        
        
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
        
                      Text(
                        'Detailed Breakdown',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF172033),
                        ),
                      ),
        
                      SizedBox(height: 26),
        
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
        
                          Text(
                            'Base Amount (Excl. GST)',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF697386),
                            ),
                          ),
        
                          Text(
                            '₹ ${baseAmount.toStringAsFixed(2)}',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF172033),
                            ),
                          ),
                        ],
                      ),
        
                      SizedBox(height: 24),
        
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
        
                          Text(
                            'GST @ ${gstRate.toStringAsFixed(0)}%',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF697386),
                            ),
                          ),
        
                          Text(
                            '₹ ${gstAmount.toStringAsFixed(2)}',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF172033),
                            ),
                          ),
                        ],
                      ),
        
                      SizedBox(height: 24),
        
                      Divider(
                        color: Color(0xFFE6EAF0),
                        height: 1,
                      ),
        
                      SizedBox(height: 26),
        
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
        
                          Text(
                            'Total Amount (Incl. GST)',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF173B91),
                            ),
                          ),
        
                          Text(
                            '₹ ${totalAmount.toStringAsFixed(2)}',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0755D9),
                            ),
                          ),
                        ],
                      ),
        
                      SizedBox(height: 26),
        
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 16,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFF4F8FF),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Color(0xFFDCEBFF),
                          ),
                        ),
                        child: Row(
                          children: [
        
                            Container(
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.info_outline,
                                size: 19,
                                color: Color(0xFF0755D9),
                              ),
                            ),
        
                            SizedBox(width: 12),
        
                            Expanded(
                              child: Text(
                                amountInWords(totalAmount),
                                style: TextStyle(
                                  fontSize: 13,
                                  height: 1.4,
                                  color: Color(0xFF475467),
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
        
              SizedBox(height: 20),
              SizedBox(height: 18),
        
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
        
                    // Row 1
                    Row(
                      children: [
        
                        Expanded(
                          child: _gstBenefit(
                            Icons.verified_user_outlined,
                            '100% Accurate',
                            'Our calculator provides accurate GST calculations as per latest tax rules.',
                          ),
                        ),
        
                        SizedBox(width: 14),
        
                        Expanded(
                          child: _gstBenefit(
                            Icons.sync_outlined,
                            'Latest GST Rates',
                            'Updated with current GST rates and tax regulations.',
                          ),
                        ),
                      ],
                    ),
        
                    SizedBox(height: 14),
        
                    // Row 2
                    Row(
                      children: [
        
                        Expanded(
                          child: _gstBenefit(
                            Icons.access_time_outlined,
                            'Instant Results',
                            'Get results instantly with detailed breakdown.',
                          ),
                        ),
        
                        SizedBox(width: 14),
        
                        Expanded(
                          child: _gstBenefit(
                            Icons.description_outlined,
                            'Easy to Use',
                            'Simple and intuitive design for quick calculations.',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
        
              SizedBox(height: 20),
        
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F9FF),
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: Color(0xFFD6E5FF),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
        
                      // Book Icon
                      Container(
                        width: 58,
                        height: 58,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.menu_book_outlined,
                          size: 29,
                          color: Color(0xFF0755D9),
                        ),
                      ),
        
                      SizedBox(width: 18),
        
                      // Text
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
        
                            Text(
                              'About GST',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF173B91),
                              ),
                            ),
        
                            SizedBox(height: 14),
        
                            Text(
                              'Goods and Services Tax (GST) is an '
                                  'indirect tax levied on the supply of '
                                  'goods and services in India.',
                              style: TextStyle(
                                fontSize: 14,
                                height: 1.5,
                                color: Color(0xFF475467),
                              ),
                            ),
        
                            SizedBox(height: 12),
        
                            Text(
                              'The standard GST rates are 0%, 5%, '
                                  '12%, 18% and 28%.',
                              style: TextStyle(
                                fontSize: 14,
                                height: 1.5,
                                color: Color(0xFF475467),
                              ),
                            ),
                          ],
                        ),
                      ),
        
                      SizedBox(width: 10),
        
                      // Calculator Icon
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Icon(
                          Icons.calculate_outlined,
                          size: 70,
                          color: Color(0xFFBDD3FF),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
        
              SizedBox(height: 20),
        
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 16,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F9FF),
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: Color(0xFFD6E5FF),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
        
                      // Info Icon
                      Padding(
                        padding: EdgeInsets.only(top: 2),
                        child: Icon(
                          Icons.info_outline,
                          size: 18,
                          color: Color(0xFF0755D9),
                        ),
                      ),
        
                      SizedBox(width: 12),
        
                      // Disclaimer Text
                      Expanded(
                        child: Text(
                          'All calculations are estimates. Actual returns may vary '
                              'based on bank policies.',
                          style: TextStyle(
                            fontSize: 13,
                            height: 1.45,
                            color: Color(0xFF173B91),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
        
              SizedBox(height: 20),
        
            ],
          ),
        ),
      ),
    );
  }
}