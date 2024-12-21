import 'package:ar_app/constants/colors.dart';
import 'package:ar_app/modals/places_modals.dart';
import 'package:ar_app/screens/description_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// list of places
    final List<ChennaiPlaces> chennaiPlacesList = [
      /// Chennai Central
      ChennaiPlaces(
        placeImageUrl:
            "https://images.unsplash.com/photo-1661366698983-3cb843219300?q=80&w=3132&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        placeName: "Chennai Central",
        placeModalUrl: "assets/3d-modals/chennai-central.glb",
        placeDescription:
            "One of the most iconic railway stations in India, known for its heritage and architectural beauty.",
        placeLinkLocation: "https://www.google.com/maps?q=Chennai+Central",
      ),

      /// Marina Beach
      ChennaiPlaces(
        placeImageUrl:
            "https://images.unsplash.com/photo-1724992609079-75164f1ba2dd?q=80&w=3044&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        placeName: "Marina Beach",
        placeModalUrl: "https://example.com/modal/marina-beach",
        placeDescription:
            "The second-longest urban beach in the world, a must-visit for its serene sunsets and vibrant local culture.",
        placeLinkLocation: "https://www.google.com/maps?q=Marina+Beach",
      ),

      /// Santhome Church
      ChennaiPlaces(
        placeImageUrl:
            "https://imgs.search.brave.com/G34YfmwwL2YnzHVMWsEkobIAeJELt0-Ib4mPARbo64s/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9jYXRo/b2xpY3NocmluZWJh/c2lsaWNhLmNvbS93/cC1jb250ZW50L3Vw/bG9hZHMvU2FudGhv/bWUtQ2F0aGVkcmFs/LUJhc2lsaWNhLUNo/ZW5uYWktMS53ZWJw",
        placeName: "Santhome Church",
        placeModalUrl: "https://example.com/modal/santhome-church",
        placeDescription:
            "A historic basilica built in the 16th century over the tomb of St. Thomas, one of Jesus's apostles.",
        placeLinkLocation: "https://www.google.com/maps?q=Santhome+Church",
      ),

      /// Kapaleeshwarar Temple
      ChennaiPlaces(
        placeImageUrl:
            "https://imgs.search.brave.com/75F0U3M3XJ6X6LRbILoJrGmIRCy4BIzvS_wREs_-hrY/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvNDc5/NjI5OTc4L3Bob3Rv/L2thcGFsZWVzaHdh/cmFyLXRlbXBsZS1j/aGVubmFpLWluZGlh/LmpwZz9zPTYxMng2/MTImdz0wJms9MjAm/Yz1xWklNdlRnMWZU/SU51YU0zbGg1RGdu/RHNBQzUtcXkzU3JL/YWpObFc0WUZrPQ",
        placeName: "Kapaleeshwarar Temple",
        placeModalUrl: "https://example.com/modal/kapaleeshwarar-temple",
        placeDescription:
            "A stunning Dravidian-style temple dedicated to Lord Shiva, located in the heart of Mylapore.",
        placeLinkLocation:
            "https://www.google.com/maps?q=Kapaleeshwarar+Temple",
      ),

      /// Guindy National Park
      ChennaiPlaces(
        placeImageUrl:
            "https://imgs.search.brave.com/3IP1YKzZiIQ_clhIuBWZ1nDCowefOhm8TtEFcj-shgk/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9jaGVu/bmFpdG91cmlzbS50/cmF2ZWwvaW1hZ2Vz/L3BsYWNlcy10by12/aXNpdC9oZWFkZXJz/L2d1aW5keS1uYXRp/b25hbC1wYXJrLWNo/ZW5uYWktdG91cmlz/bS1lbnRyeS1mZWUt/dGltaW5ncy1ob2xp/ZGF5cy1yZXZpZXdz/LWhlYWRlci5qcGc",
        placeName: "Guindy National Park",
        placeModalUrl: "https://example.com/modal/guindy-national-park",
        placeDescription:
            "One of the smallest national parks in India, offering a serene retreat amidst lush greenery.",
        placeLinkLocation: "https://www.google.com/maps?q=Guindy+National+Park",
      ),

      /// Fort St. George
      ChennaiPlaces(
        placeImageUrl:
            "https://imgs.search.brave.com/1-eMfUL_NGGgK_3a8999v7QOS4POp9NUFGjhdqmkvgc/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9jaGVu/bmFpdG91cmlzbS50/cmF2ZWwvaW1hZ2Vz/L3BsYWNlcy10by12/aXNpdC9oZWFkZXJz/L2ZvcnQtc3QtZ2Vv/cmdlLWNoZW5uYWkt/dG91cmlzbS1lbnRy/eS1mZWUtdGltaW5n/cy1ob2xpZGF5cy1y/ZXZpZXdzLWhlYWRl/ci5qcGc",
        placeName: "Fort St. George",
        placeModalUrl: "https://example.com/modal/fort-st-george",
        placeDescription:
            "The first English fortress in India, now housing a museum and the Tamil Nadu legislative assembly.",
        placeLinkLocation: "https://www.google.com/maps?q=Fort+St.+George",
      ),

      /// Valluvar Kottam
      ChennaiPlaces(
        placeImageUrl:
            "https://imgs.search.brave.com/w3CY37VCUNuvYnMEpd8Q27Sg-IrkEm8PyQdJXtWhT70/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy83/LzdjL1ZhbGx1dmFy/X0tvdHRhbS5KUEc",
        placeName: "Valluvar Kottam",
        placeModalUrl: "https://example.com/modal/valluvar-kottam",
        placeDescription:
            "A grand monument dedicated to the classical Tamil poet and philosopher Thiruvalluvar.",
        placeLinkLocation: "https://www.google.com/maps?q=Valluvar+Kottam",
      ),

      /// Dakshinachitra Museum
      ChennaiPlaces(
        placeImageUrl:
            "https://imgs.search.brave.com/DRSUjPb8dtHnv-mpqsY420DdClj_RJnQZBP9nhDpS3c/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudHJhdmVsYW5k/bGVpc3VyZWFzaWEu/Y29tL3dwLWNvbnRl/bnQvdXBsb2Fkcy9z/aXRlcy8yLzIwMjQv/MDUvMjMwOTQxMjkv/QWdyYWhhcmFtLXN0/eWxlLWhvdXNlcy1t/b2RlbC1EYWtzaGlu/YUNoaXRyYS1BcnVu/LVN2LVNodXR0ZXJz/dG9jay5qcGc",
        placeName: "Dakshinachitra Museum",
        placeModalUrl: "https://example.com/modal/dakshinachitra-museum",
        placeDescription:
            "A cultural museum showcasing the rich heritage, arts, and crafts of South India.",
        placeLinkLocation:
            "https://www.google.com/maps?q=Dakshinachitra+Museum",
      ),

      /// Chepauk Stadium
      ChennaiPlaces(
        placeImageUrl:
            "https://imgs.search.brave.com/QegetyxqjbEssSV_b1q9b3XOpHdUlccFpPT1daqnI2Q/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pMS53/cC5jb20vZmFjdHMu/bmV0L3dwLWNvbnRl/bnQvdXBsb2Fkcy8y/MDIzLzA5LzE1LWFz/dG91bmRpbmctZmFj/dHMtYWJvdXQtbS1h/LWNoaWRhbWJhcmFt/LXN0YWRpdW0tMTY5/NDc1NjA0My5qcGc_/c3RyaXA9YWxs",
        placeName: "Chepauk Stadium",
        placeModalUrl: "assets/3d-modals/cricket-stadium.glb",
        placeDescription:
            "Known officially as M. A. Chidambaram Stadium, it is a historic cricket ground and home to unforgettable matches.",
        placeLinkLocation: "https://www.google.com/maps?q=Chepauk+Stadium",
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
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 20,
                  );
                },
                itemCount: chennaiPlacesList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final place = chennaiPlacesList[index];

                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DescriptionScreen(place: place);
                      }));
                    },
                    child: Container(
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
                            Hero(
                              tag: 'placeImage-${place.placeName}',
                              child: CachedNetworkImage(
                                imageUrl: place.placeImageUrl,
                                fit: BoxFit.cover,
                                placeholder: (context, url) => Container(
                                  color: Colors.grey.shade200,
                                ),
                                errorWidget: (context, url, error) =>
                                    const Center(
                                  child: Icon(
                                    Icons.error,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                            // Gradient overlay
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 100,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.black.withOpacity(0.9),
                                      Colors.transparent,
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                  ),
                                ),
                                alignment: Alignment.bottomLeft,
                                padding: const EdgeInsets.all(16),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      place.placeName,
                                      style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.favorite,
                                        color: Colors.grey,
                                        size: 24,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
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
