import 'package:flutter/material.dart';
import 'dart:math';

class EligibilityCalculator extends StatefulWidget {
  EligibilityCalculator();

  @override
  State<EligibilityCalculator> createState() =>
      _EligibilityCalculatorState();
}

class _EligibilityCalculatorState
    extends State<EligibilityCalculator> {

  double monthlyIncome = 1000000;
  double interestRate = 8.5;
  double loanTenure = 120;

  double personalLoanEMI = 0;
  double homeLoanEMI = 0;
  double carLoanEMI = 0;
  double twoWheelerLoanEMI = 0;
  double consumerLoanEMI = 0;
  double goldLoanEMI = 0;
  double otherEMI = 0;

  double creditCardOutstanding = 0;

  double otherFixedCharges = 2500;

  int amortizationPage = 1;
  String amortizationSearch = '';

  List<Map<String, dynamic>> getAmortizationSchedule() {
    double balance = calculateEligibleLoan();
    double monthlyRate = interestRate / 12 / 100;
    double emi = calculateEligibleEMI();

    List<Map<String, dynamic>> schedule = [];

    for (int month = 1; month <= loanTenure.toInt(); month++) {
      double interestPaid = balance * monthlyRate;

      double principalPaid = emi - interestPaid;

      if (principalPaid < 0) {
        principalPaid = 0;
      }

      if (principalPaid > balance) {
        principalPaid = balance;
      }

      double openingBalance = balance;

      balance = balance - principalPaid;

      schedule.add({
        'month': month,
        'openingBalance': openingBalance,
        'principalPaid': principalPaid,
        'interestPaid': interestPaid,
        'closingBalance': balance,
      });
    }

    return schedule;
  }

  double calculatePrincipalPercentage() {
    double principal = calculateEligibleLoan();
    double interest = calculateTotalInterest();

    double total = principal + interest;

    if (total == 0) {
      return 0;
    }

    return (principal / total) * 100;
  }

  double calculateInterestPercentage() {
    double principal = calculateEligibleLoan();
    double interest = calculateTotalInterest();

    double total = principal + interest;

    if (total == 0) {
      return 0;
    }

    return (interest / total) * 100;
  }


  double calculateExistingEMI() {
    return personalLoanEMI +
        homeLoanEMI +
        carLoanEMI +
        twoWheelerLoanEMI +
        consumerLoanEMI +
        goldLoanEMI +
        otherEMI;
  }
  String? employmentType;
  String? workExperience;
  String? residenceType;
  String? numberOfDependents;

  String selectedCreditScore = 'Excellent';



  double calculateCreditCardObligation() {
    return creditCardOutstanding * 0.05;
  }

  double calculateTotalEMIObligation() {
    return calculateExistingEMI() +
        calculateCreditCardObligation();
  }

  void showEMIDialog(
      String title,
      Function(double) onSave,
      ) {
    TextEditingController controller =
    TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),

          content: TextField(
            controller: controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Enter monthly EMI',
              prefixText: '₹ ',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),

          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),

            ElevatedButton(
              onPressed: () {
                double amount =
                    double.tryParse(controller.text) ?? 0;

                setState(() {
                  onSave(amount);
                });

                Navigator.pop(context);
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }

  double calculateEligibleLoan() {
    double availableEMI = calculateEligibleEMI();

    double monthlyRate = interestRate / 12 / 100;
    double months = loanTenure;

    if (monthlyRate == 0) {
      return availableEMI * months;
    }

    double factor = 1;

    for (int i = 0; i < months.toInt(); i++) {
      factor = factor * (1 + monthlyRate);
    }

    double eligibleLoan =
        availableEMI *
            (factor - 1) /
            (monthlyRate * factor);

    return eligibleLoan;
  }
  double calculateFOIR() {
    if (monthlyIncome <= 30000) {
      return 50;
    }

    if (monthlyIncome <= 75000) {
      return 60;
    }

    if (monthlyIncome <= 150000) {
      return 65;
    }

    return 75;
  }

  double calculateEligibleEMI() {
    double maximumEMI =
        monthlyIncome * (calculateFOIR() / 100);

    double availableEMI =
        maximumEMI - calculateTotalEMIObligation();

    if (availableEMI < 0) {
      return 0;
    }

    return availableEMI;
  }

  double calculateTotalRepayment() {
    return calculateEligibleLoan() +
        calculateTotalInterest();
  }
  double calculateGSTOnFees() {
    double processingFee = calculateEligibleLoan() * 0.001;
    return processingFee * 0.18;
  }

  double calculateInsurance() {
    return calculateEligibleLoan() * 0.003;
  }

  double calculateNetLoanDisbursed() {
    double grossLoan = calculateEligibleLoan();

    double gst = calculateGSTOnFees();
    double insurance = calculateInsurance();

    return grossLoan -
        gst -
        insurance -
        otherFixedCharges;
  }

  double calculateTotalInterest() {
    double totalRepayment =
        calculateEligibleEMI() * loanTenure;

    double eligibleLoan =
    calculateEligibleLoan();

    double interest =
        totalRepayment - eligibleLoan;

    if (interest < 0) {
      return 0;
    }

    return interest;
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
                          'Eligibility Calculator',
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


                SizedBox(height: 10),

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
                            'Check Your',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0755D9),
                            ),
                          ),

                          Text(
                            'Loan Eligibility',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0755D9),
                              height: 0.9
                            ),
                          ),

                          SizedBox(height: 8),

                          Text(
                            'Find out instantly how much loan you can get '
                                'based on your income and credit profile.',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              height: 1,
                            ),
                          ),

                           SizedBox(height: 4),

                          Text(
                            'Transparency from the very first step.',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              height: 1
                            ),
                          ),
                        ],
                      ),
                    ),

                    Image.asset(
                      'assets/images/eligibility_calculator_calculator_logo.png',
                      width: 130,
                      height: 140,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 18),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  height: 62,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Color(0xFFF4F6FA),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 52,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 3,
                                offset: Offset(0, 1),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.calculate_outlined,
                                size: 20,
                                color: Color(0xFF0755D9),
                              ),

                              SizedBox(width: 8),

                              Text(
                                'Core Calculator',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF0755D9),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Expanded(
                        child: Container(
                          height: 52,
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.book_outlined,
                                size: 21,
                                color: Color(0xFF667085),
                              ),

                              SizedBox(width: 8),

                              Text(
                                'Saved Scenarios',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF667085),
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
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // Header
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.description_outlined,
                                size: 15,
                                color: Color(0xFF0755D9),
                              ),

                              SizedBox(width: 8),

                              Text(
                                'FINANCIAL COORDINATES',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.8,
                                  color: Color(0xFF172033),
                                ),
                              ),
                            ],
                          ),

                          Icon(
                            Icons.refresh,
                            size: 17,
                            color: Color(0xFF8A94A6),
                          ),
                        ],
                      ),

                      SizedBox(height: 22),

                      // Customer Name
                      Text(
                        'Customer Name (optional)',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF172033),
                        ),
                      ),

                      SizedBox(height: 7),

                      Container(
                        width: double.infinity,
                        height: 42,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 14),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFDCE7F8),
                          ),
                          borderRadius: BorderRadius.circular(11),
                        ),
                        child: Text(
                          'e.g. Rahul Sharma',
                          style: TextStyle(
                            fontSize: 11,
                            color: Color(0xFF9AA4B5),
                          ),
                        ),
                      ),

                      SizedBox(height: 20),

                      // Monthly Income title
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Monthly Income',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF172033),
                            ),
                          ),

                          Text(
                            '₹${monthlyIncome.toStringAsFixed(0)}',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0755D9),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 7),

                      // Income value box
                      Container(
                        width: double.infinity,
                        height: 46,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 14),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFDCE7F8),
                          ),
                          borderRadius: BorderRadius.circular(11),
                        ),
                        child: Text(
                          monthlyIncome.toStringAsFixed(0),
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF172033),
                          ),
                        ),
                      ),

                      SizedBox(height: 4),

                      // Income slider
                      SliderTheme(
                        data: SliderThemeData(
                          trackHeight: 3,
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 5,
                          ),
                          overlayShape: RoundSliderOverlayShape(
                            overlayRadius: 10,
                          ),
                        ),
                        child: Slider(
                          value: monthlyIncome,
                          min: 10000,
                          max: 2000000,
                          divisions: 199,
                          activeColor: Color(0xFF0755D9),
                          inactiveColor: Color(0xFFE2E6ED),
                          onChanged: (value) {
                            setState(() {
                              monthlyIncome = value;
                            });
                          },
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '₹10K',
                            style: TextStyle(
                              fontSize: 8,
                              color: Color(0xFF8A94A6),
                            ),
                          ),

                          Text(
                            '₹20L',
                            style: TextStyle(
                              fontSize: 8,
                              color: Color(0xFF8A94A6),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 22),

                      // FOIR
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Auto-calculated FOIR (%)',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF172033),
                            ),
                          ),

                          Text(
                            '${calculateFOIR().toInt()}%',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0755D9),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 7),

                      Container(
                        width: double.infinity,
                        height: 42,
                        padding: EdgeInsets.symmetric(horizontal: 14),
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F8FE),
                          border: Border.all(
                            color: Color(0xFFDCE7F8),
                          ),
                          borderRadius: BorderRadius.circular(11),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${calculateFOIR().toInt()}% (Based on income)',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF0755D9),
                              ),
                            ),

                            Icon(
                              Icons.add_circle_outline,
                              size: 16,
                              color: Color(0xFF0755D9),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 8),

                      Text(
                        'INCOME-BASED RULES APPLIED',
                        style: TextStyle(
                          fontSize: 7,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF9AA4B5),
                        ),
                      ),

                      SizedBox(height: 22),

                      // Interest Rate + Loan Tenure
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Interest Rate (ROI %)',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF172033),
                                  ),
                                ),

                                SizedBox(height: 7),

                                Container(
                                  height: 42,
                                  padding: EdgeInsets.symmetric(horizontal: 14),
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xFFDCE7F8),
                                    ),
                                    borderRadius: BorderRadius.circular(11),
                                  ),
                                  child: Text(
                                    interestRate.toStringAsFixed(1),
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF172033),
                                    ),
                                  ),
                                ),

                                SizedBox(height: 5),

                                SliderTheme(
                                  data: SliderThemeData(
                                    trackHeight: 3,
                                    thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 5,
                                    ),
                                    overlayShape: RoundSliderOverlayShape(
                                      overlayRadius: 10,
                                    ),
                                  ),
                                  child: Slider(
                                    value: interestRate,
                                    min: 1,
                                    max: 20,
                                    divisions: 190,
                                    activeColor: Color(0xFF0755D9),
                                    inactiveColor: Color(0xFFE2E6ED),
                                    onChanged: (value) {
                                      setState(() {
                                        interestRate = value;
                                      });
                                    },
                                  ),
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '1%',
                                      style: TextStyle(
                                        fontSize: 8,
                                        color: Color(0xFF8A94A6),
                                      ),
                                    ),

                                    Text(
                                      '20%',
                                      style: TextStyle(
                                        fontSize: 8,
                                        color: Color(0xFF8A94A6),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          SizedBox(width: 12),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Loan Tenure',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF172033),
                                  ),
                                ),

                                SizedBox(height: 7),

                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 42,
                                        padding: EdgeInsets.symmetric(horizontal: 14),
                                        alignment: Alignment.centerLeft,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Color(0xFFDCE7F8),
                                          ),
                                          borderRadius: BorderRadius.circular(11),
                                        ),
                                        child: Text(
                                          loanTenure.toInt().toString(),
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF172033),
                                          ),
                                        ),
                                      ),
                                    ),

                                    SizedBox(width: 5),

                                    Container(
                                      height: 42,
                                      padding: EdgeInsets.symmetric(horizontal: 8),
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE8F0FF),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Mo',
                                          style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF0755D9),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                SizedBox(height: 5),

                                SliderTheme(
                                  data: SliderThemeData(
                                    trackHeight: 3,
                                    thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 5,
                                    ),
                                    overlayShape: RoundSliderOverlayShape(
                                      overlayRadius: 10,
                                    ),
                                  ),
                                  child: Slider(
                                    value: loanTenure,
                                    min: 6,
                                    max: 360,
                                    divisions: 354,
                                    activeColor: Color(0xFF0755D9),
                                    inactiveColor: Color(0xFFE2E6ED),
                                    onChanged: (value) {
                                      setState(() {
                                        loanTenure = value;
                                      });
                                    },
                                  ),
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '6 Mo',
                                      style: TextStyle(
                                        fontSize: 8,
                                        color: Color(0xFF8A94A6),
                                      ),
                                    ),

                                    Text(
                                      '360 Mo',
                                      style: TextStyle(
                                        fontSize: 8,
                                        color: Color(0xFF8A94A6),
                                      ),
                                    ),
                                  ],
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
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(18, 18, 18, 18),
                  decoration: BoxDecoration(
                    color: Color(0xFF0B1D4D),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // Header
                      Row(
                        children: [
                          Icon(
                            Icons.chevron_left,
                            color: Color(0xFF70A2FF),
                            size: 17,
                          ),

                          SizedBox(width: 3),

                          Text(
                            'LOAN ASSESSMENT',
                            style: TextStyle(
                              fontSize: 8,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.8,
                              color: Color(0xFF70A2FF),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 24),

                      // Eligible Loan + Image
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Eligible Loan Amount',
                                  style: TextStyle(
                                    fontSize: 9,
                                    color: Color(0xFF9BAED0),
                                  ),
                                ),

                                SizedBox(height: 5),

                                Text(
                                  '₹${calculateEligibleLoan().toStringAsFixed(0)}',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF5B9BFF),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Image.asset(
                            'assets/images/eligibility_calculator_result_logo.png',
                            width: 90,
                            height: 90,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),

                      SizedBox(height: 32),

                      // EMI Capacity / Max EMI
                      Row(
                        children: [

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Eligible EMI Capacity',
                                  style: TextStyle(
                                    fontSize: 8,
                                    color: Color(0xFF9BAED0),
                                  ),
                                ),

                                SizedBox(height: 7),

                                Text(
                                  '₹${calculateEligibleEMI().toStringAsFixed(0)}',
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
                                  'Max Allowed EMI',
                                  style: TextStyle(
                                    fontSize: 8,
                                    color: Color(0xFF9BAED0),
                                  ),
                                ),

                                SizedBox(height: 7),

                                Text(
                                  '₹${calculateEligibleEMI().toStringAsFixed(0)}',
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

                      SizedBox(height: 28),

                      // Existing Obligations
                      Row(
                        children: [

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Total EMI Obligation',
                                  style: TextStyle(
                                    fontSize: 8,
                                    color: Color(0xFF9BAED0),
                                  ),
                                ),

                                SizedBox(height: 7),

                                Text(
                                  '₹${calculateTotalEMIObligation().toStringAsFixed(0)}',
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
                                  'CC Obligation (5%)',
                                  style: TextStyle(
                                    fontSize: 8,
                                    color: Color(0xFF9BAED0),
                                  ),
                                ),

                                SizedBox(height: 7),

                                Text(
                                  '₹${calculateCreditCardObligation().toStringAsFixed(0)}',
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

                      SizedBox(height: 24),

                      Divider(
                        color: Color(0xFF263A68),
                        height: 1,
                      ),

                      SizedBox(height: 18),

                      // Monthly EMI
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Monthly EMI',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),

                          Row(
                            children: [
                              Text(
                                '₹${calculateEligibleEMI().toStringAsFixed(0)}',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),

                              SizedBox(width: 7),

                              Text(
                                '(${loanTenure.toInt()} Mo)',
                                style: TextStyle(
                                  fontSize: 8,
                                  color: Color(0xFF9BAED0),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(height: 18),

                      Divider(
                        color: Color(0xFF263A68),
                        height: 1,
                      ),

                      SizedBox(height: 18),

                      // Total Interest
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Interest Paid',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),

                          Text(
                            '₹${calculateTotalInterest().toStringAsFixed(0)}',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 18),

                      Divider(
                        color: Color(0xFF263A68),
                        height: 1,
                      ),

                      SizedBox(height: 18),

                      // Total Repayment
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Repayment',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),

                          Text(
                            '₹${calculateTotalRepayment().toStringAsFixed(0)}',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 24),

                      // Risk Box
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: Color(0xFF111F4B),
                          border: Border.all(
                            color: Color(0xFF9D263C),
                            width: 1.2,
                          ),
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(
                              'AFFORDABILITY: HIGH RISK (${calculateFOIR().toInt()}%)',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFF7048),
                              ),
                            ),

                            SizedBox(height: 10),

                            Text(
                              'Your total debt-to-income ratio is ${calculateFOIR().toInt()}%.\n'
                                  'FOIR limits prevent excessive leverage.',
                              style: TextStyle(
                                fontSize: 9,
                                height: 1.5,
                                color: Color(0xFF9BAED0),
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

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xFFE1E7F0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        'EXISTING EMI OBLIGATIONS',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.7,
                          color: Color(0xFF172033),
                        ),
                      ),

                      SizedBox(height: 18),

                      Text(
                        'Personal Loan EMI',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF4B5563),
                        ),
                      ),

                      SizedBox(height: 7),

                      GestureDetector(
                        onTap: () {
                          showEMIDialog(
                            'Personal Loan EMI',
                                (value) {
                              personalLoanEMI = value;
                            },
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 46,
                          padding: EdgeInsets.symmetric(horizontal: 14),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFDCE5F5),
                            ),
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '₹${personalLoanEMI.toStringAsFixed(0)}',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF172B85),
                                ),
                              ),

                              Icon(
                                Icons.add,
                                color: Color(0xFF0755D9),
                                size: 21,
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 14),

                      Text(
                        'Home Loan EMI',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF4B5563),
                        ),
                      ),

                      SizedBox(height: 7),

                      GestureDetector(
                        onTap: () {
                          showEMIDialog(
                            'Home Loan EMI',
                                (value) {
                              homeLoanEMI = value;
                            },
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 46,
                          padding: EdgeInsets.symmetric(horizontal: 14),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFDCE5F5),
                            ),
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '₹${homeLoanEMI.toStringAsFixed(0)}',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF172B85),
                                ),
                              ),

                              Icon(
                                Icons.add,
                                color: Color(0xFF0755D9),
                                size: 21,
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 14),

                      Text(
                        'Car Loan EMI',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF4B5563),
                        ),
                      ),

                      SizedBox(height: 7),

                      GestureDetector(
                        onTap: () {
                          showEMIDialog(
                            'Car Loan EMI',
                                (value) {
                              carLoanEMI = value;
                            },
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 46,
                          padding: EdgeInsets.symmetric(horizontal: 14),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFDCE5F5),
                            ),
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '₹${carLoanEMI.toStringAsFixed(0)}',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF172B85),
                                ),
                              ),

                              Icon(
                                Icons.add,
                                color: Color(0xFF0755D9),
                                size: 21,
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 14),

                      Text(
                        'Two Wheeler Loan EMI',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF4B5563),
                        ),
                      ),

                      SizedBox(height: 7),

                      GestureDetector(
                        onTap: () {
                          showEMIDialog(
                            'Two Wheeler Loan EMI',
                                (value) {
                              twoWheelerLoanEMI = value;
                            },
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 46,
                          padding: EdgeInsets.symmetric(horizontal: 14),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFDCE5F5),
                            ),
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '₹${twoWheelerLoanEMI.toStringAsFixed(0)}',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF172B85),
                                ),
                              ),

                              Icon(
                                Icons.add,
                                color: Color(0xFF0755D9),
                                size: 21,
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 14),

                      Text(
                        'Consumer Loan EMI',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF4B5563),
                        ),
                      ),

                      SizedBox(height: 7),

                      GestureDetector(
                        onTap: () {
                          showEMIDialog(
                            'Consumer Loan EMI',
                                (value) {
                              consumerLoanEMI = value;
                            },
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 46,
                          padding: EdgeInsets.symmetric(horizontal: 14),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFDCE5F5),
                            ),
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '₹${consumerLoanEMI.toStringAsFixed(0)}',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF172B85),
                                ),
                              ),

                              Icon(
                                Icons.add,
                                color: Color(0xFF0755D9),
                                size: 21,
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 14),

                      Text(
                        'Gold Loan EMI',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF4B5563),
                        ),
                      ),

                      SizedBox(height: 7),

                      GestureDetector(
                        onTap: () {
                          showEMIDialog(
                            'Gold Loan EMI',
                                (value) {
                              goldLoanEMI = value;
                            },
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 46,
                          padding: EdgeInsets.symmetric(horizontal: 14),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFDCE5F5),
                            ),
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '₹${goldLoanEMI.toStringAsFixed(0)}',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF172B85),
                                ),
                              ),

                              Icon(
                                Icons.add,
                                color: Color(0xFF0755D9),
                                size: 21,
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 14),

                      Text(
                        'Other EMI',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF4B5563),
                        ),
                      ),

                      SizedBox(height: 7),

                      GestureDetector(
                        onTap: () {
                          showEMIDialog(
                            'Other EMI',
                                (value) {
                              otherEMI = value;
                            },
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 46,
                          padding: EdgeInsets.symmetric(horizontal: 14),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFDCE5F5),
                            ),
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '₹${otherEMI.toStringAsFixed(0)}',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF172B85),
                                ),
                              ),

                              Icon(
                                Icons.add,
                                color: Color(0xFF0755D9),
                                size: 21,
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
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Color(0xFFF8FAFD),
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: Color(0xFFE3E8F1),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // Header
                      Row(
                        children: [
                          Icon(
                            Icons.credit_card,
                            size: 15,
                            color: Color(0xFFE53935),
                          ),

                          SizedBox(width: 8),

                          Text(
                            'CREDIT CARD OUTSTANDING',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.7,
                              color: Color(0xFF172B85),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 12),

                      Text(
                        'Enter full outstanding balance. 5% monthly obligation auto-calculated.',
                        style: TextStyle(
                          fontSize: 8,
                          height: 1.4,
                          color: Color(0xFF7B8495),
                        ),
                      ),

                      SizedBox(height: 18),

                      // Outstanding + Calculated obligation
                      Row(
                        children: [

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Outstanding Amount (₹)',
                                  style: TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF4B5563),
                                  ),
                                ),

                                SizedBox(height: 7),

                                Container(
                                  height: 44,
                                  padding: EdgeInsets.symmetric(horizontal: 12),
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Color(0xFFDCE5F5),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                   child:  GestureDetector(
                                    onTap: () {
                                      showEMIDialog(
                                        'Credit Card Outstanding',
                                            (value) {
                                          creditCardOutstanding = value;
                                        },
                                      );
                                    },
                                    child: Container(
                                      height: 44,
                                      padding: EdgeInsets.symmetric(horizontal: 12),
                                      alignment: Alignment.centerLeft,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Color(0xFFDCE5F5),
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        '₹${creditCardOutstanding.toStringAsFixed(0)}',
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xFF172B85),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(width: 12),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Calculated 5% Obligation',
                                  style: TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF4B5563),
                                  ),
                                ),

                                SizedBox(height: 7),

                                Container(
                                  height: 44,
                                  padding: EdgeInsets.symmetric(horizontal: 12),
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Color(0xFFDCE5F5),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child:Text(
                                    '₹${calculateCreditCardObligation().toStringAsFixed(0)}',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xFF172B85),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 26),

                      // Total EMI Obligations
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total EMI Obligations',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF172B85),
                            ),
                          ),

                          Text(
                            '₹${calculateTotalEMIObligation().toStringAsFixed(0)}',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF172B85),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 12),

                      Row(
                        children: [

                          Expanded(
                            child: Container(
                              height: 68,
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Color(0xFFE0E6F0),
                                ),
                                borderRadius: BorderRadius.circular(11),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Total Loan EMI',
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF172B85),
                                    ),
                                  ),

                                  SizedBox(height: 10),

                                  Text(
                                    '₹${calculateExistingEMI().toStringAsFixed(0)}',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF172B85),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(width: 12),

                          Expanded(
                            child: Container(
                              height: 68,
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Color(0xFFE0E6F0),
                                ),
                                borderRadius: BorderRadius.circular(11),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Total EMI Obligation',
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF172B85),
                                    ),
                                  ),

                                  SizedBox(height: 10),

                                  Text(
                                    '₹0',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF172B85),
                                    ),
                                  ),
                                ],
                              ),
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
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // Employment Type
                    Text(
                      'Employment Type',
                      style: TextStyle(
                        fontSize: 10,
                        color: Color(0xFF5F6878),
                      ),
                    ),

                    SizedBox(height: 7),

                    Container(
                      height: 46,
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xFFE0E6F0),
                        ),
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          isExpanded: true,
                          value: employmentType,
                          hint: Text(
                            'Select',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF9AA4B5),
                            ),
                          ),
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            color: Color(0xFF173B87),
                          ),
                          items: [
                            'Salaried',
                            'Self Employed',
                            'Business Owner',
                          ].map((value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF4B5563),
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              employmentType = value;
                            });
                          },
                        ),
                      ),
                    ),

                    SizedBox(height: 18),

                    // Work Experience
                    Text(
                      'Work Experience',
                      style: TextStyle(
                        fontSize: 10,
                        color: Color(0xFF5F6878),
                      ),
                    ),

                    SizedBox(height: 7),

                    Container(
                      height: 46,
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xFFE0E6F0),
                        ),
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          isExpanded: true,
                          value: workExperience,
                          hint: Text(
                            'Select',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF9AA4B5),
                            ),
                          ),
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            color: Color(0xFF173B87),
                          ),
                          items: [
                            'Less than 1 Year',
                            '1 - 3 Years',
                            '3 - 5 Years',
                            '5+ Years',
                          ].map((value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF4B5563),
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              workExperience = value;
                            });
                          },
                        ),
                      ),
                    ),

                    SizedBox(height: 18),

                    // Residence Type
                    Text(
                      'Residence Type',
                      style: TextStyle(
                        fontSize: 10,
                        color: Color(0xFF5F6878),
                      ),
                    ),

                    SizedBox(height: 7),

                    Container(
                      height: 46,
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xFFE0E6F0),
                        ),
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          isExpanded: true,
                          value: residenceType,
                          hint: Text(
                            'Select',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF9AA4B5),
                            ),
                          ),
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            color: Color(0xFF173B87),
                          ),
                          items: [
                            'Owned',
                            'Rented',
                            'Family Owned',
                          ].map((value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF4B5563),
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              residenceType = value;
                            });
                          },
                        ),
                      ),
                    ),

                    SizedBox(height: 18),

                    // Number of Dependents
                    Text(
                      'Number of Dependents',
                      style: TextStyle(
                        fontSize: 10,
                        color: Color(0xFF5F6878),
                      ),
                    ),

                    SizedBox(height: 7),

                    Container(
                      height: 46,
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xFFE0E6F0),
                        ),
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          isExpanded: true,
                          value: numberOfDependents,
                          hint: Text(
                            'Select',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF9AA4B5),
                            ),
                          ),
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            color: Color(0xFF173B87),
                          ),
                          items: [
                            '0',
                            '1',
                            '2',
                            '3',
                            '4+',
                          ].map((value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF4B5563),
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              numberOfDependents = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 18),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Color(0xFFF1F7FF),
                    border: Border.all(
                      color: Color(0xFFD5E7FF),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        'PRE-APPROVED FOR',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4267A8),
                        ),
                      ),

                      SizedBox(height: 5),

                      Text(
                        'HIGHER AMOUNT & BETTER INTEREST RATE',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF173B87),
                        ),
                      ),

                      SizedBox(height: 3),

                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 16,
                            color: Color(0xFFFFC107),
                          ),

                          SizedBox(width: 4),

                          Text(
                            'Based on your profile',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF6B7280),
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
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      'CREDIT SCORE RANGE',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF173B87),
                      ),
                    ),

                    SizedBox(height: 12),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [

                          // Excellent
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedCreditScore = 'Excellent';
                              });
                            },
                            child: Container(
                              width: 76,
                              height: 60,
                              padding: EdgeInsets.symmetric(
                                horizontal: 5,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: selectedCreditScore == 'Excellent'
                                      ? Color(0xFF0755D9)
                                      : Color(0xFFE5E9F0),
                                  width: selectedCreditScore == 'Excellent'
                                      ? 1.5
                                      : 1,
                                ),
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Excellent',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF173B87),
                                    ),
                                  ),

                                  SizedBox(height: 4),

                                  Text(
                                    '(750-900)',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color(0xFF9AA4B5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(width: 9),

                          // Good
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedCreditScore = 'Good';
                              });
                            },
                            child: Container(
                              width: 76,
                              height: 60,
                              padding: EdgeInsets.symmetric(
                                horizontal: 5,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: selectedCreditScore == 'Good'
                                      ? Color(0xFF0755D9)
                                      : Color(0xFFE5E9F0),
                                  width: selectedCreditScore == 'Good'
                                      ? 1.5
                                      : 1,
                                ),
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Good',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF6B7280),
                                    ),
                                  ),

                                  SizedBox(height: 4),

                                  Text(
                                    '(650-749)',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color(0xFF9AA4B5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(width: 9),

                          // Average
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedCreditScore = 'Average';
                              });
                            },
                            child: Container(
                              width: 76,
                              height: 60,
                              padding: EdgeInsets.symmetric(
                                horizontal: 5,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: selectedCreditScore == 'Average'
                                      ? Color(0xFF0755D9)
                                      : Color(0xFFE5E9F0),
                                  width: selectedCreditScore == 'Average'
                                      ? 1.5
                                      : 1,
                                ),
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Average',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF6B7280),
                                    ),
                                  ),

                                  SizedBox(height: 4),

                                  Text(
                                    '(550-649)',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color(0xFF9AA4B5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(width: 9),

                          // Poor
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedCreditScore = 'Poor';
                              });
                            },
                            child: Container(
                              width: 76,
                              height: 60,
                              padding: EdgeInsets.symmetric(
                                horizontal: 5,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: selectedCreditScore == 'Poor'
                                      ? Color(0xFF0755D9)
                                      : Color(0xFFE5E9F0),
                                  width: selectedCreditScore == 'Poor'
                                      ? 1.5
                                      : 1,
                                ),
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Poor',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF6B7280),
                                    ),
                                  ),

                                  SizedBox(height: 4),

                                  Text(
                                    '(Below 550)',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color(0xFF9AA4B5),
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
              SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(18, 18, 18, 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Color(0xFFE1E7F0),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        'Principal vs. Interest',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF172033),
                        ),
                      ),

                      SizedBox(height: 4),

                      Text(
                        'Total cost allocation of the eligible loan.',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFF687386),
                        ),
                      ),

                      SizedBox(height: 20),

                      // Donut Chart
                      Center(
                        child: SizedBox(
                          width: 132,
                          height: 132,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [

                              SizedBox(
                                width: 132,
                                height: 132,
                                child: CircularProgressIndicator(
                                  value: calculatePrincipalPercentage() / 100,
                                  strokeWidth: 17,
                                  backgroundColor: Color(0xFFDCE2FF),
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    Color(0xFF2F6BCF),
                                  ),
                                ),
                              ),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '${calculatePrincipalPercentage().toStringAsFixed(0)}%',
                                    style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF172033),
                                    ),
                                  ),

                                  Text(
                                    'Principal',
                                    style: TextStyle(
                                      fontSize: 9,
                                      color: Color(0xFF4B5563),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 18),

                      // Principal
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(
                            width: 10,
                            height: 10,
                            margin: EdgeInsets.only(top: 3),
                            decoration: BoxDecoration(
                              color: Color(0xFF1769E0),
                              shape: BoxShape.circle,
                            ),
                          ),

                          SizedBox(width: 8),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Principal',
                                style: TextStyle(
                                  fontSize: 9,
                                  color: Color(0xFF4B5563),
                                ),
                              ),

                              SizedBox(height: 3),

                              Text(
                                '₹${calculateEligibleLoan().toStringAsFixed(0)}',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF172033),
                                ),
                              ),

                              SizedBox(height: 2),

                              Text(
                                '(${calculatePrincipalPercentage().toStringAsFixed(0)}%)',
                                style: TextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF0755D9),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(height: 16),

                      // Interest
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(
                            width: 10,
                            height: 10,
                            margin: EdgeInsets.only(top: 3),
                            decoration: BoxDecoration(
                              color: Color(0xFFB9C4FF),
                              shape: BoxShape.circle,
                            ),
                          ),

                          SizedBox(width: 8),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Interest',
                                style: TextStyle(
                                  fontSize: 9,
                                  color: Color(0xFF4B5563),
                                ),
                              ),

                              SizedBox(height: 3),

                              Text(
                                '₹${calculateTotalInterest().toStringAsFixed(0)}',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF172033),
                                ),
                              ),

                              SizedBox(height: 2),

                              Text(
                                '(${calculateInterestPercentage().toStringAsFixed(0)}%)',
                                style: TextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF0755D9),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(height: 18),

                      Divider(
                        color: Color(0xFFE5E9F0),
                        height: 1,
                      ),

                      SizedBox(height: 18),

                      // Total Repayment
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Repayment',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF172033),
                            ),
                          ),

                          Text(
                            '₹${calculateTotalRepayment().toStringAsFixed(0)}',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF172033),
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
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(18, 18, 18, 14),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Color(0xFFE1E7F0),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        'Outstanding Loan Balance',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF172033),
                        ),
                      ),

                      SizedBox(height: 4),

                      Text(
                        'Visual amortization of principal over tenure.',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFF687386),
                        ),
                      ),

                      SizedBox(height: 16),

                      SizedBox(
                        height: 210,
                        width: double.infinity,
                        child: CustomPaint(
                          painter: LoanBalancePainter(
                            loanAmount: calculateEligibleLoan(),
                            interestRate: interestRate,
                            tenure: loanTenure.toInt(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 18),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [

                    // Prepay Early & Save
                    Expanded(
                      child: Container(
                        height: 125,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Color(0xFF0755F5),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Stack(
                          children: [

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Icon(
                                  Icons.sell_outlined,
                                  color: Colors.white,
                                  size: 25,
                                ),

                                SizedBox(height: 8),

                                Text(
                                  'Prepay\nearly & save',
                                  style: TextStyle(
                                    fontSize: 15,
                                    height: 1.05,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),

                                SizedBox(height: 3),

                                Text(
                                  'Reduce total interest',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),

                            Positioned(
                              right: -28,
                              bottom: -35,
                              child: Container(
                                width: 85,
                                height: 85,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.08),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(width: 12),

                    // Lower Tenure
                    Expanded(
                      child: Container(
                        height: 125,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Color(0xFF00843D),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Stack(
                          children: [

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Icon(
                                  Icons.trending_down,
                                  color: Color(0xFF9BFFB8),
                                  size: 25,
                                ),

                                SizedBox(height: 8),

                                Text(
                                  'Lower\nTenure',
                                  style: TextStyle(
                                    fontSize: 15,
                                    height: 1.05,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF9BFFB8),
                                  ),
                                ),

                                SizedBox(height: 3),

                                Text(
                                  'Higher EMI options',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Color(0xFF8FE3A8),
                                  ),
                                ),
                              ],
                            ),

                            Positioned(
                              right: -28,
                              bottom: -35,
                              child: Container(
                                width: 85,
                                height: 85,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.08),
                                  shape: BoxShape.circle,
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
              SizedBox(height: 18),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(18, 16, 18, 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Color(0xFFE1E7F0),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [

                      // Gross Eligible Loan
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Gross Eligible Loan',
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0xFF687386),
                            ),
                          ),

                          Text(
                            '₹${calculateEligibleLoan().toStringAsFixed(0)}',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF172033),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 18),

                      // GST
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'GST on Fees (18%)',
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0xFF687386),
                            ),
                          ),

                          Text(
                            '₹${calculateGSTOnFees().toStringAsFixed(0)}',
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0xFF172033),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 18),

                      // Insurance
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Insurance (0.3%)',
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0xFF687386),
                            ),
                          ),

                          Text(
                            '₹${calculateInsurance().toStringAsFixed(0)}',
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0xFF172033),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 18),

                      // Other Charges
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Other Fixed Charges',
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0xFF687386),
                            ),
                          ),

                          Text(
                            '₹${otherFixedCharges.toStringAsFixed(0)}',
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0xFF172033),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 16),

                      Divider(
                        color: Color(0xFFE1E7F0),
                        height: 1,
                      ),

                      SizedBox(height: 16),

                      // Net Loan Disbursed
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Net Loan Disbursed',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF087A46),
                            ),
                          ),

                          Text(
                            '₹${calculateNetLoanDisbursed().toStringAsFixed(0)}',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF087A46),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),

