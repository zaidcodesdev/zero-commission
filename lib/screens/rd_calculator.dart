import 'package:flutter/material.dart';

class RDCalculator extends StatefulWidget {
  const RDCalculator({super.key});

  @override
  State<RDCalculator> createState() => _RDCalculatorState();
}

class _RDCalculatorState extends State<RDCalculator> {
  double monthlyDeposit = 5000;
  double interestRate = 6.5;
  double tenure = 5;
  String compoundingFrequency = 'Quarterly';

  DateTime depositStartDate = DateTime.now();

  double maturityAmount = 0;
  double totalInterest = 0;
  double totalDeposits = 0;
  bool rdCalculated = false;

  Widget _rdBenefit(
      IconData icon,
      String title,
      String subtitle,
      ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [

        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Color(0xFFEFF4FF),
            borderRadius: BorderRadius.circular(7),
          ),
          child: Icon(
            icon,
            size: 23,
            color: Color(0xFF0755D9),
          ),
        ),

        SizedBox(height: 6),

        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 9,
            height: 1.2,
            fontWeight: FontWeight.bold,
            color: Color(0xFF172033),
          ),
        ),

        SizedBox(height: 3),

        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 8,
            color: Color(0xFF8A94A6),
          ),
        ),
      ],
    );
  }

  Widget _rdSummaryRow(
      String title,
      String value,
      Color dotColor,
      ) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [

          Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              color: dotColor,
              shape: BoxShape.circle,
            ),
          ),

          SizedBox(width: 8),

          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 9,
                color: Color(0xFFB7C2DF),
              ),
            ),
          ),

          Text(
            value,
            style: TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
  String _monthName(int month) {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];

    return months[month - 1];
  }

  void calculateRD() {
    int months = (tenure * 12).round();

    double deposits = monthlyDeposit * months;

    double rate = interestRate / 100;

    double interest;

    if (compoundingFrequency == 'Monthly') {
      interest = deposits *
          rate *
          (months + 1) /
          24;
    } else if (compoundingFrequency == 'Quarterly') {
      interest = deposits *
          rate *
          (months + 1) /
          24;
    } else if (compoundingFrequency == 'Half-Yearly') {
      interest = deposits *
          rate *
          (months + 1) /
          24;
    } else {
      interest = deposits *
          rate *
          (months + 1) /
          24;
    }

    setState(() {
      totalDeposits = deposits;
      totalInterest = interest;
      maturityAmount = deposits + interest;
      rdCalculated = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F7FB),

      appBar: AppBar(
        backgroundColor: Color(0xFFF5F7FB),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'RD Calculator',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Color(0xFF667085),
          ),
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 22),
                child: SizedBox(
                  width: double.infinity,
                  height: 170,
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
                              'Plan Your Future',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF172033),
                                height: 1.3
                              ),
                            ),
        
                            Text(
                              'with',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF172033),
                                height: 1.3
                              ),
                            ),
        
                            Text(
                              'Recurring Deposits',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0755D9),
                                height: 1.3
                              ),
                            ),
        
                            SizedBox(height: 10),
        
                            Text(
                              'Calculate your returns, maturity amount '
                                  'and interest earned with our simple RD calculator.',
                              style: TextStyle(
                                fontSize: 15,
                                height: 1.4,
                                color: Color(0xFF737B8C),
                              ),
                            ),
                          ],
                        ),
                      ),
        
                      // RD Image
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Image.asset(
                          'assets/images/rd_calculator_calculator_logo.png',
                          width: 135,
                          height: 170,
                          fit: BoxFit.contain,
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
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xFFE1E7F0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 3,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
        
                      // Heading
                      Text(
                        'Enter RD Details',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF172033),
                        ),
                      ),
        
                      SizedBox(height: 18),
        
                      // Monthly Deposit Amount
                      Row(
                        children: [
                          Container(
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                              color: Color(0xFFEFF4FF),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Icon(
                              Icons.currency_rupee,
                              size: 13,
                              color: Color(0xFF0755D9),
                            ),
                          ),
        
                          SizedBox(width: 7),
        
                          Expanded(
                            child: Text(
                              'Monthly Deposit Amount',
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xFF344054),
                              ),
                            ),
                          ),
        
                          Container(
                            width: 72,
                            height: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0xFFF7F9FC),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              '₹ ${monthlyDeposit.toStringAsFixed(0)}',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0755D9),
                              ),
                            ),
                          ),
                        ],
                      ),
        
                      SizedBox(height: 6),
        
                      // Monthly Deposit Slider
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          trackHeight: 3,
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 5,
                          ),
                          overlayShape: RoundSliderOverlayShape(
                            overlayRadius: 10,
                          ),
                          activeTrackColor: Color(0xFF0755D9),
                          inactiveTrackColor: Color(0xFFE3E8F0),
                          thumbColor: Color(0xFF0755D9),
                        ),
                        child: Slider(
                          value: monthlyDeposit,
                          min: 100,
                          max: 100000,
                          onChanged: (value) {
                            setState(() {
                              monthlyDeposit = value;
                            });
                          },
                        ),
                      ),
        
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '₹100',
                            style: TextStyle(
                              fontSize: 8,
                              color: Color(0xFF98A2B3),
                            ),
                          ),
                          Text(
                            '₹1,00,000+',
                            style: TextStyle(
                              fontSize: 8,
                              color: Color(0xFF98A2B3),
                            ),
                          ),
                        ],
                      ),
        
                      SizedBox(height: 18),
        
                      // Interest Rate
                      Row(
                        children: [
                          Container(
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                              color: Color(0xFFEFF4FF),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Icon(
                              Icons.bar_chart,
                              size: 13,
                              color: Color(0xFF0755D9),
                            ),
                          ),
        
                          SizedBox(width: 7),
        
                          Expanded(
                            child: Text(
                              'Interest Rate (% p.a.)',
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xFF344054),
                              ),
                            ),
                          ),
        
                          Container(
                            width: 72,
                            height: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0xFFF7F9FC),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              '${interestRate.toStringAsFixed(1)} %',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0755D9),
                              ),
                            ),
                          ),
                        ],
                      ),
        
                      SizedBox(height: 6),
        
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          trackHeight: 3,
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 5,
                          ),
                          overlayShape: RoundSliderOverlayShape(
                            overlayRadius: 10,
                          ),
                          activeTrackColor: Color(0xFF0755D9),
                          inactiveTrackColor: Color(0xFFE3E8F0),
                          thumbColor: Color(0xFF0755D9),
                        ),
                        child:Slider(
                          value: interestRate,
                          min: 1,
                          max: 12,
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
                              color: Color(0xFF98A2B3),
                            ),
                          ),
                          Text(
                            '12%',
                            style: TextStyle(
                              fontSize: 8,
                              color: Color(0xFF98A2B3),
                            ),
                          ),
                        ],
                      ),
        
                      SizedBox(height: 18),
        
                      // Tenure
                      Row(
                        children: [
                          Container(
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                              color: Color(0xFFEFF4FF),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Icon(
                              Icons.calendar_month_outlined,
                              size: 13,
                              color: Color(0xFF0755D9),
                            ),
                          ),
        
                          SizedBox(width: 7),
        
                          Expanded(
                            child: Text(
                              'Tenure',
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xFF344054),
                              ),
                            ),
                          ),
        
                          Container(
                            width: 96,
                            height: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0xFFF7F9FC),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '${tenure == tenure.toInt() ? tenure.toInt() : tenure.toStringAsFixed(1)} Years',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Color(0xFF344054),
                                  ),
                                ),
                                SizedBox(width: 14),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 14,
                                  color: Color(0xFF7A879A),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
        
                      SizedBox(height: 6),
        
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          trackHeight: 3,
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 5,
                          ),
                          overlayShape: RoundSliderOverlayShape(
                            overlayRadius: 10,
                          ),
                          activeTrackColor: Color(0xFF0755D9),
                          inactiveTrackColor: Color(0xFFE3E8F0),
                          thumbColor: Color(0xFF0755D9),
                        ),
                        child: Slider(
                          value: tenure,
                          min: 0.5,
                          max: 10,
                          divisions: 19,
                          onChanged: (value) {
                            setState(() {
                              tenure = value;
                            });
                          },
                        ),
                      ),
        
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '6 Months',
                            style: TextStyle(
                              fontSize: 8,
                              color: Color(0xFF98A2B3),
                            ),
                          ),
                          Text(
                            '10 Years',
                            style: TextStyle(
                              fontSize: 8,
                              color: Color(0xFF98A2B3),
                            ),
                          ),
                        ],
                      ),
        
                      SizedBox(height: 18),
        
                      // Compounding Frequency
                      Row(
                        children: [
                          Container(
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                              color: Color(0xFFEFF4FF),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Icon(
                              Icons.sync,
                              size: 13,
                              color: Color(0xFF0755D9),
                            ),
                          ),
        
                          SizedBox(width: 7),
        
                          Expanded(
                            child: Row(
                              children: [
                                Text(
                                  'Compounding',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFF344054),
                                  ),
                                ),
                                SizedBox(width: 4),
                                Text(
                                  'Frequency',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFF344054),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.info_outline,
                                  size: 11,
                                  color: Color(0xFF98A2B3),
                                ),
                              ],
                            ),
                          ),
        
                          DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: compoundingFrequency,
                              isDense: true,
                              items: [
                                'Monthly',
                                'Quarterly',
                                'Half-Yearly',
                                'Yearly',
                              ].map((frequency) {
                                return DropdownMenuItem<String>(
                                  value: frequency,
                                  child: Text(
                                    frequency,
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color(0xFF344054),
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (value) {
                                if (value != null) {
                                  setState(() {
                                    compoundingFrequency = value;
                                  });
                                }
                              },
                            ),
                          ),
                        ],
                      ),
        
                      SizedBox(height: 12),
        
                      // Deposit Starting Date
                      Row(
                        children: [
                          Container(
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                              color: Color(0xFFEFF4FF),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Icon(
                              Icons.calendar_month_outlined,
                              size: 13,
                              color: Color(0xFF0755D9),
                            ),
                          ),
        
                          SizedBox(width: 7),
        
                          Expanded(
                            child: Text(
                              'Deposit Starting Date',
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xFF344054),
                              ),
                            ),
                          ),
        
                          GestureDetector(
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: depositStartDate,
                                firstDate: DateTime(2020),
                                lastDate: DateTime(2100),
                              );
        
                              if (pickedDate != null) {
                                setState(() {
                                  depositStartDate = pickedDate;
                                });
                              }
                            },
                            child: Container(
                              width: 110,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xFFF7F9FC),
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(
                                  color: Color(0xFFDCE3ED),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
        
                                  Text(
                                    '${depositStartDate.day.toString().padLeft(2, '0')}/'
                                        '${depositStartDate.month.toString().padLeft(2, '0')}/'
                                        '${depositStartDate.year}',
                                    style: TextStyle(
                                      fontSize: 9,
                                      color: Color(0xFF344054),
                                    ),
                                  ),
        
                                  SizedBox(width: 6),
        
                                  Icon(
                                    Icons.calendar_today_outlined,
                                    size: 11,
                                    color: Color(0xFF7A879A),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
        
                      SizedBox(height: 14),
        
                      // Did You Know
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xFFF4F8FF),
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(
                            color: Color(0xFFDCE8FF),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
        
                            Icon(
                              Icons.lightbulb_outline,
                              size: 19,
                              color: Color(0xFF172033),
                            ),
        
                            SizedBox(width: 8),
        
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
        
                                  Text(
                                    'Did You Know?',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF172033),
                                    ),
                                  ),
        
                                  SizedBox(height: 3),
        
                                  Text(
                                    'RD is a safe savings option that helps you build '
                                        'discipline and grow your money steadily over time.',
                                    style: TextStyle(
                                      fontSize: 11,
                                      height: 1.3,
                                      color: Color(0xFF667085),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
        
                      SizedBox(height: 14),
        
                      // Calculate RD Button
                      SizedBox(
                        width: double.infinity,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: calculateRD,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF0755D9),
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
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
                                'Calculate RD',
                                style: TextStyle(
                                  fontSize: 11,
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
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color(0xFF03154D),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
        
                        // MATURITY SUMMARY
                        Text(
                          'MATURITY SUMMARY',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                            color: Colors.white,
                          ),
                        ),
        
                        SizedBox(height: 16),
        
                        // Amount + Image
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
        
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
        
                                  Text(
                                    'Maturity Amount',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color(0xFFB7C2DF),
                                    ),
                                  ),
        
                                  SizedBox(height: 3),
        
                                  Text(
                                    '₹${maturityAmount.toStringAsFixed(0)}',
                                    style: TextStyle(
                                      fontSize: 27,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
        
                                  SizedBox(height: 4),
        
                                  Text(
                                    'Total Interest Earned',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color(0xFFB7C2DF),
                                    ),
                                  ),
        
                                  SizedBox(height: 2),
        
                                  Text(
                                    '₹${totalInterest.toStringAsFixed(0)}',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF55A8FF),
                                    ),
                                  ),
                                ],
                              ),
                            ),
        
                            Image.asset(
                              'assets/images/rd_calculator_piggy_logo.png',
                              width: 105,
                              height: 90,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
        
                        SizedBox(height: 14),
        
                        Divider(
                          color: Color(0xFF18306C),
                          height: 1,
                        ),
        
                        SizedBox(height: 10),
        
                        // Monthly Deposit
                        _rdSummaryRow(
                          'Monthly Deposit',
                          '₹${monthlyDeposit.toStringAsFixed(0)}',
                          Color(0xFF3287FF),
        
                        ),
        
                        // Total Deposits
                        _rdSummaryRow(
                          'Total Deposits',
                          '₹${totalDeposits.toStringAsFixed(0)}',
                          Color(0xFFA855F7),
                        ),
        
                        // Interest Rate
                        _rdSummaryRow(
                          'Interest Rate (p.a.)',
                          '${interestRate.toStringAsFixed(1)}%',
                          Color(0xFF20C878),
                        ),
        
                        // Tenure
                        _rdSummaryRow(
                          'Tenure',
                          '${tenure == tenure.toInt() ? tenure.toInt() : tenure.toStringAsFixed(1)} Years',
                          Color(0xFF20BFE8),
                        ),
        
                        // Compounding
                        _rdSummaryRow(
                          'Compounding Frequency',
                          compoundingFrequency,
                          Color(0xFFFF8A3D),
                        ),
        
                        // Maturity Date
                        _rdSummaryRow(
                          'Maturity Date',
                          '${depositStartDate.day} '
                              '${_monthName(depositStartDate.month)} '
                              '${depositStartDate.year + tenure.toInt()}',
                          Color(0xFF8C8CF5),
                        ),
        
                        SizedBox(height: 12),
        
                        // About RD
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(13),
                          decoration: BoxDecoration(
                            color: Color(0xFF0C225F),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
        
                              Container(
                                width: 34,
                                height: 34,
                                decoration: BoxDecoration(
                                  color: Color(0xFF263A70),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.info_outline,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
        
                              SizedBox(width: 10),
        
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
        
                                    Text(
                                      'About RD',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
        
                                    SizedBox(height: 4),
        
                                    Text(
                                      'Recurring Deposit (RD) helps you save a fixed '
                                          'amount regularly and earn assured returns with low risk.',
                                      style: TextStyle(
                                        fontSize: 10,
                                        height: 1.3,
                                        color: Color(0xFFB7C2DF),
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
        
        
              SizedBox(height: 16),
        
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 6,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xFFE5EAF1),
                    ),
                  ),
                  child: Row(
                    children: [
        
        
                         Expanded(
                          child: _rdBenefit(
                            Icons.verified_user_outlined,
                            'Safe & Secure',
                            'Assured returns',
                          ),
                        ),
        
        
                      Expanded(
                        child: _rdBenefit(
                          Icons.access_time_outlined,
                          'Disciplined\nSavings',
                          'Build the habit',
                        ),
                      ),
        
                      Expanded(
                        child: _rdBenefit(
                          Icons.trending_up_outlined,
                          'Better\nReturns',
                          'Earn higher',
                        ),
                      ),
        
                      Expanded(
                        child: _rdBenefit(
                          Icons.calendar_month_outlined,
                          'Flexible\nTenure',
                          '6m to 10y',
                        ),
                      ),
        
                      Expanded(
                        child: _rdBenefit(
                          Icons.currency_rupee,
                          'Small\nInvestments',
                          'Start at ₹100',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
        
        
              SizedBox(height: 16),
        
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 14,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFF7F9FC),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
        
                      Icon(
                        Icons.lock_open_outlined,
                        size: 18,
                        color: Color(0xFF8EA2C1),
                      ),
        
                      SizedBox(width: 10),
        
                      Expanded(
                        child: Text(
                          'All calculations are estimates. Actual returns may vary based on bank policies.',
                          style: TextStyle(
                            fontSize: 10,
                            height: 1.4,
                            color: Color(0xFF667085),
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