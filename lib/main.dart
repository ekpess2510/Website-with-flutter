import 'dart:ui';
//import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Website(),
    );
  }
}

class Website extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Udos Computers',
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 70.0),
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: AppBar(
                toolbarHeight: 70,
                backgroundColor: Colors.black87.withOpacity(0.4),
                leading: Image(
                  image: AssetImage('images/udx.jpg'),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'PC BUILDER',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w800,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'SHOP',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w800,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'ABOUT US',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w800,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'CONTACT',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w800,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        // backgroundColor: Colors.red,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                //  width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.dstATop),
                    image: AssetImage('images/udx.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'We Build Customized Gaming\n computers',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.normal,
                          fontSize: 74,
                          color: Colors.white,
                          letterSpacing: -2,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ButtonBar(
                              alignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 50,
                                  width: 150,
                                  child: ElevatedButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: HexColor('#D91702'),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'PC Builder',
                                      style: GoogleFonts.lato(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FontStyle.normal,
                                          letterSpacing: 0.3),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                  width: 150,
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      //     backgroundColor: Colors.red
                                      side: BorderSide(color: Colors.white),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'Learn More',
                                      style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        letterSpacing: 0.3,
                                        color: Colors.white70,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.black87,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('About Us'),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),

        //],
        // ),
      ),
    );
  }
}
