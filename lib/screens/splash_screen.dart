import 'package:flutter/material.dart';
import 'onboarding_screen.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(_controller);

    _controller.forward();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnboardingScreen(),
        ),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 115),
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xFFEFF2F6),
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 65),
                child: Container(
                  width: 400,
                  height: 400,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xFFEFF2F6),
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),

            Column(
        children: [
            Padding(
              padding: const EdgeInsets.only(left: 35, top: 35),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xFFE5E7EB),
                    ),
                  ),
                  child: const Icon(
                    Icons.account_balance_outlined,
                    color: Color(0xFF1E5AA8),
                    size: 28,
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, -40),
              child: Padding(
                padding: EdgeInsets.only(right: 130, top: 5),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 52,
                    height: 52,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xFFE5E7EB),
                      ),
                    ),
                    child: const Icon(
                      Icons.verified_user_outlined,
                      color: Color(0xFF1E5AA8),
                      size: 28,
                    ),
                  ),
                ),
              ),
            ),


            const Spacer(),

            Center(
              child: Image.asset(
                'assets/images/zero_commission_black.png',
                width: 220,
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 16),

            Center(
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF4B5563),
                  ),
                  children: [
                    TextSpan(
                      text: "India's ",
                    ),
                    TextSpan(
                      text: "Trusted",
                      style: TextStyle(
                        color: Color(0xFF1E5AA8),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: " Loan Marketplace",
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Compare. Apply. Save More.",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF4B5563),
              ),
            ),
            const SizedBox(height: 110),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      width: 52,
                      height: 52,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.blue,
                          blurRadius: 3)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: const Color(0xFFE5E7EB),
                        ),
                      ),
                      child: const Icon(
                        Icons.account_balance_outlined,
                        color: Color(0xFF1E5AA8),
                        size: 30,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('50+'),
                    SizedBox(height: 5),
                    Text(
                      'Banks & NBFCs',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),

                Column(
                  children: [
                    Container(
                      width: 52,
                      height: 52,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.blue,
                          blurRadius: 3)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: const Color(0xFFE5E7EB),
                        ),
                      ),
                      child: const Icon(
                        Icons.verified_user_outlined,
                        color: Color(0xFF1E5AA8),
                        size: 30,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('100%'),
                    SizedBox(height: 5),
                    Text(
                      'Paperless',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),

                Column(
                  children: [
                    Container(
                      width: 52,
                      height: 52,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.blue,
                          blurRadius: 3)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: const Color(0xFFE5E7EB),
                        ),
                      ),
                      child: const Icon(
                        Icons.bolt_outlined,
                        color: Color(0xFF1E5AA8),
                        size: 30,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('Quick'),
                    SizedBox(height: 5),
                    Text(
                      'Approval',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),

                Column(
                  children: [
                    Container(
                      width: 52,
                      height: 52,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.blue,
                          blurRadius: 3)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: const Color(0xFFE5E7EB),
                        ),
                      ),
                      child: const Icon(
                        Icons.percent,
                        color: Color(0xFF1E5AA8),
                        size: 30,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('Lowest'),
                    SizedBox(height: 5),
                    Text(
                      'Interest Rates',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),


            const SizedBox(height: 70),

            const Text(
              'Loading...',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF1E5AA8),
              ),
            ),

            const SizedBox(height: 10),

            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Container(
                  width: 180,
                  height: 4,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE5E7EB),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: FractionallySizedBox(
                    alignment: Alignment.centerLeft,
                    widthFactor: _animation.value,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF1E5AA8),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                );
              },
            ),

            const Spacer(),
          ],
        ),
            Positioned(
              left: 20,
              top: 250,
              child: Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xFFE5E7EB),
                  ),
                ),
                child: const Icon(
                  Icons.percent,
                  color: Color(0xFF1E5AA8),
                  size: 28,
                ),
              ),
            ),
            Positioned(
              right: 50,
              top: 180,
              child: Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xFFE5E7EB),
                  ),
                ),
                child: const Icon(
                  Icons.description_outlined,
                  color: Color(0xFF1E5AA8),
                  size: 28,
                ),
              ),
            ),
            Positioned(
              top: 35,
              right: 55,
              child: SizedBox(
                width: 28,
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: List.generate(
                    9,
                        (index) => Container(
                      width: 4,
                      height: 4,
                      decoration: const BoxDecoration(
                        color: Color(0xFFB0BCCB),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ),
            ),
       ],
      ),
      )
    );
  }
}