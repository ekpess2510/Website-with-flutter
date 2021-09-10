import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class ProductCards extends StatelessWidget {
  const ProductCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
//  padding: EdgeInsets.only(top: 24),
      margin: EdgeInsets.only(top: 48),
      child: Row(
        children: [
          SizedBox(
            width: 300,
// height: 380,
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: 380),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 260,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Image(
                          width: 260,
                          height: 200,
// fit: BoxFit.contain,
                          image: AssetImage('./images/hello.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Storm XYZ',
                              style: GoogleFonts.lato(
                                color: Colors.white70,
                                fontSize: 22,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 8, 0, 16),
                            child: Text(
                              'This pc is the bets you are going to ever find in the market, we have customized it exactly for your taste. please buy am nau',
                              style: GoogleFonts.lato(
                                  height: 1.5,
                                  fontSize: 14,
                                  color: Colors.grey.shade500),
                            ),
                          ),
                          SizedBox(
                            width: 260,
                            height: 38,
                            child: ElevatedButton(
                              style: TextButton.styleFrom(
                                backgroundColor: HexColor('#D91702'),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Buy Now',
                                style: GoogleFonts.lato(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: 0.3),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                color: Colors.black12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
