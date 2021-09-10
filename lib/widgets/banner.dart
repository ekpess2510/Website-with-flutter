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
            child: image,
            decoration: BoxDecoration(
              color: HexColor('#D91702'),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ),
    );
  }
}
