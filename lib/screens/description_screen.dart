import 'package:ar_app/constants/colors.dart';
import 'package:ar_app/screens/ar_screen.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ar_app/modals/places_modals.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionScreen extends StatelessWidget {
  final ChennaiPlaces place;

  const DescriptionScreen({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text(place.placeName),
        titleTextStyle: GoogleFonts.montserrat(
          color: AppColors.textTitleColor,
          fontWeight: FontWeight.w800,
          fontSize: 20,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: 'placeImage-${place.placeName}',
              child: CachedNetworkImage(
                imageUrl: place.placeImageUrl,
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    place.placeName,
                    style: GoogleFonts.montserrat(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    place.placeDescription,
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      color: AppColors.textSubTitleColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return ArScreen(modalPath: place.placeModalUrl,);
                      }));
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.primaryColor,
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/icons/ar.svg",
                              color: AppColors.textTitleColor,
                              height: 18,
                              width: 18,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Text(
                              "View Cool Ar",
                              style: GoogleFonts.montserrat(
                                color: AppColors.textTitleColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
