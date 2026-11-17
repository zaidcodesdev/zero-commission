
import 'package:flutter/material.dart';
import 'package:zero_commission/screens/More_options_screen.dart';

class CardApply6Screen extends StatefulWidget {
  const CardApply6Screen({super.key});

  @override
  State<CardApply6Screen> createState() =>
      _CardApply6ScreenState();
}

class _CardApply6ScreenState extends State<CardApply6Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(

          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Success image
                  Image.asset(
                    'assets/images/card_apply5.png',
                    width: 200,
                    height: 200,
                    fit: BoxFit.contain,
                  ),

                  SizedBox(height: 54),

                  // Heading
                  Text(
                    'Credit card is\nsuccessfully\nOrdered',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w700,
                      height: 1.2,
                      color: Color(0xFF111B32),
                    ),
                  ),

                  SizedBox(height: 25),

                  // Description
                  Text(
                    'Welcome to Zero Commission.\n'
                        'Your account has been created\n'
                        'successfully.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.6,
                      color: Color(0xFF7A8497),
                    ),
                  ),
                ],
              ),
            ),

            // Dashboard button
            Padding(
              padding: EdgeInsets.fromLTRB(13, 0, 13, 10),
              child: SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MoreScreen(),
                      ),
                    );

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF064BFF),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Go to Dashboard',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],

        ),
      ),
    );
  }
}
