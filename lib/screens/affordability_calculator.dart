import 'package:flutter/material.dart';
import 'dart:math' as math;

class AffordabilityCalculator extends StatefulWidget {
  AffordabilityCalculator();

  @override
  State<AffordabilityCalculator> createState() => _AffordabilityCalculatorState();
}

class _AffordabilityCalculatorState extends State<AffordabilityCalculator> {
  final TextEditingController incomeController =
  TextEditingController(text: '100000');

  final TextEditingController emiController =
  TextEditingController(text: '20000');

  final TextEditingController expensesController =
  TextEditingController(text: '20000');

  double maximumAffordableEmi = 30000;
  double maximumLoanAmount = 3185000;
  double emiPercentage = 30;

  double loan10Years = 0;
  double loan15Years = 0;
  double loan20Years = 0;
  double loan25Years = 0;

  double interestRate = 8.5;

  int loanTenureYears = 20;

  TextEditingController loanTenureController =
  TextEditingController();

  TextEditingController interestRateController =
  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8FAFC),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              Container(
                height: 55,
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  children: [

                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 23,
                        color: Color(0xFF374151),
                      ),
                    ),

                    SizedBox(width: 55),

                    Text(
                      'EMI Affordability Calculator',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF111827),
                      ),
                    ),

                    SizedBox(width: 10),

                    Icon(
                      Icons.info_outline,
                      size: 19,
                      color: Color(0xFF94A3B8),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 15,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            'Check the EMI',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF172554),
                            ),
                          ),

                          Text(
                            'You can Afford',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2563EB),
                              height: 1
                            ),
                          ),

                          SizedBox(height: 12),

                          Text(
                            'Find out how much loan you can afford based on your income\n'
                                'and expenses. Get an estimate of the maximum loan amount and\n'
                                'EMI you can comfortably\n'
                                'pay.',
                            style: TextStyle(
                              fontSize: 12,
                              height: 1.6,
                              color: Color(0xFF64748B),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 8),

                    Image.asset(
                      'assets/images/affordability_calculator_image.png',
                      width: 155,
                      height: 135,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 58,
                  margin: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                    color: Color(0xFFF8FAFC),
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xFFE5E7EB),
                        width: 1,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [

                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Icon(
                                  Icons.receipt_long_outlined,
                                  size: 15,
                                  color: Color(0xFF2563EB),
                                ),

                                SizedBox(width: 7),

                                Text(
                                  'Calculator',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF2563EB),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 15),

                            Container(
                              height: 2,
                              width: double.infinity,
                              color: Color(0xFF2563EB),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Icon(
                                  Icons.bookmark_border,
                                  size: 15,
                                  color: Color(0xFF64748B),
                                ),

                                SizedBox(width: 7),

                                Text(
                                  'Saved',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF64748B),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 2),

                            Text(
                              'Scenarios',
                              style: TextStyle(
                                fontSize: 12,
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
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(18, 16, 18, 18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(
                      color: Color(0xFFE2E8F0),
                      width: 1,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.04),
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // Step heading
                      Row(
                        children: [

                          Container(
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                              color: Color(0xFF2563EB),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                '1',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(width: 10),

                          Text(
                            'Your Details',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1E293B),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 17),

                      // Monthly Income
                      Row(
                        children: [
                          Text(
                            'Monthly Income (Take Home)',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF334155),
                            ),
                          ),

                          SizedBox(width: 5),

                          Icon(
                            Icons.help_outline,
                            size: 12,
                            color: Color(0xFF94A3B8),
                          ),
                        ],
                      ),

                      SizedBox(height: 5),

                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFCBD5E1),
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          children: [

                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                '₹',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF64748B),
                                ),
                              ),
                            ),

                            SizedBox(width: 10),

                            Expanded(
                              child: TextField(
                                controller: incomeController,
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF334155),
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  isDense: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 15),

                      // Existing EMI
                      Row(
                        children: [
                          Text(
                            'Existing Monthly EMI Obligations',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF334155),
                            ),
                          ),

                          SizedBox(width: 5),

                          Icon(
                            Icons.help_outline,
                            size: 12,
                            color: Color(0xFF94A3B8),
                          ),
                        ],
                      ),

                      SizedBox(height: 5),

                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFCBD5E1),
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          children: [

                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                '₹',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF64748B),
                                ),
                              ),
                            ),

                            SizedBox(width: 10),

                            Expanded(
                              child: TextField(
                                controller: emiController,
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF334155),
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  isDense: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 15),

                      // Other Expenses
                      Row(
                        children: [
                          Text(
                            'Other Monthly Expenses',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF334155),
                            ),
                          ),

                          SizedBox(width: 5),

                          Icon(
                            Icons.help_outline,
                            size: 12,
                            color: Color(0xFF94A3B8),
                          ),
                        ],
                      ),

                      SizedBox(height: 5),

                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFCBD5E1),
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          children: [

                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                '₹',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF64748B),
                                ),
                              ),
                            ),

                            SizedBox(width: 10),

                            Expanded(
                              child: TextField(
                                controller: expensesController,
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF334155),
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  isDense: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 15),

                      // Calculate button
                      GestureDetector(
                        onTap: () {
                          calculateAffordability();
                        },
                        child: Container(
                          width: double.infinity,
                          height: 39,
                          decoration: BoxDecoration(
                            color: Color(0xFF2563EB),
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFF2563EB).withOpacity(0.20),
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Text(
                                'Calculate Affordability',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),

                              SizedBox(width: 9),

                              Icon(
                                Icons.arrow_forward,
                                size: 17,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 14),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(18, 16, 18, 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(
                      color: Color(0xFFE2E8F0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.04),
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // Step 2 Heading
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                              color: Color(0xFF2563EB),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                '2',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(width: 10),

                          Expanded(
                            child: Text(
                              'Your Affordability\nSummary',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF1E293B),
                                height: 1.2,
                              ),
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 9,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFFDCFCE7),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              maximumAffordableEmi > 0
                                  ? 'Affordable'
                                  : 'Not Affordable',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF15803D),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 18),

                      // Maximum EMI + Loan Amount
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(16, 17, 16, 15),
                        decoration: BoxDecoration(
                          color: Color(0xFFF0FDF4),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(
                              'Maximum Affordable EMI',
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(0xFF334155),
                              ),
                            ),

                            SizedBox(height: 4),

                            Text(
                              '₹${maximumAffordableEmi.toStringAsFixed(0)}',
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF15803D),
                              ),
                            ),

                            SizedBox(height: 2),

                            Text(
                              '(${emiPercentage.toStringAsFixed(0)}% of your take home income)',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF16A34A),
                              ),
                            ),

                            SizedBox(height: 17),

                            Row(
                              children: [

                                Text(
                                  'Maximum Loan Amount',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Color(0xFF334155),
                                  ),
                                ),

                                SizedBox(width: 5),

                                Icon(
                                  Icons.info_outline,
                                  size: 12,
                                  color: Color(0xFF94A3B8),
                                ),
                              ],
                            ),

                            SizedBox(height: 3),

                            Text(
                              '₹${maximumLoanAmount.toStringAsFixed(0)}',
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF15803D),
                              ),
                            ),

                            SizedBox(height: 2),

                            Text(
                              '(at ${interestRate.toStringAsFixed(2)}% p.a. for $loanTenureYears years)',
                              style: TextStyle(
                                fontSize: 9,
                                color: Color(0xFF64748B),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 25),

                      // Affordability Status
                      Text(
                        'Affordability Status',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1E293B),
                        ),
                      ),

                      SizedBox(height: 10),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          Expanded(
                            child: Text(
                      maximumAffordableEmi > 0
                        ? 'You can comfortably afford\nthis EMI.'
                            : 'You may not be able to afford\nthis EMI.',
                              style: TextStyle(
                                fontSize: 10,
                                height: 1.5,
                                color: Color(0xFF64748B),
                              ),
                            ),
                          ),

                          SizedBox(
                            width: 95,
                            height: 70,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [

                                CustomPaint(
                                  size: Size(95, 70),
                                  painter: AffordabilityGaugePainter(),
                                ),

                                Positioned(
                                  top: 38,
                                  child: Text(
                                    '${emiPercentage.toStringAsFixed(0)}%',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF1E293B),
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 54,
                                  child: Text(
                                    'of your income',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color(0xFF94A3B8),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 23),

                      // Income & Expense Summary
                      Text(
                        'Income & Expense Summary',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1E293B),
                        ),
                      ),

                      SizedBox(height: 13),

                      _summaryRow(
                        'Take Home Income',
                          '₹${incomeController.text}'
                      ),

                      SizedBox(height: 11),

                      _summaryRow(
                        'Existing EMI Obligations',
                        '- ₹${emiController.text}',
                      ),

                      SizedBox(height: 11),

                      _summaryRow(
                        'Other Monthly Expenses',
                        '- ₹${expensesController.text}',
                      ),

                      SizedBox(height: 13),

                      Divider(
                        color: Color(0xFFE5E7EB),
                        height: 1,
                      ),

                      SizedBox(height: 13),

                      _summaryRow(
                        'Available for New EMI',
                        '₹${maximumAffordableEmi.toStringAsFixed(0)}',
                        valueColor: Color(0xFF16A34A),
                        bold: true,
                      ),

                      SizedBox(height: 13),

                      Row(
                        children: [

                          Expanded(
                            child: Text(
                              'Income Remaining After EMI',
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xFF475569),
                              ),
                            ),
                          ),

                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '₹${(double.tryParse(incomeController.text) ?? 0) - (double.tryParse(emiController.text) ?? 0) - maximumAffordableEmi}',
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF1E293B),
                                  ),
                                ),
                                TextSpan(
                                  text: '(${((double.tryParse(incomeController.text) ?? 0) > 0 ? (((double.tryParse(incomeController.text) ?? 0) - (double.tryParse(emiController.text) ?? 0) - maximumAffordableEmi) / (double.tryParse(incomeController.text) ?? 1)) * 100 : 0).toStringAsFixed(0)}%)',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFF94A3B8),
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
              SizedBox(height: 14),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFEFF6FF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Container(
                        width: 34,
                        height: 34,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.shield_outlined,
                          size: 17,
                          color: Color(0xFF2563EB),
                        ),
                      ),

                      SizedBox(width: 10),

                      Expanded(
                        child: Text(
                          'As per recommended rule, your total EMI\n'
                              'should not exceed 40-50% of your take\n'
                              'home income.',
                          style: TextStyle(
                            fontSize: 11,
                            height: 1.3,
                            color: Color(0xFF1E3A8A),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 14),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(18, 16, 18, 18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(
                      color: Color(0xFFE2E8F0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.04),
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // Step 3 heading
                      Row(
                        children: [

                          Container(
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                              color: Color(0xFF2563EB),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                '3',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(width: 10),

                          Text(
                            'EMI & Loan Details',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1E293B),
                            ),
                          ),

                          SizedBox(width: 5),

                          Text(
                            '(Assumptions)',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF94A3B8),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 20),

                      // Interest Rate
                      Row(
                        children: [

                          Expanded(
                            child: Text(
                              'Interest Rate (p.a.)',
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(0xFF475569),
                              ),
                            ),
                          ),

                          Text(
                            '${interestRate.toStringAsFixed(2)}%',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF334155),
                            ),
                          ),

                          SizedBox(width: 10),

                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text('Edit Interest Rate'),
                                    content: TextField(
                                      keyboardType: TextInputType.number,
                                      controller: interestRateController,
                                      decoration: InputDecoration(
                                        hintText: 'Enter interest rate',
                                        suffixText: '%',
                                      ),
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          final value =
                                          double.tryParse(interestRateController.text);

                                          if (value != null && value > 0 && value <= 30) {
                                            interestRate = value;
                                            calculateAffordability();
                                            Navigator.pop(context);
                                          }
                                        },
                                        child: Text('Save'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Icon(
                              Icons.edit_outlined,
                              size: 15,
                              color: Color(0xFF94A3B8),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 18),

                      Divider(
                        height: 1,
                        color: Color(0xFFF1F5F9),
                      ),

                      SizedBox(height: 18),

                      // Loan Tenure
                      Row(
                        children: [

                          Expanded(
                            child: Text(
                              'Loan Tenure',
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(0xFF475569),
                              ),
                            ),
                          ),

                          Text(
                            '${loanTenureYears} Years',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF334155),
                            ),
                          ),

                          SizedBox(width: 10),

                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text('Edit Loan Tenure'),
                                    content: TextField(
                                      keyboardType: TextInputType.number,
                                      controller: loanTenureController,
                                      decoration: InputDecoration(
                                        hintText: 'Enter loan tenure',
                                        suffixText: 'Years',
                                      ),
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          final value =
                                          int.tryParse(loanTenureController.text);

                                          if (value != null && value >= 5 && value <= 30) {
                                            loanTenureYears = value;
                                            calculateAffordability();
                                            Navigator.pop(context);
                                          }
                                        },
                                        child: Text('Save'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Icon(
                              Icons.edit_outlined,
                              size: 15,
                              color: Color(0xFF94A3B8),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 18),

                      Divider(
                        height: 1,
                        color: Color(0xFFF1F5F9),
                      ),

                      SizedBox(height: 18),

                      // EMI Frequency
                      Row(
                        children: [

                          Expanded(
                            child: Text(
                              'EMI Frequency',
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(0xFF475569),
                              ),
                            ),
                          ),

                          Text(
                            'Monthly',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF334155),
                            ),
                          ),

                          SizedBox(width: 10),

                          Icon(
                            Icons.edit_outlined,
                            size: 15,
                            color: Color(0xFF94A3B8),
                          ),
                        ],
                      ),

                      SizedBox(height: 18),

                      // Possible Loan Amounts table
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFE2E8F0),
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Column(
                          children: [

                            // Table heading
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 11,
                              ),
                              color: Color(0xFFF8FAFC),
                              child: Text(
                                'Possible Loan Amounts\nat Different Tenures',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF334155),
                                  height: 1.35,
                                ),
                              ),
                            ),

                            _loanAmountRow(
                              '10 Years${loanTenureYears == 10 ? ' (Selected)' : ''}',
                              '₹${loan10Years.toStringAsFixed(0)}',
                              selected: loanTenureYears == 10,
                            ),

                            _loanAmountRow(
                              '15 Years${loanTenureYears == 15 ? ' (Selected)' : ''}',
                              '₹${loan15Years.toStringAsFixed(0)}',
                              selected: loanTenureYears == 15,
                            ),

                            _loanAmountRow(
                              '20 Years${loanTenureYears == 20 ? ' (Selected)' : ''}',
                              '₹${loan20Years.toStringAsFixed(0)}',
                              selected: loanTenureYears == 20,
                            ),

                            _loanAmountRow(
                              '25 Years${loanTenureYears == 25 ? ' (Selected)' : ''}',
                              '₹${loan25Years.toStringAsFixed(0)}',
                              selected: loanTenureYears == 25,
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        '* Interest rates are indicative and may vary from lender to lender.',
                        style: TextStyle(
                          fontSize: 11,
                          fontStyle: FontStyle.italic,
                          color: Color(0xFF94A3B8),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 14),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFEFF4FF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Container(
                        width: 34,
                        height: 34,
                        decoration: BoxDecoration(
                          color: Color(0xFFDCE8FF),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Icon(
                          Icons.lightbulb_outline,
                          size: 19,
                          color: Color(0xFF2563EB),
                        ),
                      ),

                      SizedBox(width: 10),

                      Expanded(
                        child: Text(
                          'You are in a good position to take a loan.\n'
                              'Keep your EMI within affordable limits to\n'
                              'maintain financial stability.',
                          style: TextStyle(
                            fontSize: 11,
                            height: 1.3,
                            color: Color(0xFF1E293B),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 14),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(18, 16, 18, 18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(
                      color: Color(0xFFE2E8F0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.04),
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // Step 4 heading
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                              color: Color(0xFF2563EB),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                '4',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(width: 10),

                          Expanded(
                            child: Text(
                              'What Impacts Your\nAffordability?',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF1E293B),
                                height: 1.2,
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 20),

                      // Higher Income
                      _impactRow(
                        icon: Icons.attach_money,
                        iconColor: Color(0xFF16A34A),
                        iconBackground: Color(0xFFECFDF5),
                        title: 'Higher Income',
                        description:
                        'Increases your affordable loan amount',
                      ),

                      SizedBox(height: 15),

                      // Existing EMIs
                      _impactRow(
                        icon: Icons.description_outlined,
                        iconColor: Color(0xFFF97316),
                        iconBackground: Color(0xFFFFF7ED),
                        title: 'Existing EMIs',
                        description:
                        'Higher EMIs reduce your loan eligibility',
                      ),

                      SizedBox(height: 15),

                      // Monthly Expenses
                      _impactRow(
                        icon: Icons.shopping_cart_outlined,
                        iconColor: Color(0xFFEF4444),
                        iconBackground: Color(0xFFFFF1F2),
                        title: 'Monthly Expenses',
                        description:
                        'More expenses reduce your available EMI',
                      ),

                      SizedBox(height: 15),

                      // Interest Rate & Tenure
                      _impactRow(
                        icon: Icons.percent,
                        iconColor: Color(0xFFA855F7),
                        iconBackground: Color(0xFFFAF5FF),
                        title: 'Interest Rate & Tenure',
                        description:
                        'Lower interest rate or longer tenure\n'
                            'increases your loan amount',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 14),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFEFF6FF),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xFFD9E9FF),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        width: 34,
                        height: 34,
                        decoration: BoxDecoration(
                          color: Color(0xFFDCEAFF),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Icon(
                          Icons.verified_user_outlined,
                          size: 18,
                          color: Color(0xFF2563EB),
                        ),
                      ),

                      SizedBox(width: 10),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(
                              'Disclaimer',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF1E293B),
                              ),
                            ),

                            SizedBox(height: 4),

                            Text(
                              'This calculator provides an estimate\n'
                                  'based on the information provided by\n'
                                  'you and general assumptions. Actual\n'
                                  'loan amount and interest rate will\n'
                                  'depend on lender policies, credit\n'
                                  'profile and other factors.',
                              style: TextStyle(
                                fontSize: 11,
                                height: 1.55,
                                color: Color(0xFF475569),
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

              Container(
                padding: EdgeInsets.fromLTRB(12, 10, 12, 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      offset: Offset(0, -2),
                    ),
                  ],
                ),
                child: Row(
                  children: [

                    // Reset Button
                    Expanded(
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(
                            color: Color(0xFFCBD5E1),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Icon(
                              Icons.refresh,
                              size: 17,
                              color: Color(0xFF2563EB),
                            ),

                            SizedBox(width: 7),

                            Text(
                              'Reset',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF2563EB),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(width: 12),

                    // Save Scenario Button
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFF2563EB),
                          borderRadius: BorderRadius.circular(7),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF2563EB).withOpacity(0.20),
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Icon(
                              Icons.bookmark_border,
                              size: 17,
                              color: Colors.white,
                            ),

                            SizedBox(width: 7),

                            Text(
                              'Save Scenario',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
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
            ],
          ),
        ),
      ),
    );
  }
  void calculateAffordability() {
    final income =
        double.tryParse(incomeController.text) ?? 0;

    final existingEmi =
        double.tryParse(emiController.text) ?? 0;

    final otherExpenses =
        double.tryParse(expensesController.text) ?? 0;




    final maximumEmiByIncome = income * 0.30;

    final availableEmi =
        maximumEmiByIncome - existingEmi;

    final double affordableEmi =
    availableEmi > 0 ? availableEmi : 0;

    final monthlyRate =
        interestRate / 12 / 100;

    final numberOfMonths =
        loanTenureYears * 12;
    double loanAmount = 0;

    if (affordableEmi > 0) {
      loanAmount =
          (affordableEmi *
              (1 - (1 / math.pow(
                1 + monthlyRate,
                numberOfMonths,
              ))) /
              monthlyRate)
              .toDouble();
    }
    final calculatedLoan10Years =
    calculateLoanAmount(
      affordableEmi,
      10,
      interestRate,
    );
    final calculatedLoan15Years =
    calculateLoanAmount(
      affordableEmi,
      15,
      interestRate,
    );
    final calculatedLoan20Years =
    calculateLoanAmount(
      affordableEmi,
      20,
      interestRate,
    );
    final calculatedLoan25Years =
    calculateLoanAmount(
      affordableEmi,
      25,
      interestRate,
    );

    setState(() {
      maximumAffordableEmi = affordableEmi;

      maximumLoanAmount =
          calculateLoanAmount(
            affordableEmi,
            loanTenureYears,
            interestRate,
          );

      emiPercentage = income > 0
          ? (affordableEmi / income) * 100
          : 0;

      loan10Years = calculatedLoan10Years;
      loan15Years = calculatedLoan15Years;
      loan20Years = calculatedLoan20Years;
      loan25Years = calculatedLoan25Years;
    });
  }
  double calculateLoanAmount(
      double emi,
      int years,
      double interestRate,
      ) {
    final monthlyRate =
        interestRate / 12 / 100;

    final numberOfMonths =
        years * 12;



    if (emi <= 0) {
      return 0;
    }

    return (
        emi *
            (1 -
                (1 /
                    math.pow(
                      1 + monthlyRate,
                      numberOfMonths,
                    ))) /
            monthlyRate
    ).toDouble();
  }
  @override
  void dispose() {
    incomeController.dispose();
    emiController.dispose();
    expensesController.dispose();

    super.dispose();
  }

  Widget _summaryRow(
      String title,
      String value, {
        Color valueColor = const Color(0xFF334155),
        bool bold = false,
      }) {
    return Row(
      children: [

        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 10,
              color: Color(0xFF475569),
            ),
          ),
        ),

        Text(
          value,
          style: TextStyle(
            fontSize: 11,
            fontWeight: bold ? FontWeight.bold : FontWeight.w500,
            color: valueColor,
          ),
        ),
      ],
    );
  }
  Widget _loanAmountRow(
      String tenure,
      String amount, {
        bool selected = false,
      }) {
    return Container(
      height: 34,
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: selected
            ? Color(0xFFEFF6FF)
            : Colors.white,
        border: Border(
          top: BorderSide(
            color: Color(0xFFE5E7EB),
          ),
        ),
      ),
      child: Row(
        children: [

          Expanded(
            child: Text(
              tenure,
              style: TextStyle(
                fontSize: 10,
                fontWeight: selected
                    ? FontWeight.bold
                    : FontWeight.normal,
                color: selected
                    ? Color(0xFF2563EB)
                    : Color(0xFF475569),
              ),
            ),
          ),

          Text(
            amount,
            style: TextStyle(
              fontSize: 10,
              fontWeight: selected
                  ? FontWeight.bold
                  : FontWeight.w500,
              color: selected
                  ? Color(0xFF2563EB)
                  : Color(0xFF334155),
            ),
          ),
        ],
      ),
    );
  }
  Widget _impactRow({
    required IconData icon,
    required Color iconColor,
    required Color iconBackground,
    required String title,
    required String description,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        Container(
          width: 38,
          height: 38,
          decoration: BoxDecoration(
            color: iconBackground,
            borderRadius: BorderRadius.circular(9),
          ),
          child: Icon(
            icon,
            size: 19,
            color: iconColor,
          ),
        ),

        SizedBox(width: 12),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                title,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF334155),
                ),
              ),

              SizedBox(height: 3),

              Text(
                description,
                style: TextStyle(
                  fontSize: 10,
                  color: Color(0xFF64748B),
                  height: 1.4,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
class AffordabilityGaugePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(
      size.width / 2,
      size.height,
    );

    final radius = size.width / 2 - 5;

    final paint = Paint()
      ..color = Color(0xFF42D883)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 9
      ..strokeCap = StrokeCap.butt;

    canvas.drawArc(
      Rect.fromCircle(
        center: center,
        radius: radius,
      ),
      3.14,
      3.14,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(
      covariant CustomPainter oldDelegate,
      ) {
    return false;
  }
}