// Fees Transparency Card
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Color(0xFFF1F4FF),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    children: [

                      SizedBox(height: 28),

                      // Fees illustration
                      Image.asset(
                        'assets/images/eligibility_calculator_percent_logo.png',
                        width: 150,
                        height: 150,
                        fit: BoxFit.contain,
                      ),

                      SizedBox(height: 22),

                      Text(
                        'All fees and charges are\ninclusive and transparent.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          height: 1.25,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF172033),
                        ),
                      ),

                      SizedBox(height: 12),

                      Text(
                        'No hidden costs.',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(0xFF7D8495),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 24),

// Proceed to Application Button
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      // Application screen navigation baad me add karenge
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF0645CC),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                    ),
                    child: Text(
                      'Proceed to Application',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),


              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // Heading
                    Center(
                      child: Text(
                        'Repayment Amortization Schedule',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF253044),
                        ),
                      ),
                    ),

                    SizedBox(height: 10),

                    // Description
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        'Month-by-month breakdown of principal reduction and',
                        style: TextStyle(
                          fontSize: 11,
                          color: Color(0xFF6D7D98),
                        ),
                      ),
                    ),

                    SizedBox(height: 3),

                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        'interest',
                        style: TextStyle(
                          fontSize: 11,
                          color: Color(0xFF6D7D98),
                        ),
                      ),
                    ),

                    SizedBox(height: 3),

                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        'payouts.',
                        style: TextStyle(
                          fontSize: 11,
                          color: Color(0xFF6D7D98),
                        ),
                      ),
                    ),

                    SizedBox(height: 18),

                    // Excel + Print
                    Row(
                      children: [

                        Expanded(
                          child: SizedBox(
                            height: 38,
                            child: OutlinedButton.icon(
                              onPressed: () {
                                // Excel export later
                              },
                              icon: Icon(
                                Icons.download,
                                size: 16,
                                color: Color(0xFF344054),
                              ),
                              label: Text(
                                'Excel',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF344054),
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Color(0xFFF8FAFD),
                                side: BorderSide(
                                  color: Color(0xFFDCE4EF),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: 7),

                        Expanded(
                          child: SizedBox(
                            height: 38,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                // Print later
                              },
                              icon: Icon(
                                Icons.print_outlined,
                                size: 16,
                                color: Color(0xFF0755D9),
                              ),
                              label: Text(
                                'Print',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF0755D9),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFEFF3FF),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 18),

                    // Search + Total Months Card
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.fromLTRB(18, 18, 18, 18),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xFFE3E9F2),
                        ),
                        borderRadius: BorderRadius.circular(9),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [

                          // Search Box
                          Container(
                            height: 52,
                            padding: EdgeInsets.symmetric(horizontal: 14),
                            decoration: BoxDecoration(
                              color: Color(0xFFFBFCFE),
                              border: Border.all(
                                color: Color(0xFFD7E1EF),
                              ),
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: Row(
                              children: [

                                Icon(
                                  Icons.search,
                                  size: 23,
                                  color: Color(0xFF8FA1BC),
                                ),

                                SizedBox(width: 10),

                                Expanded(
                                  child: Text(
                                    'Search specific month...',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF75839A),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 20),

                          // Total Months
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [

                              Text(
                                'TOTAL MONTHS:',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF667791),
                                ),
                              ),

                              SizedBox(width: 7),

                              Text(
                                '${loanTenure.toInt()}',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF253044),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              SizedBox(height: 12),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Color(0xFFE1E7F0),
                    ),
                    borderRadius: BorderRadius.circular(9),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [

                      // Table Header
                      Container(
                        height: 58,
                        padding: EdgeInsets.symmetric(horizontal: 14),
                        decoration: BoxDecoration(
                          color: Color(0xFFF7F9FC),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(9),
                            topRight: Radius.circular(9),
                          ),
                        ),
                        child: Row(
                          children: [

                            SizedBox(
                              width: 100,
                              child: Text(
                                'MONTH',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF65758E),
                                ),
                              ),
                            ),

                            SizedBox(
                              width: 145,
                              child: Text(
                                'OPENING BALANCE',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF65758E),
                                ),
                              ),
                            ),

                            Expanded(
                              child: Text(
                                'PRINCIPAL PAID',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF65758E),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Rows
                      ...getAmortizationSchedule()
                          .where((row) {
                        if (amortizationSearch.isEmpty) {
                          return true;
                        }

                        return 'Month ${row['month']}'
                            .toLowerCase()
                            .contains(
                          amortizationSearch.toLowerCase(),
                        );
                      })
                          .skip((amortizationPage - 1) * 12)
                          .take(12)
                          .map((row) {

                        return Container(
                          height: 79,
                          padding: EdgeInsets.symmetric(horizontal: 14),
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                color: Color(0xFFEAF0F6),
                              ),
                            ),
                          ),
                          child: Row(
                            children: [

                              Expanded(
                                flex: 2,
                                child: FittedBox(
                                  alignment: Alignment.centerLeft,
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    'Month ${row['month']}',
                                    maxLines: 1,
                                    softWrap: false,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF253044),
                                    ),
                                  ),
                                ),
                              ),

                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: FittedBox(
                                    alignment: Alignment.centerLeft,
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      '₹${row['openingBalance'].toStringAsFixed(0)}',
                                      maxLines: 1,
                                      softWrap: false,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF53627A),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: FittedBox(
                                    alignment: Alignment.centerLeft,
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      '+₹${row['principalPaid'].toStringAsFixed(0)}',
                                      maxLines: 1,
                                      softWrap: false,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF16A05D),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),

                      SizedBox(height: 20),

                      // Page information
                      Builder(
                        builder: (context) {

                          int totalRows = getAmortizationSchedule()
                              .where((row) {
                            if (amortizationSearch.isEmpty) {
                              return true;
                            }

                            return 'Month ${row['month']}'
                                .toLowerCase()
                                .contains(
                              amortizationSearch.toLowerCase(),
                            );
                          })
                              .length;

                          int totalPages =
                          (totalRows / 12).ceil();

                          if (totalPages == 0) {
                            totalPages = 1;
                          }

                          if (amortizationPage > totalPages) {
                            amortizationPage = totalPages;
                          }

                          return Column(
                            children: [

                              Text(
                                'Page $amortizationPage of $totalPages • $totalRows rows',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF687993),
                                ),
                              ),

                              SizedBox(height: 18),

                              // Pagination
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  // Previous
                                  SizedBox(
                                    width: 30,
                                    height: 36,
                                    child: IconButton(
                                      padding: EdgeInsets.zero,
                                      onPressed: amortizationPage > 1
                                          ? () {
                                        setState(() {
                                          amortizationPage--;
                                        });
                                      }
                                          : null,
                                      icon: Icon(
                                        Icons.chevron_left,
                                        size: 22,
                                      ),
                                      color: Color(0xFF8A9AB2),
                                    ),
                                  ),

                                  // Page numbers
                                  ...List.generate(
                                    totalPages > 5 ? 5 : totalPages,
                                        (index) {
                                      int pageNumber = index + 1;

                                      bool selected =
                                          amortizationPage == pageNumber;

                                      return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            amortizationPage = pageNumber;
                                          });
                                        },
                                        child: Container(
                                          width: 36,
                                          height: 36,
                                          margin: EdgeInsets.symmetric(
                                            horizontal: 3,
                                          ),
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: selected
                                                ? Color(0xFF0755D9)
                                                : Colors.white,
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: selected
                                                  ? Color(0xFF0755D9)
                                                  : Color(0xFFDCE4EF),
                                            ),
                                          ),
                                          child: Text(
                                            '$pageNumber',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: selected
                                                  ? Colors.white
                                                  : Color(0xFF53627A),
                                              fontWeight: selected
                                                  ? FontWeight.bold
                                                  : FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),

                                  // Next
                                  SizedBox(
                                    width: 30,
                                    height: 36,
                                    child: IconButton(
                                      padding: EdgeInsets.zero,
                                      onPressed:
                                      amortizationPage < totalPages
                                          ? () {
                                        setState(() {
                                          amortizationPage++;
                                        });
                                      }
                                          : null,
                                      icon: Icon(
                                        Icons.chevron_right,
                                        size: 22,
                                      ),
                                      color: Color(0xFF53627A),
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 14),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 18,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFEFF3FF),
                    border: Border.all(
                      color: Color(0xFFD2E0FF),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Icon(
                        Icons.info_outline,
                        size: 25,
                        color: Color(0xFF0755D9),
                      ),

                      SizedBox(width: 16),

                      Expanded(
                        child: Text(
                          'All calculations are estimates. Actual returns may '
                              'vary based on bank policies.',
                          style: TextStyle(
                            fontSize: 14,
                            height: 1.5,
                            color: Color(0xFF173B87),
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
    ],
  ),
),
    );

  }
}
class LoanBalancePainter extends CustomPainter {
  final double loanAmount;
  final double interestRate;
  final int tenure;

  LoanBalancePainter({
    required this.loanAmount,
    required this.interestRate,
    required this.tenure,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final double left = 36;
    final double top = 8;
    final double right = 4;
    final double bottom = 24;

    final double chartWidth =
        size.width - left - right;

    final double chartHeight =
        size.height - top - bottom;

    final Paint gridPaint = Paint()
      ..color = Color(0xFFE9EDF4)
      ..strokeWidth = 1;

    final Paint linePaint = Paint()
      ..color = Color(0xFF0755D9)
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    final Paint fillPaint = Paint()
      ..color = Color(0xFFDCE7FF)
      ..style = PaintingStyle.fill;

    // Horizontal grid lines
    for (int i = 0; i <= 4; i++) {
      double y =
          top + (chartHeight * i / 4);

      canvas.drawLine(
        Offset(left, y),
        Offset(size.width - right, y),
        gridPaint,
      );

      String label =
          '${100 - (i * 25)}%';

      final textPainter = TextPainter(
        text: TextSpan(
          text: label,
          style: TextStyle(
            fontSize: 9,
            color: Color(0xFF687386),
          ),
        ),
        textDirection: TextDirection.ltr,
      );

      textPainter.layout();

      textPainter.paint(
        canvas,
        Offset(
          0,
          y - textPainter.height / 2,
        ),
      );
    }

    // Curve
    Path curve = Path();

    int points = 40;

    for (int i = 0; i <= points; i++) {
      double progress = i / points;

      double balanceRatio =
      pow(1 - progress, 1.55).toDouble();

      double x =
          left + chartWidth * progress;

      double y =
          top +
              chartHeight * (1 - balanceRatio);

      if (i == 0) {
        curve.moveTo(x, y);
      } else {
        curve.lineTo(x, y);
      }
    }

    // Filled area
    Path fillPath = Path.from(curve);

    fillPath.lineTo(
      left + chartWidth,
      top + chartHeight,
    );

    fillPath.lineTo(
      left,
      top + chartHeight,
    );

    fillPath.close();

    canvas.drawPath(
      fillPath,
      fillPaint,
    );

    // Blue curve
    canvas.drawPath(
      curve,
      linePaint,
    );

    // X-axis labels
    List<String> labels = [
      'Mo 0',
      'Mo 30',
      'Mo 60',
      'Mo 90',
      'Mo ${tenure > 0 ? tenure : 120}',
    ];

    for (int i = 0; i < labels.length; i++) {
      double x =
          left +
              chartWidth * i / 4;

      final textPainter = TextPainter(
        text: TextSpan(
          text: labels[i],
          style: TextStyle(
            fontSize: 8,
            color: Color(0xFF687386),
          ),
        ),
        textDirection: TextDirection.ltr,
      );

      textPainter.layout();

      textPainter.paint(
        canvas,
        Offset(
          x - textPainter.width / 2,
          top + chartHeight + 6,
        ),
      );
    }
  }

  @override
  bool shouldRepaint(
      covariant LoanBalancePainter oldDelegate,
      ) {
    return oldDelegate.loanAmount != loanAmount ||
        oldDelegate.interestRate != interestRate ||
        oldDelegate.tenure != tenure;
  }
}
