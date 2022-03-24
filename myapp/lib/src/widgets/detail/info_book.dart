import 'package:flutter/material.dart';
import 'package:myapp/src/config/images.dart';
import 'package:myapp/src/widgets/detail/detail_author.dart';
import 'package:myapp/src/widgets/detail/detail_category.dart';
import 'package:myapp/src/widgets/detail/detail_rate.dart';
import 'package:myapp/src/widgets/detail/detail_read_button.dart';
import 'package:myapp/src/widgets/detail/detail_title.dart';

class InfoBook extends StatelessWidget {
  final Size screenSize;

  const InfoBook({Key? key, required this.screenSize,}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Container(
          height: screenSize.width / 3.8,
          width: screenSize.width / 5.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child:  Image.asset(AppImages.bookExemple),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailTitle(screenSize: screenSize,),
            DetailRate(screenSize: screenSize,),
            DetailAuthor(screenSize: screenSize,),
            DetailCategory(screenSize: screenSize,),
            DetailReadButton(screenSize: screenSize,),
          ],
        ),
      ],
    );
  }
}