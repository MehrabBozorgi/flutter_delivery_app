import 'package:flutter/material.dart';
import 'package:flutter_pizza_delivery_ui/screens/second_screen.dart';
import 'package:flutter_pizza_delivery_ui/tools/colors.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class BottomNavScreen extends StatelessWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);
    List<Widget> _buildScreens() {
      return [
        const SecondScreen(),
        const SecondScreen(),
        const SecondScreen(),
        const SecondScreen(),
        const SecondScreen(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.home),
          inactiveIcon: const Icon(Icons.home_outlined),
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: darkColor,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.person),
          inactiveIcon: const Icon(Icons.person_outline_rounded),
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: darkColor,
        ),

        PersistentBottomNavBarItem(
          icon: const Icon(Icons.shopping_bag_outlined,color: Colors.white,),
          inactiveIcon: const Icon(Icons.shopping_bag,color: Colors.white,),
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: darkColor,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.favorite),
          inactiveIcon: const Icon(Icons.favorite_border_rounded),
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: darkColor,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.settings),
          inactiveIcon: const Icon(Icons.settings_outlined),
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: darkColor,
        ),
      ];
    }

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      // Default is Colors.white.
      handleAndroidBackButtonPress: true,
      // Default is true.
      resizeToAvoidBottomInset: true,
      // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true,
      // Default is true.
      hideNavigationBarWhenKeyboardShows: true,
      // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: const Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style16, // Choose the nav bar style with this property.
    );
  }
}
