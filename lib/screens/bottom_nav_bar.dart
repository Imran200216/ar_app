import 'package:ar_app/constants/colors.dart';
import 'package:ar_app/providers/bottom_provider.dart';
import 'package:ar_app/screens/bottom_nav_screens/favorite_screen.dart';
import 'package:ar_app/screens/bottom_nav_screens/home_screen.dart';
import 'package:ar_app/screens/bottom_nav_screens/profile_screen.dart';
import 'package:double_tap_to_exit/double_tap_to_exit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  /// Bottom navigation bar screens
  final List<Widget> widgetList = [
    const HomeScreen(),
    const FavoriteScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer<BottomNavProvider>(
      builder: (context, bottomNavProvider, child) {
        return WillPopScope(
          onWillPop: () async {
            if (bottomNavProvider.currentIndex != 0) {
              // If not on the first screen, go to the previous screen
              bottomNavProvider.setIndex(0);
              return false;
            } else {
              // Allow the app to be popped (exit) if already on the first screen
              return true;
            }
          },
          child: DoubleTapToExit(
            snackBar: SnackBar(
              behavior: SnackBarBehavior.floating,
              backgroundColor: AppColors.snackBarBgColor,
              content: Text(
                "Tap again to exit!",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: size.width * 0.040,
                  color: AppColors.secondaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            child: SafeArea(
              child: Scaffold(
                /// Bottom navigation bar
                bottomNavigationBar: BottomNavigationBar(
                  onTap: (index) {
                    bottomNavProvider.setIndex(index);
                  },
                  backgroundColor: AppColors.secondaryColor,
                  currentIndex: bottomNavProvider.currentIndex,
                  selectedItemColor:
                      AppColors.bottomNavBarItemIconSelectedColor,
                  unselectedItemColor:
                      AppColors.bottomNavBarItemIconUnSelectedColor,
                  unselectedLabelStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.bottomNavBarItemIconUnSelectedColor,
                  ),
                  selectedLabelStyle: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.bottomNavBarItemIconSelectedColor,
                  ),
                  // showSelectedLabels: false,
                  // showUnselectedLabels: false,
                  items: <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        'assets/icons/bottom-nav-icons/home-icon.svg',
                        color: bottomNavProvider.currentIndex == 0
                            ? AppColors.bottomNavBarItemIconSelectedColor
                            : AppColors.bottomNavBarItemIconUnSelectedColor,
                        height: 24,
                        width: 24,
                      ),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        'assets/icons/bottom-nav-icons/favorite-icon.svg',
                        color: bottomNavProvider.currentIndex == 1
                            ? AppColors.bottomNavBarItemIconSelectedColor
                            : AppColors.bottomNavBarItemIconUnSelectedColor,
                        height: 24,
                        width: 24,
                      ),
                      label: 'Favorite',
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        'assets/icons/bottom-nav-icons/profile-icon.svg',
                        color: bottomNavProvider.currentIndex == 2
                            ? AppColors.bottomNavBarItemIconSelectedColor
                            : AppColors.bottomNavBarItemIconUnSelectedColor,
                        height: 24,
                        width: 24,
                      ),
                      label: 'Profile',
                    ),
                  ],
                ),

                body: IndexedStack(
                  index: bottomNavProvider.currentIndex,
                  children: widgetList,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
