
import 'package:flutter/material.dart';
import 'card_apply.dart';
class ApplyForCardScreen extends StatefulWidget {
  const ApplyForCardScreen();

  @override
  State<ApplyForCardScreen> createState() =>
      _ApplyForCardScreenState();
}

class _ApplyForCardScreenState extends State<ApplyForCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF7EF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
          
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF0649A8),
                      Color(0xFF007FD0),
                      Color(0xFF00B5EF),
                      Color(0xFF0751AC),
                    ],
                    stops: [0.0, 0.35, 0.65, 1.0],
                  ),
                ),
                child: Column(
                  children: [
                    // Header
                    SizedBox(
                      height: 48,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                              size: 22,
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                'Apply for Loan',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 48),
                        ],
                      ),
                    ),
          
                    SizedBox(height: 20),
          
                    // Heading
                    Text(
                      'Save up to ₹1 lakh a year',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
          
                    SizedBox(height: 48),
          
                    // Credit card image
                    SizedBox(
                      height: 320,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.symmetric(horizontal: 36),
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Image.asset(
                              'assets/images/apply_for_card1.png',
                              width: 170,
                              height: 288,
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(width: 25),
                          Image.asset(
                            'assets/images/apply_for_card2.png',
                            width: 170,
                            height: 288,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ),
          
                    // First card title
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 28,
                      ),
                      child: Text(
                        'PhonePe SBI Card SELECT BLACK',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          
              Container(
                width: double.infinity,
                height: 34,
                color: Color(0xFF217849),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.redeem_outlined,
                          size: 12,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'GET 100% JOINING FEE BACK',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.redeem_outlined,
                          size: 12,
                          color: Colors.white,
                        ),
                      ],
                    ),
          
                    Text(
                      'GET 10',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
          
              Container(
                width: double.infinity,
                color: Color(0xFFFAF7EF),
                padding: EdgeInsets.fromLTRB(20, 28, 20, 30),
                child: Column(
                  children: [
                    // Reward points heading
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Color(0xFFE5DED3),
                            thickness: 1,
                          ),
                        ),
          
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF475569),
                              ),
                              children: [
                                TextSpan(text: '1 Reward Point = '),
                                TextSpan(
                                  text: '₹1',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF172033),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
          
                        Expanded(
                          child: Divider(
                            color: Color(0xFFE5DED3),
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
          
                    SizedBox(height: 26),
          
                    // Travel benefits card
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        border: Border.all(
                          color: Color(0xFFF0F0F0),
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '10% on travel\n& more',
                                  style: TextStyle(
                                    fontSize: 19,
                                    height: 1.15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF172033),
                                  ),
                                ),
          
                                SizedBox(height: 8),
          
                                Text(
                                  'like recharges, bill payments, '
                                      'insurance, flights, hotels on PhonePe*',
                                  style: TextStyle(
                                    fontSize: 11,
                                    height: 1.35,
                                    color: Color(0xFF64748B),
                                  ),
                                ),
                              ],
                            ),
                          ),
          
                          SizedBox(width: 12),
          
                          Image.asset(
                            'assets/images/apply_for_card_icon1.png',
                            width: 78,
                            height: 88,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 14),

              Container(
                width: double.infinity,
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13),
                  border: Border.all(
                    color: Color(0xFFF0F0F0),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '10% on PhonePe\nspends',
                            style: TextStyle(
                              fontSize: 16,
                              height: 1.15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF172033),
                            ),
                          ),

                          SizedBox(height: 8),

                          Text(
                            'recharges, bill payments, flights, '
                                'hotels & more*',
                            style: TextStyle(
                              fontSize: 11,
                              height: 1.35,
                              color: Color(0xFF64748B),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 12),

                    Image.asset(
                      'assets/images/apply_for_card_icon2.png',
                      width: 65,
                      height: 65,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 14),

              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13),
                  border: Border.all(
                    color: Color(0xFFF0F0F0),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '5% on top online\nbrands',
                            style: TextStyle(
                              fontSize: 16,
                              height: 1.15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF172033),
                            ),
                          ),

                          SizedBox(height: 8),

                          Text(
                            'Flipkart, Amazon, Swiggy food, '
                                'Zomato, Uber, Myntra & AJIO*',
                            style: TextStyle(
                              fontSize: 11,
                              height: 1.35,
                              color: Color(0xFF64748B),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 10),


                    Container(
                      width: 62,
                      height: 62,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'AJIO',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),

                  ],
                ),
              ),

              SizedBox(height: 14),

              Container(
                width: double.infinity,
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13),
                  border: Border.all(
                    color: Color(0xFFF0F0F0),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '8 Domestic lounge\naccess',
                            style: TextStyle(
                              fontSize: 16,
                              height: 1.15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF172033),
                            ),
                          ),

                          SizedBox(height: 8),

                          Text(
                            'Get 2 free visits per quarter annually*',
                            style: TextStyle(
                              fontSize: 11,
                              height: 1.35,
                              color: Color(0xFF64748B),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 12),

                    Image.asset(
                      'assets/images/apply_for_card_icon3.png',
                      width: 65,
                      height: 65,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 14),

              Container(
                width: double.infinity,
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13),
                  border: Border.all(
                    color: Color(0xFFF0F0F0),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '1% on scan & pay',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF172033),
                            ),
                          ),

                          SizedBox(height: 8),

                          Text(
                            'for all UPI transactions*',
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0xFF64748B),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 12),

                    Image.asset(
                      'assets/images/apply_for_card_icon4.png',
                      width: 55,
                      height: 55,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(18, 20, 18, 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                clipBehavior: Clip.hardEdge,
                child: Stack(
                  children: [
                    // Circular badge on the right
                    Positioned(
                      top: -38,
                      right: -28,
                      child: Container(
                        width: 110,
                        height: 110,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(0xFF8BD9B0),
                            width: 1.2,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 14,
                            bottom: 12,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10 , right: 8),
                            child: Text(
                              'FIRST\nYEAR\nFREE',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 11,
                                height: 1.1,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF8BBFA4),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'FEES & BENEFITS',
                          style: TextStyle(
                            fontSize: 12,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF647084),
                          ),
                        ),

                        SizedBox(height: 20),

                        // Joining fee offer
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '+',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFFFF9828),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Color(0xFF273244),
                                      ),
                                      children: [
                                        TextSpan(text: 'Join with ' ,style: TextStyle(fontSize: 12)),
                                        TextSpan(
                                          text: '₹0',
                                          style: TextStyle(
                                            color: Color(0xFF299B52),
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' ₹999',
                                          style: TextStyle(
                                            color: Color(0xFF8B929E),
                                            decoration: TextDecoration.lineThrough,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' - Limited Time Offer.',style: TextStyle(fontSize: 12)
                                        ),
                                      ],
                                    ),
                                  ),

                                  SizedBox(height: 6),

                                  Text(
                                    'Valid from June 16 - July 31. Welcome benefits not\napplicable during this window',
                                    style: TextStyle(
                                      fontSize: 10,
                                      height: 1.4,
                                      color: Color(0xFF9AA3B2),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 18),

                        // Renewal fee
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '+',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFFFF9828),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                'Renew with ₹999 - Waived off on annual spends above ₹2 lakh',
                                style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  color: Color(0xFF273244),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    // First permission
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 17,
                          height: 17,
                          decoration: BoxDecoration(
                            color: Color(0xFF16A34A),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Icon(
                            Icons.check,
                            size: 14,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Allow PhonePe Limited to update your e...',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Color(0xFF475569),
                                  ),
                                ),
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Read More',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Color(0xFF94A3B8),
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                size: 12,
                                color: Color(0xFF94A3B8),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 10),

                    // Second permission
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 17,
                          height: 17,
                          decoration: BoxDecoration(
                            color: Color(0xFF16A34A),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Icon(
                            Icons.check,
                            size: 14,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Allow PhonePe Limited to fetch your info...',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Color(0xFF475569),
                                  ),
                                ),
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Read More',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Color(0xFF94A3B8),
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                size: 12,
                                color: Color(0xFF94A3B8),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: SizedBox(
                  width: double.infinity,
                  height: 46,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CardApplyScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF0B50FF),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9),
                      ),
                    ),
                    child: Text(
                      'Apply Now',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
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
