import 'package:flutter/material.dart';
import 'dart:math';

class SIPCalculator extends StatefulWidget {
  const SIPCalculator({super.key});

  @override
  State<SIPCalculator> createState() => _SIPCalculatorState();
}

class _SIPCalculatorState extends State<SIPCalculator> {
  double monthlyInvestment = 10000;
  double expectedReturn = 12;
  double investmentYears = 15;
  double stepUp = 0;

  Widget _sipFeatureItem({
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
            color: Color(0xFFEAF0FF),
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            size: 23,
            color: Color(0xFF0755D9),
          ),
        ),

        SizedBox(height: 11),

        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color(0xFF182235),
          ),
        ),

        SizedBox(height: 5),

        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 11,
            height: 1.2,
            color: Color(0xFF596273),
          ),
        ),
      ],
    );
  }

  Widget _sipResultBox(
      String title,
      String value,
      IconData icon,
      ) {
    return Container(
      height: 73,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color(0xFF102B6D),
        borderRadius: BorderRadius.circular(9),
        border: Border.all(
          color: Color(0xFF294684),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            children: [

              Icon(
                icon,
                size: 9,
                color: Color(0xFFB9C8EA),
              ),

              SizedBox(width: 4),

              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 6,
                    height: 1.1,
                    color: Color(0xFFB9C8EA),
                  ),
                ),
              ),
            ],
          ),

          Spacer(),

          Text(
            value,
            style: TextStyle(
              fontSize: 9,
              height: 1.25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  double totalInvested = 0;
  double estimatedReturns = 0;
  double futureValue = 0;

  double xirr = 0;
  double calculatedInvestmentYears = 15;
  double calculatedStepUp = 0;
  double calculatedExpectedReturn = 12;
  double calculatedMonthlyInvestment = 10000;

  final TextEditingController sipAmountController =
  TextEditingController(text: '10000');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F7FB),

      appBar: AppBar(
        backgroundColor: Color(0xFFF5F7FB),
        elevation: 0,

        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 18,
            color: Color(0xFF172033),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        title: Text(
          'SIP Calculator',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Color(0xFF172033),
          ),
        ),

        centerTitle: true,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
        
                SizedBox(height: 12),
        
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
        
                      // LEFT CONTENT
                      Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
        
                            Text(
                              'Plan Your Wealth with',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF173B91),
                                height: 1.1
                              ),
                            ),
        
                            Text(
                              'SIP',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0755D9),
                              ),
                            ),
        
                            SizedBox(height: 10),
        
                            Text(
                              'Calculate your SIP returns and '
                                  'build wealth step by step. Start small, '
                                  'grow big with the power of compounding.',
                              style: TextStyle(
                                fontSize: 13,
                                height: 1.5,
                                color: Color(0xFF667085),
                              ),
                            ),
                          ],
                        ),
                      ),
        
                      // RIGHT IMAGE
                      Expanded(
                        flex: 5,
                        child: Image.asset(
                          'assets/images/sip_calculator_logo.png',
                          width: 150,
                          height: 160,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
        
                SizedBox(height: 18),
        
                SizedBox(height: 30),
                SizedBox(height: 8),
        
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(14, 14, 14, 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
        
                      // ─────────────────────────────
                      // MONTHLY INVESTMENT
                      // ─────────────────────────────
        
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
        
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: const Color(0xFFEAF1FF),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: const Icon(
                              Icons.currency_rupee,
                              size: 16,
                              color: Color(0xFF0755D9),
                            ),
                          ),
        
                          const SizedBox(width: 9),
        
                          const Expanded(
                            child: Text(
                              'Monthly\nInvestment (SIP\nAmount)',
                              style: TextStyle(
                                fontSize: 11,
                                height: 1.35,
                                color: Color(0xFF263449),
                              ),
                            ),
                          ),
        
                          Container(
                            width: 84,
                            height: 34,
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF3F6FD),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: const Color(0xFFD0D9EB),
                              ),
                            ),
                            child: Row(
                              children: [
        
                                const Text(
                                  '₹',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFF0755D9),
                                  ),
                                ),
        
                                Expanded(
                                  child: TextField(
                                    controller: sipAmountController,
                                    keyboardType: TextInputType.number,
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0755D9),
                                    ),
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      isDense: true,
                                      contentPadding: EdgeInsets.zero,
                                    ),
                                    onChanged: (value) {
                                      monthlyInvestment =
                                          double.tryParse(value) ?? 0;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
        
                      const SizedBox(height: 7),
        
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          trackHeight: 3,
                          thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 7,
                          ),
                          overlayShape: const RoundSliderOverlayShape(
                            overlayRadius: 12,
                          ),
                        ),
                        child: Slider(
                          value: monthlyInvestment.clamp(500, 100000),
                          min: 500,
                          max: 100000,
                          activeColor: const Color(0xFF0755D9),
                          inactiveColor: const Color(0xFFDCE3FF),
                          onChanged: (value) {
                            setState(() {
                              monthlyInvestment = value;
                              sipAmountController.text =
                                  value.round().toString();
                            });
                          },
                        ),
                      ),
        
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            '₹500',
                            style: TextStyle(
                              fontSize: 8,
                              color: Color(0xFF667085),
                            ),
                          ),
                          Text(
                            '₹1,00,000+',
                            style: TextStyle(
                              fontSize: 8,
                              color: Color(0xFF667085),
                            ),
                          ),
                        ],
                      ),
        
                      const SizedBox(height: 22),
        
                      // ─────────────────────────────
                      // EXPECTED ANNUAL RETURN
                      // ─────────────────────────────
        
                      Row(
                        children: [
        
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: const Color(0xFFEAF1FF),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: const Icon(
                              Icons.trending_up,
                              size: 17,
                              color: Color(0xFF0755D9),
                            ),
                          ),
        
                          const SizedBox(width: 9),
        
                          const Expanded(
                            child: Text(
                              'Expected Annual\nReturn Rate (%)',
                              style: TextStyle(
                                fontSize: 11,
                                height: 1.35,
                                color: Color(0xFF263449),
                              ),
                            ),
                          ),
        
                          Container(
                            width: 62,
                            height: 34,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF3F6FD),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: const Color(0xFFD0D9EB),
                              ),
                            ),
                            child: Text(
                              '${expectedReturn.toStringAsFixed(2)}%',
                              style: const TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0755D9),
                              ),
                            ),
                          ),
                        ],
                      ),
        
                      const SizedBox(height: 7),
        
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          trackHeight: 3,
                          thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 7,
                          ),
                          overlayShape: const RoundSliderOverlayShape(
                            overlayRadius: 12,
                          ),
                        ),
                        child: Slider(
                          value: expectedReturn,
                          min: 1,
                          max: 30,
                          activeColor: const Color(0xFF0755D9),
                          inactiveColor: const Color(0xFFDCE3FF),
                          onChanged: (value) {
                            setState(() {
                              expectedReturn = value;
                            });
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
                              color: Color(0xFF667085),
                            ),
                          ),
                          Text(
                            '30%+',
                            style: TextStyle(
                              fontSize: 8,
                              color: Color(0xFF667085),
                            ),
                          ),
                        ],
                      ),
        
                      const SizedBox(height: 22),
        
                      // ─────────────────────────────
                      // INVESTMENT PERIOD
                      // ─────────────────────────────
        
                      Row(
                        children: [
        
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: const Color(0xFFEAF1FF),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: const Icon(
                              Icons.calendar_today_outlined,
                              size: 16,
                              color: Color(0xFF0755D9),
                            ),
                          ),
        
                          const SizedBox(width: 9),
        
                          const Expanded(
                            child: Text(
                              'Investment\nPeriod',
                              style: TextStyle(
                                fontSize: 11,
                                height: 1.35,
                                color: Color(0xFF263449),
                              ),
                            ),
                          ),
        
                          GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return SafeArea(
                                    child: SizedBox(
                                      height: MediaQuery.of(context).size.height * 0.65,
                                      child: ListView.builder(
                                          itemCount: 40,
                                          itemBuilder: (context, index) {
                                        final years = index + 1;
        
                                        return ListTile(
                                          title: Text(
                                            '$years Years',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFF263449),
                                            ),
                                          ),
                                          trailing: investmentYears == years
                                              ? Icon(
                                            Icons.check,
                                            color: Color(0xFF0755D9),
                                          )
                                              : null,
                                          onTap: () {
                                            setState(() {
                                              investmentYears = years.toDouble();
                                            });
        
                                            Navigator.pop(context);
                                          },
                                        );
                                      }),
                                    ),
                                  );
                                },
                              );
                            },
                            child: Container(
                              width: 84,
                              height: 50,
                              padding: EdgeInsets.symmetric(horizontal: 9),
                              decoration: BoxDecoration(
                                color: Color(0xFFF3F6FD),
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Color(0xFFD0D9EB),
                                ),
                              ),
                              child: Row(
                                children: [
        
                                  Expanded(
                                    child: Text(
                                      '${investmentYears.toStringAsFixed(0)}\nYears',
                                      style: TextStyle(
                                        fontSize: 10,
                                        height: 1.35,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0755D9),
                                      ),
                                    ),
                                  ),
        
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 15,
                                    color: Color(0xFF667085),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
        
                      const SizedBox(height: 5),
        
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          trackHeight: 3,
                          thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 7,
                          ),
                          overlayShape: const RoundSliderOverlayShape(
                            overlayRadius: 12,
                          ),
                        ),
                        child: Slider(
                          value: investmentYears,
                          min: 1,
                          max: 40,
                          activeColor: const Color(0xFF0755D9),
                          inactiveColor: const Color(0xFFDCE3FF),
                          onChanged: (value) {
                            setState(() {
                              investmentYears = value;
                            });
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
                              color: Color(0xFF667085),
                            ),
                          ),
                          Text(
                            '40+ Years',
                            style: TextStyle(
                              fontSize: 8,
                              color: Color(0xFF667085),
                            ),
                          ),
                        ],
                      ),
        
                      const SizedBox(height: 22),
        
                      // ─────────────────────────────
                      // STEP-UP
                      // ─────────────────────────────
        
                      Row(
                        children: [
        
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: const Color(0xFFEAF1FF),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: const Icon(
                              Icons.sync,
                              size: 17,
                              color: Color(0xFF0755D9),
                            ),
                          ),
        
                          const SizedBox(width: 9),
        
                          Expanded(
                            child: Row(
                              children: [
        
                                const Flexible(
                                  child: Text(
                                    'Step-up (Annual\nIncrease)',
                                    style: TextStyle(
                                      fontSize: 11,
                                      height: 1.35,
                                      color: Color(0xFF263449),
                                    ),
                                  ),
                                ),
        
                                const SizedBox(width: 3),
        
                                const Icon(
                                  Icons.info_outline,
                                  size: 11,
                                  color: Color(0xFF98A2B3),
                                ),
                              ],
                            ),
                          ),
        
                          Container(
                            width: 62,
                            height: 34,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF3F6FD),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: const Color(0xFFD0D9EB),
                              ),
                            ),
                            child: Text(
                              '${stepUp.toStringAsFixed(0)} %',
                              style: const TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0755D9),
                              ),
                            ),
                          ),
                        ],
                      ),
        
                      const SizedBox(height: 5),
        
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          trackHeight: 3,
                          thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 7,
                          ),
                          overlayShape: const RoundSliderOverlayShape(
                            overlayRadius: 12,
                          ),
                        ),
                        child: Slider(
                          value: stepUp,
                          min: 0,
                          max: 30,
                          activeColor: const Color(0xFF0755D9),
                          inactiveColor: const Color(0xFFDCE3FF),
                          onChanged: (value) {
                            setState(() {
                              stepUp = value;
                            });
                          },
                        ),
                      ),
        
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            '0%',
                            style: TextStyle(
                              fontSize: 8,
                              color: Color(0xFF667085),
                            ),
                          ),
                          Text(
                            '30%',
                            style: TextStyle(
                              fontSize: 8,
                              color: Color(0xFF667085),
                            ),
                          ),
                        ],
                      ),
        
                      const SizedBox(height: 18),
        
                      // ─────────────────────────────
                      // POWER OF COMPOUNDING
                      // ─────────────────────────────
        
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(11),
                        decoration: BoxDecoration(
                          color: const Color(0xFFEFF5FF),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
        
                            Container(
                              width: 24,
                              height: 24,
                              decoration: const BoxDecoration(
                                color: Color(0xFFDCEAFF),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.lightbulb_outline,
                                size: 14,
                                color: Color(0xFF0755D9),
                              ),
                            ),
        
                            const SizedBox(width: 8),
        
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
        
                                  Text(
                                    'Power of Compounding',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF172033),
                                    ),
                                  ),
        
                                  SizedBox(height: 3),
        
                                  Text(
                                    'The earlier you start, the more you '
                                        'benefit from compounding and the '
                                        'higher your wealth grows.',
                                    style: TextStyle(
                                      fontSize: 10,
                                      height: 1.4,
                                      color: Color(0xFF667085),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
        
                      const SizedBox(height: 16),
        
                      // ─────────────────────────────
                      // CALCULATE SIP BUTTON
                      // ─────────────────────────────
        
                      SizedBox(
                        width: double.infinity,
                        height: 42,
                        child: ElevatedButton(
                          onPressed: () {
                            double monthlyRate = expectedReturn / 12 / 100;
        
                            int totalMonths = (investmentYears * 12).round();
        
                            double calculatedFutureValue = 0;
                            double calculatedInvested = 0;
        
                            for (int month = 1; month <= totalMonths; month++) {
        
                              // Har saal SIP amount step-up ke according badhega
                              int yearNumber = (month - 1) ~/ 12;
        
                              double currentMonthlyInvestment =
                                  monthlyInvestment *
                                      pow(
                                        1 + (stepUp / 100),
                                        yearNumber,
                                      );
        
                              calculatedInvested += currentMonthlyInvestment;
        
                              // SIP amount ko remaining months ke liye grow karo
                              if (monthlyRate == 0) {
                                calculatedFutureValue += currentMonthlyInvestment;
                              } else {
                                int remainingMonths =
                                    totalMonths - month + 1;
        
                                calculatedFutureValue +=
                                    currentMonthlyInvestment *
                                        pow(
                                          1 + monthlyRate,
                                          remainingMonths,
                                        );
                              }
                            }
        
                            double calculatedReturns =
                                calculatedFutureValue - calculatedInvested;
        
                            setState(() {
                              futureValue = calculatedFutureValue;
                              totalInvested = calculatedInvested;
                              estimatedReturns = calculatedReturns;
                              xirr = expectedReturn;
        
                              calculatedInvestmentYears = investmentYears;
                              calculatedStepUp = stepUp;
                              calculatedExpectedReturn = expectedReturn;
                              calculatedMonthlyInvestment = monthlyInvestment;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF0755D9),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                          child: const Text(
                            'Calculate SIP',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        
                 SizedBox(height: 20),
                SizedBox(height: 16),
        
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(18, 18, 18, 14),
                  decoration: BoxDecoration(
                    color: Color(0xFF061B5A),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
        
                      // TOP ROW
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
        
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
        
                                Text(
                                  'ESTIMATED FUTURE VALUE',
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.7,
                                    color: Color(0xFFD1DBF5),
                                  ),
                                ),
        
                                SizedBox(height: 6),
        
                                Text(
                                  '₹ ${futureValue.toStringAsFixed(0)}',
                                  style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
        
                                SizedBox(height: 3),
        
                                Text(
                                  'In ${calculatedInvestmentYears.toStringAsFixed(0)} Years',
                                  style: TextStyle(
                                    fontSize: 9,
                                    color: Color(0xFFD1DBF5),
                                  ),
                                ),
                              ],
                            ),
                          ),
        
                          // YOUR SIP IMAGE
                          Image.asset(
                            'assets/images/sip_calculator_result_logo.png',
                            width: 82,
                            height: 70,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
        
                      SizedBox(height: 18),
        
                      // GRAPH
                      SizedBox(
                        width: double.infinity,
                        height: 145,
                        child:CustomPaint(
                          painter: SIPGraphPainter(
                            totalInvested: totalInvested,
                            futureValue: futureValue,
                            monthlyInvestment: calculatedMonthlyInvestment,
                            expectedReturn: calculatedExpectedReturn,
                            investmentYears: calculatedInvestmentYears,
                            stepUp: calculatedStepUp,
                          ),
                        ),
                      ),
        
                      SizedBox(height: 8),
        
                      // GRAPH YEARS
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(6, (index) {
                          final totalYears = investmentYears.round();
        
                          final year = index == 0
                              ? 0
                              : ((totalYears * index) / 5).round();
        
                          return Text(
                            '${year}Y',
                            style: TextStyle(
                              fontSize: 7,
                              color: Color(0xFF9EAFD8),
                            ),
                          );
                        }),
                      ),
        
                      SizedBox(height: 9),
        
                      // LEGEND
                      Row(
                        children: [
        
                          Container(
                            width: 6,
                            height: 6,
                            decoration: BoxDecoration(
                              color: Color(0xFF0755D9),
                              shape: BoxShape.circle,
                            ),
                          ),
        
                          SizedBox(width: 5),
        
                          Text(
                            'Invested Amount',
                            style: TextStyle(
                              fontSize: 8,
                              color: Color(0xFFD1DBF5),
                            ),
                          ),
        
                          SizedBox(width: 14),
        
                          Container(
                            width: 6,
                            height: 6,
                            decoration: BoxDecoration(
                              color: Color(0xFF62E7A3),
                              shape: BoxShape.circle,
                            ),
                          ),
        
                          SizedBox(width: 5),
        
                          Text(
                            'Est. Returns',
                            style: TextStyle(
                              fontSize: 8,
                              color: Color(0xFFD1DBF5),
                            ),
                          ),
                        ],
                      ),
        
                      SizedBox(height: 18),
        
                      // THREE SUMMARY BOXES
                      Row(
                        children: [
        
                          Expanded(
                            child: _sipResultBox(
                              'TOTAL\nINVESTED',
                              '₹\n${totalInvested.toStringAsFixed(0)}',
                              Icons.account_balance_wallet_outlined,
                            ),
                          ),
        
                          SizedBox(width: 8),
        
                          Expanded(
                            child: _sipResultBox(
                              'EST.\nRETURNS',
                              '₹\n${estimatedReturns.toStringAsFixed(0)}',
                              Icons.currency_rupee,
                            ),
                          ),
        
                          SizedBox(width: 8),
        
                          Expanded(
                            child: _sipResultBox(
                              'XIRR',
                              '${expectedReturn.toStringAsFixed(0)}%',
                              Icons.bar_chart,
                            ),
                          ),
                        ],
                      ),
        
                      SizedBox(height: 16),
        
                      Text(
                        '* This calculation is an estimate and for illustration purposes '
                            'only. Actual returns may vary based on market performance.',
                        style: TextStyle(
                          fontSize: 9,
                          height: 1.4,
                          color: Color(0xFF9EAFD8),
                        ),
                      ),
                    ],
                  ),
                ),
        
                SizedBox(height: 20),
                SizedBox(height: 16),
        
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    children: [
        
                      // ROW 1
                      Row(
                        children: [
        
                          Expanded(
                            child: _sipFeatureItem(
                              icon: Icons.trending_up,
                              title: 'Build Wealth',
                              description:
                              'Invest regularly and build long-\nterm wealth.',
                            ),
                          ),
        
                          SizedBox(width: 18),
        
                          Expanded(
                            child: _sipFeatureItem(
                              icon: Icons.verified_user_outlined,
                              title: 'Disciplined Investing',
                              description:
                              'SIP helps you invest with\ndiscipline every month.',
                            ),
                          ),
                        ],
                      ),
        
                      SizedBox(height: 24),
        
                      // ROW 2
                      Row(
                        children: [
        
                          Expanded(
                            child: _sipFeatureItem(
                              icon: Icons.history,
                              title: 'Power of Compounding',
                              description:
                              'Earn returns on both your\ninvestment and returns.',
                            ),
                          ),
        
                          SizedBox(width: 18),
        
                          Expanded(
                            child: _sipFeatureItem(
                              icon: Icons.currency_rupee,
                              title: 'Rupee Cost Averaging',
                              description:
                              'Reduces impact of market\nvolatility over time.',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
        
                SizedBox(height: 20),
                SizedBox(height: 16),
        
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 14,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFEFF3FF),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
        
                        Icon(
                          Icons.lock_outline,
                          size: 20,
                          color: Color(0xFF0755D9),
                        ),
        
                        SizedBox(width: 14),
        
                        Expanded(
                          child: Text(
                            'All calculations are estimates. Actual returns may vary based '
                                'on market conditions.',
                            style: TextStyle(
                              fontSize: 13,
                              height: 1.35,
                              color: Color(0xFF465065),
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
      ),
    );
  }
}
class SIPGraphPainter extends CustomPainter {
  final double totalInvested;
  final double futureValue;
  final double monthlyInvestment;
  final double expectedReturn;
  final double investmentYears;
  final double stepUp;

  SIPGraphPainter({
    required this.totalInvested,
    required this.futureValue,
    required this.monthlyInvestment,
    required this.expectedReturn,
    required this.investmentYears,
    required this.stepUp,
  });

  @override
  void paint(Canvas canvas, Size size) {

    double graphMaxValue = futureValue;

    if (graphMaxValue <= 0) {
      graphMaxValue = 1;
    }
    // -----------------------------
    // GRID LINES
    // -----------------------------

    final gridPaint = Paint()
      ..color = const Color(0xFF203777)
      ..strokeWidth = 0.7;

    for (int i = 1; i <= 4; i++) {
      final y = size.height * (i / 5);

      canvas.drawLine(
        Offset(0, y),
        Offset(size.width, y),
        gridPaint,
      );
    }
    if (futureValue <= 0) {
      return;
    }

    // -----------------------------
    // INVESTED AMOUNT LINE
    // -----------------------------

    final investedPaint = Paint()
      ..color = const Color(0xFF0755D9)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.8;

    final investedPath = Path();

    // Starting point
    investedPath.moveTo(
      0,
      size.height * 0.88,
    );

    int totalMonths =
    (investmentYears * 12).round();

    for (int month = 1; month <= totalMonths; month++) {
      double progress =
          month / totalMonths;

      double x =
          size.width * progress;

      double invested =
          monthlyInvestment * month;

      double finalInvested =
          monthlyInvestment * totalMonths;

      double normalized =
          invested / finalInvested;

      double y =
          size.height * 0.88 -
              (normalized * size.height * 0.42);

      investedPath.lineTo(x, y);
    }

    canvas.drawPath(
      investedPath,
      investedPaint,
    );

    // -----------------------------
    // ESTIMATED RETURNS LINE
    // -----------------------------

    final returnsPaint = Paint()
      ..color = const Color(0xFF62E7A3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.8;

    final returnsPath = Path();

    returnsPath.moveTo(
      0,
      size.height * 0.88,
    );

    for (int month = 1; month <= totalMonths; month++) {
      double progress =
          month / totalMonths;

      double x =
          size.width * progress;

      double months =
      month.toDouble();

      double monthlyRate =
          expectedReturn / 12 / 100;

      double value = 0;

      for (int m = 1; m <= month; m++) {

        int yearNumber = (m - 1) ~/ 12;

        double currentInvestment =
            monthlyInvestment *
                pow(
                  1 + (stepUp / 100),
                  yearNumber,
                );

        if (monthlyRate == 0) {
          value += currentInvestment;
        } else {
          int remainingMonths =
              month - m + 1;

          value +=
              currentInvestment *
                  pow(
                    1 + monthlyRate,
                    remainingMonths,
                  );
        }
      }
      double normalized =
          value / graphMaxValue;
      double y =
          size.height * 0.88 -
              (normalized * size.height * 0.76);

      if (month == 1) {
        returnsPath.lineTo(x, y);
      } else {
        returnsPath.lineTo(x, y);
      }
    }

    canvas.drawPath(
      returnsPath,
      returnsPaint,
    );

    // -----------------------------
    // MIDDLE GREEN POINT
    // -----------------------------


    final pointPaint = Paint()
      ..color = const Color(0xFF62E7A3)
      ..style = PaintingStyle.fill;

    final middleMonth = (totalMonths / 2).round();

    double monthlyRate = expectedReturn / 12 / 100;

    double middleValue = 0;

    for (int m = 1; m <= middleMonth; m++) {
      int yearNumber = (m - 1) ~/ 12;

      double currentInvestment =
          monthlyInvestment *
              pow(
                1 + (stepUp / 100),
                yearNumber,
              );

      if (monthlyRate == 0) {
        middleValue += currentInvestment;
      } else {
        int remainingMonths =
            middleMonth - m + 1;

        middleValue +=
            currentInvestment *
                pow(
                  1 + monthlyRate,
                  remainingMonths,
                );
      }
    }

    double middleNormalized =
        middleValue / futureValue;

    final middleX =
        size.width * (middleMonth / totalMonths);

    final middleY =
        size.height * 0.88 -
            (middleNormalized * size.height * 0.76);

    canvas.drawCircle(
      Offset(middleX, middleY),
      2.5,
      pointPaint,
    );
  }

  @override
  bool shouldRepaint(
      covariant SIPGraphPainter oldDelegate,
      ) {
    return oldDelegate.totalInvested != totalInvested ||
        oldDelegate.futureValue != futureValue ||
        oldDelegate.monthlyInvestment != monthlyInvestment ||
        oldDelegate.expectedReturn != expectedReturn ||
        oldDelegate.investmentYears != investmentYears;
        oldDelegate.stepUp != stepUp;
  }
}
