import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class ProductBanner extends StatelessWidget {
  const ProductBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage abstractAsset = AssetImage('./images/abstract.jpg');
    Image image = Image(image: abstractAsset);

    return Container(
      color: HexColor('#37005c'),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(64, 46, 64, 24),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 400,
            minWidth: MediaQuery.of(context).size.width,
          ),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.8), BlendMode.darken),
                fit: BoxFit.cover,
                image: AssetImage('./images/abstract.jpg'),
              ),
              // color: HexColor('#D91702'),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(42, 0, 42, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'We Put You In Control \n Of Your Overall Experience ',
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.w900,
                              fontStyle: FontStyle.normal,
                              fontSize: 42,
                              color: Colors.white,
                              letterSpacing: -2,
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'At udos xyz we put you in full controll of your whole computer \n '
                            'experience. Select from our wide range of 10th Generation Components for your desired pc build.',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.lato(
                              fontSize: 14,
                              color: Colors.grey.shade300,
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.normal,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Center(
                            child: Image(
                              image: AssetImage('./images/hello.png'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
