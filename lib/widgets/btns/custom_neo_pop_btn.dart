import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neopop/widgets/buttons/neopop_tilted_button/neopop_tilted_button.dart';

class CustomNeoPopBtn extends StatelessWidget {
  final  VoidCallback onTap;
  final String btnTitle;
  const CustomNeoPopBtn({super.key, required this.onTap, required this.btnTitle});

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      width: double.infinity, // Set the width to fill the container
      child: NeoPopTiltedButton(
        isFloating: true,
        onTapUp: onTap,

        decoration: const NeoPopTiltedButtonDecoration(
          color: Color(0xFF2BB4F6),
          plunkColor: Color(0xFF00579B),

          shadowColor: Colors.grey,
          showShimmer: true,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0, // Adjust horizontal padding if needed
            vertical: 8,
          ),
          child: Center(
            child: Text(
             btnTitle,
              style: GoogleFonts.pressStart2p(
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
