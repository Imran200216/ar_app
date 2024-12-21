import 'package:ar_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';


class CustomOutlinedBtn extends StatelessWidget {
  final VoidCallback onTap;
  final String btnTitle;
  final bool isLoading;
  final String iconName;
  final Color? iconColor;

  const CustomOutlinedBtn({
    super.key,
    required this.onTap,
    required this.btnTitle,
    this.isLoading = false,
    required this.iconName,
    this.iconColor,
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
          color: AppColors.transparentColor,
          border: Border.all(
            color: AppColors.btnBorderColor,
            width: 0.8,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/icon/$iconName.svg",
              height: 24,
              width: 24,
              fit: BoxFit.cover,
              color: iconColor,
            ),
            const SizedBox(
              width: 14,
            ),
            isLoading
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
          ],
        ),
      ),
    );
  }
}
