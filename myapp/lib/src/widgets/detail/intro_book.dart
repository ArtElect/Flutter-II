import 'package:flutter/material.dart';
import 'package:myapp/src/config/fonts.dart';
import 'package:myapp/src/models/books_model.dart';

class IntroBook extends StatelessWidget {
  final Size screenSize;
  final BooksModel booksModel;

  const IntroBook({Key? key, required this.screenSize, required this.booksModel,}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: screenSize.width / 40,
            bottom: screenSize.width / 40,
            left: screenSize.width * 0.01,
          ),
          child: const Text(
            "Synopsis",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              fontFamily: AppFonts.detailIntroTitleTextFont,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            bottom: screenSize.width / 40,
            left: screenSize.width * 0.01,
          ),
          width: screenSize.width * 0.9,
          child: Text(
            booksModel.summary,
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: AppFonts.detailIntroContentTextFont,
            ),
          ),
        ),
      ],
    );
  }
}