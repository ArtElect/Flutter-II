import 'package:flutter/material.dart';
import 'package:myapp/src/config/colors.dart';

class InfoText extends StatelessWidget {
  final String type;
  final String text;

  const InfoText({Key? key, required this.type, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$type: ',
          style: TextStyle(
            color: AppColors.typeColor,
            fontSize: 16,
          ),
        ),
        Flexible(
          child: Text(
            text,
            style: const TextStyle(
              color: AppColors.textColor,
              fontSize: 16,
            ),
          ),
        )
      ],
    );
  }
}