import 'package:flutter/material.dart';
import 'package:zero_commission/screens/home_screen1.dart';
import 'onboarding_screen3.dart';


class OnboardingScreen2 extends StatelessWidget {
  OnboardingScreen2();

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
            children: [
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff0752E3),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 12),

              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/images/onboarding2_meter.PNG',
                  width: 80,
                  height: 80,
                  fit: BoxFit.contain,
                ),
              ),

              SizedBox(height: 5),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Track Your",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    height: 1.1
                  ),
                ),
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Financial Health",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0752E3),
                    height: 1.1
                  ),
                ),
              ),

              SizedBox(height: 2),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Monitor your CIBIL score and\nfinancial reports in one place.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    height: 1.3,
                  ),
                ),
              ),
              SizedBox(height: 10),

              SizedBox(
                width: double.infinity,
                height: 340,
                child: Image.asset(
                  'assets/images/New_onboarding2_meter2.png',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 5),

              Center(
                child: Image.asset(
                  'assets/images/onboarding2_navigation.png',
                ),
              ),
              SizedBox(height: 20,),
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
            ],
          ),

          // Next Button
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OnboardingScreen3(),
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
          ],),
        ),
      ),
    );
  }
}