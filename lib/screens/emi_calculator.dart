import 'package:flutter/material.dart';

class EmiCalculator extends StatefulWidget {
  EmiCalculator();

  @override
  State<EmiCalculator> createState() => _EmiCalculatorState();
}

class _EmiCalculatorState extends State<EmiCalculator> {

  double loanAmount = 1000000;
  double interestRate = 8.5;
  double loanTenure = 15;

  double calculateEMI() {
    double monthlyRate = interestRate / 12 / 100;
    double numberOfMonths = loanTenure * 12;

    if (monthlyRate == 0) {
      return loanAmount / numberOfMonths;
    }

    double power = 1;

    for (int i = 0; i < numberOfMonths.toInt(); i++) {
      power = power * (1 + monthlyRate);
    }

    double emi = loanAmount *
        monthlyRate *
        power /
        (power - 1);

    return emi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F7FB),

      body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 20,
                        color: Color(0xFF26364D),
                      ),
                    ),

                    Expanded(
                      child: Center(
                        child: Text(
                          'EMI Calculator',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF26364D),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 20),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [

              SizedBox(height: 8),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Plan Your Finances',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0755D9),
                              height: 1.5
                            ),
                          ),

                          Text(
                            'Smartly',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0755D9),
                              height: 1
                            ),
                          ),

                          SizedBox(height: 8),

                          Text(
                            'Calculate your monthly instalment, '
                                'total interest, and principal amount '
                                'you need to repay.',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              height: 1.4,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Image.asset(
                      'assets/images/emi_calculator_calculator_logo.png',
                      width: 110,
                      height: 130,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Loan Amount',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF26364D),
                      ),
                    ),

                    SizedBox(height: 8),

                    Text(
                      '₹${loanAmount.toInt()}',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0755D9),
                      ),
                    ),

                    SizedBox(height: 8),

                    Slider(
                      value: loanAmount,
                      min: 100000,
                      max: 50000000,
                      activeColor: Color(0xFF0755D9),
                      inactiveColor: Color(0xFFD9E2F3),
                      onChanged: (value) {
                        setState(() {
                          loanAmount = value;
                        });
                      },
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '₹1 Lakh',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),

                        Text(
                          '₹5 cr',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Interest Rate',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF26364D),
                      ),
                    ),

                    SizedBox(height: 8),

                    Text(
                      '${interestRate.toStringAsFixed(1)}%',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0755D9),
                      ),
                    ),

                    SizedBox(height: 8),

                    Slider(
                      value: interestRate,
                      min: 5,
                      max: 20,

                      activeColor: Color(0xFF0755D9),
                      inactiveColor: Color(0xFFD9E2F3),
                      onChanged: (value) {
                        setState(() {
                          interestRate = value;
                        });
                      },
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '5%',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),

                        Text(
                          '20%',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Loan Tenure',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF26364D),
                      ),
                    ),

                    SizedBox(height: 8),

                    Text(
                      '${loanTenure.toInt()} Years',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0755D9),
                      ),
                    ),

                    SizedBox(height: 8),

                    Slider(
                      value: loanTenure,
                      min: 1,
                      max: 30,
                      activeColor: Color(0xFF0755D9),
                      inactiveColor: Color(0xFFD9E2F3),
                      onChanged: (value) {
                        setState(() {
                          loanTenure = value;
                        });
                      },
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1 Year',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),

                        Text(
                          '30 Years',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 28),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(20, 18, 20, 18),
                  decoration: BoxDecoration(
                    color: Color(0xFF0B1D4D),
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // EMI Heading
                      Center(
                        child: Text(
                          'EQUATED MONTHLY INSTALLMENT',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.3,
                            color: Color(0xFF91A4C9),
                          ),
                        ),
                      ),

                      SizedBox(height: 8),

                      // EMI Amount
                      Center(
                        child: Text(
                          '₹${calculateEMI().toStringAsFixed(0)}',
                          style: TextStyle(
                            fontSize: 42,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      SizedBox(height: 24),

                      // Legend
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                  color: Color(0xFF3D8BFF),
                                  shape: BoxShape.circle,
                                ),
                              ),

                              SizedBox(width: 10),

                              Text(
                                'Principal Amount',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              Container(
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                  color: Color(0xFF8584F4),
                                  shape: BoxShape.circle,
                                ),
                              ),

                              SizedBox(width: 10),

                              Text(
                                'Total Interest',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(height: 18),

                      // Principal / Interest bar
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Row(
                          children: [
                            Expanded(
                              flex: loanAmount > 0
                                  ? loanAmount.round()
                                  : 1,
                              child: Container(
                                height: 12,
                                color: Color(0xFF3D8BFF),
                              ),
                            ),

                            Expanded(
                              flex: ((calculateEMI() * loanTenure * 12) - loanAmount)
                                  .round() >
                                  0
                                  ? ((calculateEMI() * loanTenure * 12) - loanAmount)
                                  .round()
                                  : 1,
                              child: Container(
                                height: 12,
                                color: Color(0xFF8584F4),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 18),

                      Divider(
                        color: Color(0xFF263A68),
                        height: 1,
                      ),

                      SizedBox(height: 24),

                      // Principal Amount
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Principal Amount',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF91A4C9),
                            ),
                          ),

                          Text(
                            '₹${loanAmount.toStringAsFixed(0)}',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 18),

                      // Total Interest
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Interest Amount',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF91A4C9),
                            ),
                          ),

                          Text(
                            '₹${((calculateEMI() * loanTenure * 12) - loanAmount).toStringAsFixed(0)}',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 26),

                      // Total Amount Payable
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Amount Payable',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF91A4C9),
                            ),
                          ),

                          Text(
                            '₹${(calculateEMI() * loanTenure * 12).toStringAsFixed(0)}',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 22),

                      // Information
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFF7185AA),
                                width: 1.5,
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                'i',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF7185AA),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(width: 14),

                          Expanded(
                            child: Text(
                              'This calculator provides an estimate. Actual EMI may vary slightly '
                                  'based on final loan terms, processing fees, and specific lender criteria.',
                              style: TextStyle(
                                fontSize: 11,
                                height: 1.5,
                                color: Color(0xFF7185AA),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xFFE5EAF2),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xFFEAF1FF),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Icon(
                          Icons.verified_user_outlined,
                          color: Color(0xFF0755D9),
                          size: 30,
                        ),
                      ),

                      SizedBox(width: 18),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Results are indicative',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF26364D),
                            ),
                          ),

                          SizedBox(height: 3),

                          Text(
                            'Final approval and EMI may vary \nas per lender policies.',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF737B8C),
                              height: 1.2
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

      ),
              )],) ));
  }
}