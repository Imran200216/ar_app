import 'package:ar_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAuthFooter extends StatelessWidget {
  final String descriptionText;
  final VoidCallback onTap;
  final String txtBtnTitle;

  const CustomAuthFooter({
    super.key,
    required this.descriptionText,
    required this.onTap,
    required this.txtBtnTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          descriptionText,
          style: TextStyle(
            color: AppColors.textFieldHintTextColor,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        TextButton(
          onPressed: onTap,
          child: Text(
            txtBtnTitle,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w700,
              color: AppColors.secondaryColor,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
