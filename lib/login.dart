import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginpage extends StatelessWidget {
  List<String> listText = [
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Login Account",style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 25),),
                 SizedBox(
                   width: 105,
                 ),
                 Container(
                   height: 25,
                   width: 25,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(13),
                     color: Colors.blue,
                     image: DecorationImage(
                       image: AssetImage('asset/images/flag.jpg'),
                       fit: BoxFit.cover,
                     )
                   ),
                 ),
                  Icon(Icons.keyboard_arrow_down)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text("Hello,welcome back to account!",style: GoogleFonts.roboto(fontSize: 17,color: Colors.grey),),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey.shade200,
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 60,
                    ),
                    Text("Email",style: GoogleFonts.roboto(fontSize: 15,color: Colors.grey),),
                    SizedBox(
                      width: 55,
                    ),
                    Container(
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            // blurStyle: BlurStyle.outer,
                            offset: Offset(0.0,5.0),
                            blurRadius: 7,
                            spreadRadius: 1.0,
                          ),
                        ]
                      ),
                      child: Center(child: Text('Phone Number',style: GoogleFonts.roboto(fontSize: 18),)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text("Phone Number",style: GoogleFonts.roboto(fontSize: 18),),
              SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Container(
                    height: 45,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(13),bottomLeft: Radius.circular(13)),
                      border: Border.all(color: Colors.grey)

                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 12,
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              border: Border.all(color: Colors.blue),
                              color: Colors.blue,
                              image: DecorationImage(
                                image: AssetImage('asset/images/flag.jpg'),
                                fit: BoxFit.cover,
                              )
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(13),bottomRight: Radius.circular(13)),
                      border: Border.all(color: Colors.grey)
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Text("+01-202-555-0102",style: GoogleFonts.roboto(fontSize: 20),),
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.green
                            ),
                            child: Icon(Icons.check,color: Colors.white,size: 10,))
                      ],
                    ),
                  ),

                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 50,
                width: 330,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue
                ),
                  child: Center(child: Text('Send Code',style: GoogleFonts.roboto(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w500),),),
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey)
                    ),
                  ),
                  Text('Sign in with Google or Facebook',style: GoogleFonts.roboto(fontSize: 13,color: Colors.grey),),
                  Container(
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey)
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 50,
                width: 330,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("asset/images/google.png",width: 25,),
                    SizedBox(
                      width: 12,
                    ),
                    Text("Google",style: GoogleFonts.roboto(fontSize: 20,fontWeight: FontWeight.bold),)
                  ],
                )
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 50,
                width: 330,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey)
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("asset/images/facebook-logo-0.png",width: 30,),
                  SizedBox(
                    width: 12,
                  ),
                  Text("Facebook",style: GoogleFonts.roboto(fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",style: GoogleFonts.roboto(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w400),),
                  TextButton(onPressed: (){}, child: Text("Sign up",style: GoogleFonts.roboto(color: Colors.orange,fontSize: 15),))
                ],
              )
            ],
          ),

        ),
      ),
    );
  }
}
