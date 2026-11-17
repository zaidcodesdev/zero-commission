
import 'package:flutter/material.dart';

class ProfileInformation extends StatelessWidget {
  ProfileInformation({Key? key}) : super(key: key);


  Widget _infoCard({
    required IconData icon,
    required String label,
    required String value,
    bool fullWidth = false,
    bool showArrow = false,
  }) {
    return Container(
      width: fullWidth ? double.infinity : null,
      constraints: BoxConstraints(minHeight: 48),
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(11),
        border: Border.all(
          color: Color(0xFFEEEEEE),
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 17,
            color: Color(0xFF98A3B5),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 8,
                    color: Color(0xFF8995A9),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 11,
                    color: Color(0xFF202B3D),
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          if (showArrow)
            Icon(
              Icons.keyboard_arrow_down,
              size: 17,
              color: Color(0xFF8095B5),
            ),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F9FB),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 55,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFF092747),
            size: 22,
          ),
        ),
        title: Text(
          'Edit Profile',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xFF092747),
          ),
        ),
      ),

      body: Container(
        width: double.infinity,
        color: Color(0xFFF8F9FB),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile picture section
              Padding(
                padding: EdgeInsets.fromLTRB(13, 16, 13, 0),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(
                    top: 26,
                    bottom: 25,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFF0F5FF),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: 88,
                            height: 88,
                            decoration: BoxDecoration(
                              color: Color(0xFFD0DFFF),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.person,
                              size: 65,
                              color: Color(0xFF6994FF),
                            ),
                          ),
                          Positioned(
                            right: -2,
                            bottom: 2,
                            child: Container(
                              width: 29,
                              height: 29,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x18000000),
                                    blurRadius: 5,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Icon(
                                Icons.camera_alt_outlined,
                                size: 18,
                                color: Color(0xFF17375E),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 14),
                      Text(
                        'Update your profile picture',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF344563),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'JPG, PNG (Max. 2MB)',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFF8095B5),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 18),

              // Personal information section
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Personal Information',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF092747),
                      ),
                    ),
                    SizedBox(height: 14),

                    Row(
                      children: [
                        Expanded(
                          child: _infoCard(
                            icon: Icons.person_outline,
                            label: 'FIRST NAME',
                            value: 'Mustafa',
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: _infoCard(
                            icon: Icons.person_outline,
                            label: 'LAST NAME',
                            value: 'Hasan',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),

                    _infoCard(
                      icon: Icons.work_outline,
                      label: 'PROFESSION',
                      value: 'Salaried',
                      fullWidth: true,
                    ),
                    SizedBox(height: 12),

                    Row(
                      children: [
                        Expanded(
                          child: _infoCard(
                            icon: Icons.add_circle_outline,
                            label: 'SALARY (ANNUAL)',
                            value: '₹ 8,00,000',
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: _infoCard(
                            icon: Icons.business_outlined,
                            label: 'BUSINESS / SELF EMPLOYED',
                            value: 'Yes',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),

                    Row(
                      children: [
                        Expanded(
                          child: _infoCard(
                            icon: Icons.pie_chart_outline,
                            label: 'TURN OVER\n(ANNUAL)',
                            value: '₹ 25,00,000',
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: _infoCard(
                            icon: Icons.phone_outlined,
                            label: 'MOBILE NUMBER',
                            value: '+91 98765\n43210',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),

                    _infoCard(
                      icon: Icons.mail_outline,
                      label: 'EMAIL ADDRESS',
                      value: 'mustafa.hasan@gmail.com',
                      fullWidth: true,
                    ),
                    SizedBox(height: 12),

                    Row(
                      children: [
                        Expanded(
                          child: _infoCard(
                            icon: Icons.wc_outlined,
                            label: 'GENDER',
                            value: 'Male',
                            showArrow: true,
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: _infoCard(
                            icon: Icons.location_on_outlined,
                            label: 'ADDRESS',
                            value: '123, Sector 45, Gurgaon',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),

                    SizedBox(
                      width: double.infinity,
                      height: 44,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF0755FF),
                          foregroundColor: Colors.white,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Update Profile',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),





    );
  }
}
