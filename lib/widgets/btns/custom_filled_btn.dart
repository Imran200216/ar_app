import 'package:ar_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CustomFilledBtn extends StatelessWidget {
  final VoidCallback onTap;
  final String btnTitle;
  final bool isLoading;

  const CustomFilledBtn({
    super.key,
    required this.onTap,
    required this.btnTitle,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isLoading ? null : onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.primaryColor,
        ),
        child: Center(
          child: isLoading
              ? LoadingAnimationWidget.progressiveDots(
                  color: AppColors.secondaryColor,
                  size: 15,
                )
              : Text(
                  btnTitle,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    color: AppColors.secondaryColor,
                    fontSize: 15,
                  ),
                ),
        ),
      ),
    );
  }
}
