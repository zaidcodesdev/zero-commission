import 'package:flutter/material.dart';
import 'dart:math';

class FDCalculator extends StatefulWidget {
  const FDCalculator({super.key});

  @override
  State<FDCalculator> createState() => _FDCalculatorState();
}

class _FDCalculatorState extends State<FDCalculator> {

  Widget _fdIconBox(IconData icon) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: const Color(0xFFEAF1FF),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(
        icon,
        size: 17,
        color: const Color(0xFF1760F5),
      ),
    );
  }

  Widget _fdValueBox(String value) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 9,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFEFF4FF),
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: const Color(0xFFD3DEEF),
        ),
      ),
      child: Text(
        value,
        style: const TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.bold,
          color: Color(0xFF123B91),
        ),
      ),
    );
  }
  Widget _fdDropdownBox(
      String value, {
        VoidCallback? onTap,
      }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 11,
          vertical: 9,
        ),
        decoration: BoxDecoration(
          color: const Color(0xFFEFF4FF),
          borderRadius: BorderRadius.circular(7),
          border: Border.all(
            color: const Color(0xFFD3DEEF),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [

            Text(
              value,
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: Color(0xFF123B91),
              ),
            ),

            const SizedBox(width: 10),

            const Icon(
              Icons.keyboard_arrow_down,
              size: 16,
              color: Color(0xFF123B91),
            ),
          ],
        ),
      ),
    );
  }
  double depositAmount = 500000;
  double interestRate = 7.5;
  int tenureYears = 5;
  String compoundingFrequency = 'Quarterly';
  String depositType = 'Regular FD';
  DateTime maturityDate = DateTime.now();

  double calculatedInterestRate = 7.5;

  double maturityAmount = 724974;
  double totalInterest = 224974;

  void _calculateFD() {
    double rate = double.parse(
      interestRate.toStringAsFixed(1),
    );

    if (depositType == 'Senior Citizen FD') {
      rate = rate + 0.5;
    }

    int frequency = 4;

    if (compoundingFrequency == 'Yearly') {
      frequency = 1;
    } else if (compoundingFrequency == 'Half-Yearly') {
      frequency = 2;
    } else if (compoundingFrequency == 'Quarterly') {
      frequency = 4;
    } else if (compoundingFrequency == 'Monthly') {
      frequency = 12;
    }

    double maturity =
        depositAmount *
            pow(
              1 + (rate / 100 / frequency),
              frequency * tenureYears,
            );
    DateTime today = DateTime.now();

    DateTime calculatedMaturityDate = DateTime(
      today.year + tenureYears,
      today.month,
      today.day,
    );

    setState(() {
      maturityAmount = maturity;
      totalInterest = maturity - depositAmount;
      maturityDate = calculatedMaturityDate;
    });
  }

  @override
  void initState() {
    super.initState();

    _calculateFD();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF5F7FB),
        elevation: 0,

        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 18,
            color: Color(0xFF182235),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        centerTitle: true,

        title: const Text(
          'FD Calculator',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF182235),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            // FD HERO SECTION
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 10,
              ),
              child: SizedBox(
                width: double.infinity,
                height: 170,
                child: Stack(
                  children: [

                    // TEXT
                    Positioned(
                      left: 0,
                      top: 5,
                      right: 125,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            'Calculate Your',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF06245F),
                            ),
                          ),

                          Text(
                            'Fixed Deposit',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1759F5),
                            ),
                          ),

                          Text(
                            'Returns',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF06245F),
                            ),
                          ),

                          SizedBox(height: 10),

                          Text(
                            'Plan your savings better with our FD '
                                'calculator. See your maturity amount '
                                'and interest earnings instantly.',
                            style: TextStyle(
                              fontSize: 13,
                              height: 1.45,
                              color: Color(0xFF596273),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // YOUR FD IMAGE
                    Positioned(
                      right: -5,
                      top: 5,
                      child: Image.asset(
                        'assets/images/fd_calculator.png',
                        width: 135,
                        height: 150,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 10),
            SizedBox(height: 8),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // DEPOSIT AMOUNT
                    Row(
                      children: [

                        _fdIconBox(Icons.currency_rupee),

                        const SizedBox(width: 10),

                        const Expanded(
                          child: Text(
                            'Deposit Amount',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF263449),
                            ),
                          ),
                        ),

                        _fdValueBox(
                          '₹ ${depositAmount.toStringAsFixed(0)}',
                        ),
                      ],
                    ),

                    const SizedBox(height: 18),

                    // DEPOSIT AMOUNT SLIDER
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        trackHeight: 3,
                        thumbShape: const RoundSliderThumbShape(
                          enabledThumbRadius: 6,
                        ),
                        overlayShape: SliderComponentShape.noOverlay,
                        activeTrackColor: const Color(0xFF1760F5),
                        inactiveTrackColor: const Color(0xFFE1E5EC),
                        thumbColor: const Color(0xFF1760F5),
                      ),
                      child:Slider(
                        value: depositAmount,
                        min: 1000,
                        max: 10000000,
                        onChanged: (value) {
                          setState(() {
                            depositAmount = value;
                          });

                          _calculateFD();
                        },
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [

                        Text(
                          '₹1,000',
                          style: TextStyle(
                            fontSize: 8,
                            color: Color(0xFF9AA2B1),
                          ),
                        ),

                        Text(
                          '₹1,00,00,000+',
                          style: TextStyle(
                            fontSize: 8,
                            color: Color(0xFF9AA2B1),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 24),

                    // INTEREST RATE
                    Row(
                      children: [

                        _fdIconBox(Icons.percent),

                        const SizedBox(width: 10),

                        const Expanded(
                          child: Text(
                            'Interest Rate (%\np.a.)',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF263449),
                            ),
                          ),
                        ),

                        _fdValueBox(
                          '${interestRate.toStringAsFixed(1)} %',
                        ),
                      ],
                    ),

                    const SizedBox(height: 18),

                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        trackHeight: 3,
                        thumbShape: const RoundSliderThumbShape(
                          enabledThumbRadius: 6,
                        ),
                        overlayShape: SliderComponentShape.noOverlay,
                        activeTrackColor: const Color(0xFF1760F5),
                        inactiveTrackColor: const Color(0xFFE1E5EC),
                        thumbColor: const Color(0xFF1760F5),
                      ),
                      child:Slider(
                        value: interestRate,
                        min: 1,
                        max: 15,
                        onChanged: (value) {
                          setState(() {
                            interestRate = value;
                          });

                          _calculateFD();
                        },
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [

                        Text(
                          '1%',
                          style: TextStyle(
                            fontSize: 8,
                            color: Color(0xFF9AA2B1),
                          ),
                        ),

                        Text(
                          '15%',
                          style: TextStyle(
                            fontSize: 8,
                            color: Color(0xFF9AA2B1),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 24),

                    // TENURE
                    Row(
                      children: [

                        _fdIconBox(Icons.calendar_today_outlined),

                        const SizedBox(width: 10),

                        const Expanded(
                          child: Text(
                            'Tenure',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF263449),
                            ),
                          ),
                        ),

                        _fdDropdownBox(
                          '$tenureYears Years',
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                final options = List.generate(
                                  10,
                                      (index) => index + 1,
                                );

                                return SafeArea(
                                  child: ListView(
                                    shrinkWrap: true,
                                    children: options.map((year) {
                                      return ListTile(
                                        title: Text('$year Year${year == 1 ? '' : 's'}'),
                                        trailing: tenureYears == year
                                            ? const Icon(
                                          Icons.check,
                                          color: Color(0xFF1760F5),
                                        )
                                            : null,
                                        onTap: () {
                                          setState(() {
                                            tenureYears = year;
                                          });

                                          _calculateFD();

                                          Navigator.pop(context);
                                        },
                                      );
                                    }).toList(),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),

                    const SizedBox(height: 18),

                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        trackHeight: 3,
                        thumbShape: const RoundSliderThumbShape(
                          enabledThumbRadius: 6,
                        ),
                        overlayShape: SliderComponentShape.noOverlay,
                        activeTrackColor: const Color(0xFF1760F5),
                        inactiveTrackColor: const Color(0xFFE1E5EC),
                        thumbColor: const Color(0xFF1760F5),
                      ),
                      child:Slider(
                        value: tenureYears.toDouble(),
                        min: 1,
                        max: 10,
                        divisions: 9,
                        onChanged: (value) {
                          setState(() {
                            tenureYears = value.round();
                          });

                          _calculateFD();
                        },
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [

                        Text(
                          '1 Year',
                          style: TextStyle(
                            fontSize: 8,
                            color: Color(0xFF9AA2B1),
                          ),
                        ),

                        Text(
                          '10 Years',
                          style: TextStyle(
                            fontSize: 8,
                            color: Color(0xFF9AA2B1),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 24),

                    // COMPOUNDING FREQUENCY
                    Row(
                      children: [

                        _fdIconBox(Icons.sync),

                        const SizedBox(width: 10),

                        const Expanded(
                          child: Text(
                            'Compounding\nFrequency',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF263449),
                            ),
                          ),
                        ),

                        _fdDropdownBox(
                          compoundingFrequency,
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                final options = [
                                  'Yearly',
                                  'Half-Yearly',
                                  'Quarterly',
                                  'Monthly',
                                ];

                                return SafeArea(
                                  child: ListView(
                                    shrinkWrap: true,
                                    children: options.map((option) {
                                      return ListTile(
                                        title: Text(option),
                                        trailing: compoundingFrequency == option
                                            ? const Icon(
                                          Icons.check,
                                          color: Color(0xFF1760F5),
                                        )
                                            : null,
                                        onTap: () {
                                          setState(() {
                                            compoundingFrequency = option;
                                          });

                                          _calculateFD();

                                          Navigator.pop(context);
                                        },
                                      );
                                    }).toList(),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // DEPOSIT TYPE
                    Row(
                      children: [

                        _fdIconBox(Icons.account_balance_outlined),

                        const SizedBox(width: 10),

                        const Expanded(
                          child: Text(
                            'Deposit Type',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF263449),
                            ),
                          ),
                        ),

                        _fdDropdownBox(
                          depositType,
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                final options = [
                                  'Regular FD',
                                  'Senior Citizen FD',
                                ];

                                return SafeArea(
                                  child: ListView(
                                    shrinkWrap: true,
                                    children: options.map((option) {
                                      return ListTile(
                                        title: Text(option),
                                        trailing: depositType == option
                                            ? const Icon(
                                          Icons.check,
                                          color: Color(0xFF1760F5),
                                        )
                                            : null,
                                        onTap: () {
                                          setState(() {
                                            depositType = option;
                                          });

                                          _calculateFD();

                                          Navigator.pop(context);
                                        },
                                      );
                                    }).toList(),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // DID YOU KNOW
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFFEFF4FF),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: const Color(0xFFD7E4FF),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(
                            width: 32,
                            height: 32,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.lightbulb_outline,
                              size: 18,
                              color: Color(0xFF1760F5),
                            ),
                          ),

                          const SizedBox(width: 10),

                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  'Did You Know?',
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF0755D9),
                                  ),
                                ),

                                SizedBox(height: 4),

                                Text(
                                  'Quarterly compounding can earn you '
                                      'higher returns compared to annual '
                                      'compounding.',
                                  style: TextStyle(
                                    fontSize: 9,
                                    height: 1.35,
                                    color: Color(0xFF596273),
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

            const SizedBox(height: 20),
            _fdResultSection(),
            SizedBox(height: 28,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: [
                  Expanded(
                    child: _fdFeatureItem(
                      icon: Icons.lock_open_outlined,
                      title: '100% Secure',
                      description: 'Invest with RBI-regulated banks & NBFCs',
                    ),
                  ),

                  Expanded(
                    child: _fdFeatureItem(
                      icon: Icons.trending_up,
                      title: 'Best Interest Rates',
                      description: 'Compare & choose from top FD schemes',
                    ),
                  ),

                  Expanded(
                    child: _fdFeatureItem(
                      icon: Icons.calendar_month_outlined,
                      title: 'Flexible Tenure',
                      description: 'Choose tenure from 7 days to 10 years',
                    ),
                  ),

                  Expanded(
                    child: _fdFeatureItem(
                      icon: Icons.show_chart,
                      title: 'Assured Returns',
                      description: 'Guaranteed returns with zero market risk',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 14,
                ),
                decoration: BoxDecoration(
                  color: Color(0xFFEFF4FF),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.info_outline,
                      size: 18,
                      color: Color(0xFF1760F5),
                    ),

                    SizedBox(width: 12),

                    Expanded(
                      child: Text(
                        'All calculations are estimates. Actual returns may vary based on bank policies.',
                        style: TextStyle(
                          fontSize: 13,
                          height: 1.35,
                          color: Color(0xFF174DB8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25,)
          ],
        ),
      ),
    );
  }
  Widget _fdResultSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(24, 22, 24, 22),
        decoration: BoxDecoration(
          color: Color(0xFF0D2558),
          borderRadius: BorderRadius.circular(28),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Maturity Summary',
              style: TextStyle(
                fontSize: 11,
                color: Color(0xFFB9C8EA),
              ),
            ),
            SizedBox(height: 8),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Maturity Amount',
                        style: TextStyle(
                          fontSize: 9,
                          color: Color(0xFFB9C8EA),
                        ),
                      ),

                      SizedBox(height: 3),

                      Text(
                        '₹ ${maturityAmount.toStringAsFixed(0)}',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 12,),
                      Text(
                        'Total Interest Earned',
                        style: TextStyle(
                          fontSize: 9,
                          color: Color(0xFFB9C8EA),
                        ),
                      ),

                      SizedBox(height: 3),

                      Text(
                        '₹ ${totalInterest.toStringAsFixed(0)}',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      SizedBox(height: 4),

                      Text(
                        '(${((totalInterest / maturityAmount) * 100).toStringAsFixed(2)}%)',
                        style: TextStyle(
                          fontSize: 9,
                          color: Color(0xFFB9C8EA),
                        ),
                      ),
                    ],
                  ),
                ),

                Image.asset(
                  'assets/images/fd_calculator_result_logo.png',
                  width: 150,
                  height: 150,
                  fit: BoxFit.contain,
                ),
              ],
            ),


            SizedBox(height: 12),





            Center(
              child: SizedBox(
                width: 145,
                height: 145,
                child: CustomPaint(
                  painter: _FDDonutPainter(
                    principalAmount: depositAmount,
                    totalInterest: totalInterest,
                    maturityAmount: maturityAmount,
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),

            Row(
              children: [
                Container(
                  width: 7,
                  height: 7,
                  decoration: BoxDecoration(
                    color: Color(0xFF62A8FF),
                    shape: BoxShape.circle,
                  ),
                ),

                SizedBox(width: 7),

                Expanded(
                  child: Text(
                    'Principal Amount',
                    style: TextStyle(
                      fontSize: 8,
                      color: Color(0xFFB9C8EA),
                    ),
                  ),
                ),

                Text(
                  '₹ ${depositAmount.toStringAsFixed(0)}',
                  style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 6),

            Row(
              children: [
                Container(
                  width: 7,
                  height: 7,
                  decoration: BoxDecoration(
                    color: Color(0xFFC56CFF),
                    shape: BoxShape.circle,
                  ),
                ),

                SizedBox(width: 7),

                Expanded(
                  child: Text(
                    'Total Interest',
                    style: TextStyle(
                      fontSize: 8,
                      color: Color(0xFFB9C8EA),
                    ),
                  ),
                ),

                Text(
                  '₹ ${totalInterest.toStringAsFixed(0)}',
                  style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 18),

            Container(
              width: double.infinity,
              height: 1,
              color: Color(0xFF203A6D),
            ),

            SizedBox(height: 16),
            _fdResultRow(
              'Deposit Amount',
              '₹ ${depositAmount.toStringAsFixed(0)}',
              Color(0xFF62A8FF),
            ),

            SizedBox(height: 12),
            _fdResultRow(
              'Interest Rate (p.a.)',
              '${interestRate.toStringAsFixed(1)}%',
              Color(0xFF62A8FF),
            ),

            SizedBox(height: 12),
            _fdResultRow(
              'Tenure',
              '$tenureYears Years',
              Color(0xFF4EDB8A),
            ),

            SizedBox(height: 12),
            _fdResultRow(
              'Compounding Frequency',
              'Quarterly',
              Color(0xFFC56CFF),
            ),

            SizedBox(height: 12),
            _fdResultRow(
              'Maturity Date',
              '${maturityDate.day} ${_monthName(maturityDate.month)} ${maturityDate.year}',
              Color(0xFFC56CFF),
            ),

            SizedBox(height: 18),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: Color(0xFF233D70),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: Color(0xFF29477D),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.shield_outlined,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),

                  SizedBox(width: 10),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your FD is completely safe and secure.',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),

                        SizedBox(height: 4),

                        Text(
                          'We partner with RBI-regulated banks & NBFCs.',
                          style: TextStyle(
                            fontSize: 8,
                            height: 1.25,
                            color: Color(0xFFB9C8EA),
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

  Widget _fdResultRow(
      String title,
      String value,
      Color dotColor,
      ) {
    return Row(
      children: [
        Container(
          width: 5,
          height: 5,
          decoration: BoxDecoration(
            color: dotColor,
            shape: BoxShape.circle,
          ),
        ),

        SizedBox(width: 7),

        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 8,
              color: Color(0xFFB9C8EA),
            ),
          ),
        ),

        Text(
          value,
          style: TextStyle(
            fontSize: 8,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
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
  Widget _fdFeatureItem({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Column(
      children: [
        Container(
          width: 62,
          height: 62,
          decoration: BoxDecoration(
            color: Color(0xFFF0F5FF),
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            size: 27,
            color: Color(0xFF1760F5),
          ),
        ),

        SizedBox(height: 12),

        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            color: Color(0xFF182235),
          ),
        ),

        SizedBox(height: 7),

        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 11,
            height: 1.4,
            color: Color(0xFF9AA5B5),
          ),
        ),
      ],
    );
  }

}

class _FDDonutPainter extends CustomPainter {
  final double principalAmount;
  final double totalInterest;
  final double maturityAmount;

  _FDDonutPainter({
    required this.principalAmount,
    required this.totalInterest,
    required this.maturityAmount,
  });

  String _formatAmount(double amount) {
    String value = amount.round().toString();

    if (value.length <= 3) {
      return value;
    }

    String lastThree = value.substring(value.length - 3);
    String remaining = value.substring(0, value.length - 3);

    List<String> parts = [];

    while (remaining.length > 2) {
      parts.insert(
        0,
        remaining.substring(remaining.length - 2),
      );

      remaining = remaining.substring(
        0,
        remaining.length - 2,
      );
    }

    if (remaining.isNotEmpty) {
      parts.insert(0, remaining);
    }

    return '${parts.join(',')},$lastThree';
  }

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(
      size.width / 2,
      size.height / 2,
    );

    final radius = size.width / 2 - 8;

    final principalPaint = Paint()
      ..color = Color(0xFF286FD1)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 17;

    final interestPaint = Paint()
      ..color = Color(0xFFC56CFF)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 17;

    final rect = Rect.fromCircle(
      center: center,
      radius: radius,
    );

    double total =
        principalAmount + totalInterest;

    double principalAngle =
        (principalAmount / total) * 6.283185;

    double interestAngle =
        (totalInterest / total) * 6.283185;

    canvas.drawArc(
      rect,
      -1.57,
      principalAngle,
      false,
      principalPaint,
    );

    canvas.drawArc(
      rect,
      -1.57 + principalAngle,
      interestAngle,
      false,
      interestPaint,
    );

    // Center Amount
    final amountPainter = TextPainter(
      text: TextSpan(
        text: '₹${_formatAmount(maturityAmount)}',
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      textDirection: TextDirection.ltr,
    );

    amountPainter.layout();

    amountPainter.paint(
      canvas,
      Offset(
        center.dx - amountPainter.width / 2,
        center.dy - 7,
      ),
    );

    // Center "Amount"
    final labelPainter = TextPainter(
      text: TextSpan(
        text: 'Amount',
        style: TextStyle(
          fontSize: 7,
          color: Color(0xFFB9C8EA),
        ),
      ),
      textDirection: TextDirection.ltr,
    );

    labelPainter.layout();

    labelPainter.paint(
      canvas,
      Offset(
        center.dx - labelPainter.width / 2,
        center.dy + 6,
      ),
    );
  }

  @override
  bool shouldRepaint(
      CustomPainter oldDelegate,
      ) {
    return true;
  }

}