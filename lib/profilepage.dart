import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  final List<String> homeworkList = [
    "English_speaking\nmeeting.docx",
    "German_writing\nnotes.docx",
    "English_speaking\nmeeting.docx",
    "Hindi_speaking\nmeeting.docx",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(17),
                child: SizedBox(
                  height: 200,
                  child: Stack(
                    children: [
                      Container(
                        height: 150,
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            // color: Colors.black
                            image: DecorationImage(
                              image: AssetImage('asset/images/BANNER.jpg'),
                              fit: BoxFit.cover,
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(17),
                                    color: Colors.white),
                                child: Icon(
                                  Icons.arrow_back,
                                  size: 20,
                                ),
                              ),
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                child: Container(
                                  child: Text(
                                    'Profile',
                                    style: GoogleFonts.roboto(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(17),
                                    color: Colors.white),
                                child: Icon(Icons.menu),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 90,
                        right: 110,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.1),
                              borderRadius: BorderRadius.circular(60),
                              border: Border.all(
                                  color: Colors.white,
                                  width: 1.5,
                                  style: BorderStyle.solid)),
                        ),
                      ),
                      Positioned(
                          top: 105,
                          left: 132,
                          child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                image: DecorationImage(
                                    image: AssetImage('asset/images/dp.jpeg'))),
                          ))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Text(
                  'Angelica Melli',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueGrey,
                    ),
                    child: Icon(
                      Icons.location_on_rounded,
                      size: 10,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Venice, Italy"),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueGrey,
                    ),
                    child: Icon(
                      Icons.view_agenda,
                      size: 10,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Age 26'),
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    height: 20,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.orangeAccent.shade100,
                    ),
                    child: Center(
                        child: Text(
                      'Regular',
                      style: GoogleFonts.roboto(color: Colors.orange.shade500),
                    )),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Angelica's Note",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Even that pain from Vivamus lobortis varius tortor, the elementum eleifend ligula tincidunt needs. I hate you as always. Yes, but just a mass.",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold, color: Colors.blueGrey),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Even that pain from Vivamus lobortis varius tortor, the elementum eleifend ligula tincidunt needs. Mauritian as',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold, color: Colors.blueGrey),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Text(
                      'Homework',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 105,
                      child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: homeworkList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  left: index == 0 ? 0 : 15,
                                  right: index == homeworkList.length - 1
                                      ? 0 : 0),
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18))
                                ),
                                  onPressed: () {},
                                  child: Column(
                                    children: [
                                      Image.asset("asset/images/list.jpg",
                                      height: 55,
                                        width: 60,
                                      ),
                                      Text(homeworkList[index],style: TextStyle(fontSize: 12,color:Color(0xff32357C).withOpacity(.8)),textAlign: TextAlign.center,)
                                    ],
                                  )),
                            );
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                height: 1,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 8,
                          ),
                          Image.asset(
                            "asset/images/premium.jpg",
                            width: 30,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Premium',
                            style: GoogleFonts.roboto(
                                fontSize: 20,
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 55,
                      width: 165,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.deepPurple,
                      ),
                      child: Center(
                          child: Text(
                        'Get Detail',
                        style: GoogleFonts.roboto(
                            fontSize: 25, color: Colors.white),
                      )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
