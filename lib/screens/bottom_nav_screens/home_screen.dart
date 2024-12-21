import 'package:ar_app/constants/colors.dart';
import 'package:ar_app/modals/places_modals.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// list of places
    final List<ChennaiPlaces> chennaiPlacesList = [
      ChennaiPlaces(
        placeImageUrl:
        "https://images.unsplash.com/photo-1661366698983-3cb843219300?q=80&w=3132&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        placeName: "Chennai Central",
        placeModalUrl:
        "https://example.com/modal/chennai-central",
        placeDescription:
        "One of the most iconic railway stations in India, known for its heritage and architectural beauty.",
        placeLinkLocation:
        "https://www.google.com/maps?q=Chennai+Central",
      ),
      ChennaiPlaces(
        placeImageUrl:
        "https://images.unsplash.com/photo-1543877087-ebf71d4a6c23?q=80&w=3132&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        placeName: "Marina Beach",
        placeModalUrl:
        "https://example.com/modal/marina-beach",
        placeDescription:
        "The second-longest urban beach in the world, a must-visit for its serene sunsets and vibrant local culture.",
        placeLinkLocation:
        "https://www.google.com/maps?q=Marina+Beach",
      ),
    ];


    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 20,
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Namma Chennai",
                  style: GoogleFonts.montserrat(
                      color: AppColors.textTitleColor,
                      fontWeight: FontWeight.w800,
                      fontSize: 24),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            ListView.separated(
              separatorBuilder: (context, index){
               return  const SizedBox(
                  height: 20,
                );
              },
                itemCount:chennaiPlacesList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    height: 260,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      // Ensures the image respects the border radius
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          CachedNetworkImage(
                            imageUrl:
                                "https://images.unsplash.com/photo-1661366698983-3cb843219300?q=80&w=3132&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                            fit: BoxFit.cover,
                            placeholder: (context, url) => Container(
                              color: Colors.grey.shade200,
                            ),
                            errorWidget: (context, url, error) => const Center(
                              child: Icon(
                                Icons.error,
                                color: Colors.red,
                              ),
                            ),
                          ),
                          // Gradient overlay
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              height: 80,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.black.withOpacity(0.8),
                                    Colors.transparent,
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                ),
                              ),
                              alignment: Alignment.bottomLeft,
                              padding: const EdgeInsets.all(16),
                              child: Text(
                                "Chennai Central",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
