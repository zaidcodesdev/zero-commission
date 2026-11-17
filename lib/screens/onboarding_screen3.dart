import 'package:flutter/material.dart';
import 'home_screen1.dart';

class OnboardingScreen3 extends StatelessWidget {
  OnboardingScreen3();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/onboarding3_calculator.png',
                width: 65,
              ),

              SizedBox(height: 15),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Powerful',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Financial Tools',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2563EB),
                        height: 1
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Calculate, plan and make smarter\nfinancial decisions with ease.',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF6B7280),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),

              Center(
                child: Image.asset(
                  'assets/images/New_onboarding3_tools.png',
                  width: 370,
                  height: 380,
                ),
              ),
              SizedBox(height: 30,),

              Center(
                child: Transform.translate(
                  offset: Offset(0, -25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.verified_user_outlined,
                        color: Color(0xFF2563EB),
                        size: 16,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'All tools are 100% free to use',
                        style: TextStyle(
                          fontSize: 11,
                          color: Color(0xFF4B5563),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  // Dots
                  Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color:  Color(0xffC9D5E8),
                          shape: BoxShape.circle,
                        ),
                      ),

                      SizedBox(width: 8),

                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: Color(0xffC9D5E8),
                          shape: BoxShape.circle,
                        ),
                      ),

                      SizedBox(width: 8),

                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: Color(0xff0752E3),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),

                  // Next Button
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        color: Color(0xff0752E3),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),

                  ),],)

            ],
          ),
        ),
      ),
    );
  }
}