import 'package:flutter/material.dart';
import 'onboarding_screen2.dart';

class OnboardingScreen extends StatelessWidget {
   OnboardingScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 28,
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Skip Button
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  "Skip",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff1F5BBF),
                  ),
                ),
              ),

              SizedBox(height: 10),

              // Welcome Text
              Text(
                "Welcome to",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 5),

              Image.asset(
                'assets/images/zero_commission_black.png',
                width: 250,
              ),
              SizedBox(height: 10),

              Text(
                "India's Trusted Loan\nMarketplace",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  height: 1.5,
                ),
              ),

              Center(
                child: Image.asset(
                  'assets/images/onboarding_image.png',
                  width: 280,
                ),
              ),
              Center(
                child: Image.asset(
                  'assets/images/onboarding1_grid.png',
                  width: 260,
                ),
              ),
              SizedBox(height: 10),

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
                          color: Color(0xff0752E3),
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
                          color: Color(0xffC9D5E8),
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
                          builder: (context) => OnboardingScreen2(),
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
                  ),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}