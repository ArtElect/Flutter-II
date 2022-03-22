import 'package:flutter/material.dart';
import 'package:myapp/src/config/fonts.dart';

class SmallFeaturedTiles extends StatelessWidget {
  final Size screenSize;
  final List<String> images;
  final List<String> title;
  
  const SmallFeaturedTiles({
    Key? key,
    required this.screenSize,
    required this.images,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: screenSize.width / 15,),
          ...Iterable<int>.generate(images.length).map(
            (int index) => Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.popAndPushNamed(context, '/${title[index].toLowerCase()}'),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: screenSize.width / 2.5,
                        width: screenSize.width / 1.5,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(6.0),
                          child: Image.asset(
                            images[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: screenSize.height / 70,),
                        child: Text(
                          title[index],
                          style: const TextStyle(
                            fontSize: 16,
                            fontFamily: AppFonts.smallFeaturedtilesFont,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: screenSize.width / 15,),
              ],
            )
          )
        ],
      ),
    );
  }
}