import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

class Verificationpage extends StatefulWidget {
  const Verificationpage({super.key});

  @override
  State<Verificationpage> createState() => _VerificationpageState();
}

class _VerificationpageState extends State<Verificationpage> {
  final List<bool> flag = [
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.2),
                          borderRadius: BorderRadius.circular(25)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_back_ios,
                            size: 12,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 75,
                    ),
                    Text(
                      "Verfication",
                      style: GoogleFonts.roboto(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: DottedBorder(
                        borderType: BorderType.Circle,
                        color: Colors.orange,
                        dashPattern: [10],
                        radius: Radius.circular(150),
                        child: Container(
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(90)),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 100,
                      child: Container(
                        height: 140,
                        width: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                            color: Colors.blue.withOpacity(.1)),
                      ),
                    ),
                    Positioned(
                      top: 40,
                      left: 120,
                      child: CircleAvatar(
                        radius: 50,
                        foregroundColor: Colors.white,
                        backgroundColor: Color(0xff32357C),
                        child: Icon(
                          Icons.phonelink_lock,
                          size: 60,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                        child: Text(
                      "Verification Code",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color(0xff32357C).withOpacity(0.9)),
                    )),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "We have to sent the code verfication to Your Mobile Number",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.mPlus1(
                        fontSize: 16,
                        color: Color(0xff32357C).withOpacity(0.7),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 65,
                          width: 60,
                          child: TextField(
                            onChanged: (value){
                              if(value.length==1){
                                FocusScope.of(context).nextFocus();
                                flag[0] = true;
                                setState(() {
                                  
                                });
                              }if(value.length==0){
                                flag[0] = false;
                                setState(() {

                                });
                              }
                            },
                            textAlign: TextAlign.center,
                            inputFormatters: [LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                            ],
                            keyboardType: TextInputType.number,
                            style: GoogleFonts.roboto(fontSize: 20),
                            cursorColor: Colors.black,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.withOpacity(0.1),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: flag[0]
                                      ? BorderSide(
                                      color:
                                      Color(0xff32357C).withOpacity(0.8),
                                      width: 2)
                                      : BorderSide.none,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),),
                          )
                        ),
                        SizedBox(
                          height: 65,
                          width: 60,
                          child: TextField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                                flag[1] = true;
                                setState(() {});
                              }
                              if (value.length == 0) {
                                FocusScope.of(context).previousFocus();
                                flag[1] = false;
                                setState(() {});
                              }
                            },
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            keyboardType: TextInputType.number,
                            style: GoogleFonts.mPlus1(fontSize: 20),
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.withOpacity(0.1),
                              enabledBorder: OutlineInputBorder(
                                borderSide: flag[1]
                                    ? BorderSide(
                                    color:
                                    Color(0xff32357C).withOpacity(0.8),
                                    width: 2)
                                    : BorderSide.none,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 65,
                          width: 60,
                          child: TextField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                                flag[2] = true;
                                setState(() {});
                              }
                              if (value.length == 0) {
                                FocusScope.of(context).previousFocus();
                                flag[2] = false;
                                setState(() {});
                              }
                            },
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            keyboardType: TextInputType.number,
                            style: GoogleFonts.mPlus1(fontSize: 20),
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.withOpacity(0.1),
                              enabledBorder: OutlineInputBorder(
                                borderSide: flag[2]
                                    ? BorderSide(
                                    color:
                                    Color(0xff32357C).withOpacity(0.8),
                                    width: 2)
                                    : BorderSide.none,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 65,
                          width: 60,
                          child: TextField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                                flag[3] = true;
                                setState(() {});
                              }
                              if (value.length == 0) {
                                FocusScope.of(context).previousFocus();
                                flag[3] = false;
                                setState(() {});
                              }
                            },
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            keyboardType: TextInputType.number,
                            style: GoogleFonts.mPlus1(fontSize: 20),
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.withOpacity(0.1),
                              enabledBorder: OutlineInputBorder(
                                borderSide: flag[3]
                                    ? BorderSide(
                                    color:
                                    Color(0xff32357C).withOpacity(0.8),
                                    width: 2)
                                    : BorderSide.none,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 65,
                          width: 60,
                          child: TextField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                                flag[41] = true;
                                setState(() {});
                              }
                              if (value.length == 0) {
                                FocusScope.of(context).previousFocus();
                                flag[3] = false;
                                setState(() {});
                              }
                            },
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            keyboardType: TextInputType.number,
                            style: GoogleFonts.mPlus1(fontSize: 20),
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.withOpacity(0.1),
                              enabledBorder: OutlineInputBorder(
                                borderSide: flag[4]
                                    ? BorderSide(
                                    color:
                                    Color(0xff32357C).withOpacity(0.8),
                                    width: 2)
                                    : BorderSide.none,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("+01-202-555-0102",
                        style: GoogleFonts.roboto(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),

                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: .3),
                          ),
                          child: Icon(UniconsLine.edit_alt),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(26)),
                          fixedSize: const Size(double.maxFinite, 50)),
                      child: Text(
                        "Send Again",
                        style: GoogleFonts.mPlus1(
                            color: Color(0xff32357C),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Color(0xff32357C),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(26),),
                          fixedSize: const Size(double.maxFinite, 50)),
                      child: Text(
                        "Send Again",
                        style: GoogleFonts.mPlus1(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
