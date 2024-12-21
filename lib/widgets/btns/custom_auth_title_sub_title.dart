import 'package:ar_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAuthTitleSubTitle extends StatelessWidget {
  final String titleText;
  final String subTitleText;
  const CustomAuthTitleSubTitle({super.key, required this.titleText, required this.subTitleText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [

        Text(
          titleText,
          style: GoogleFonts.montserrat(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: AppColors.textTitleColor,
          ),
        ),
        const SizedBox(
          height: 8,
        ),


        Text(
          subTitleText,
          style: GoogleFonts.montserrat(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: AppColors.textSubTitleColor,
          ),
        ),
      ],
    );
  }
}
