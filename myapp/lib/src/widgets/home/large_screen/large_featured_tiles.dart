import 'package:flutter/material.dart';
import 'package:myapp/src/config/colors.dart';
import 'package:myapp/src/config/fonts.dart';

class LargeFeaturedTiles extends StatelessWidget {
  final Size screenSize;
  final List<String> images;
  final List<String> title;
  const LargeFeaturedTiles({
    Key? key,
    required this.screenSize,
    required this.images,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.only(
        top: screenSize.height * 0.06,
        left: screenSize.width / 15,
        right: screenSize.width / 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...Iterable<int>.generate(images.length).map(
            (int pageIndex) => Column(
              children: [
                SizedBox(
                  height: screenSize.width / 6,
                  width: screenSize.width / 3.8,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(images[pageIndex],),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 10),
                          blurRadius: 20,
                          spreadRadius: 5,
                          color: AppColors.feautedTilesColor,
                        )
                      ]
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenSize.height / 70,),
                  child: Text(
                    title[pageIndex],
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: AppFonts.largeFeaturedtilesFont,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}