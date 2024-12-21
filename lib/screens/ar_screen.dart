import 'package:ar_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class ArScreen extends StatelessWidget {
  final String modalPath;

  const ArScreen({super.key, required this.modalPath});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: AppColors.textTitleColor,
              )),
          title: Text("Cool AR's"),
          titleTextStyle: GoogleFonts.montserrat(
            color: AppColors.textTitleColor,
            fontWeight: FontWeight.w800,
            fontSize: 20,
          ),
        ),
        body: ModelViewer(
          ar: true,
          alt: "No modal found!",
          loading: Loading.eager,
          autoPlay: false,
          backgroundColor: AppColors.secondaryColor,
          src: modalPath,
          autoRotate: true,
          disableZoom: true,
          cameraControls: true,
        ),
      ),
    );
  }
}
