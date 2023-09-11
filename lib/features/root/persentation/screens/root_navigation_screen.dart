import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:shop_smart/features/cart/persentation/screens/cart_screen.dart';
import 'package:shop_smart/features/home/persentation/screens/home_screen.dart';
import 'package:shop_smart/features/profile/persentation/screens/profile_screen.dart';
import 'package:shop_smart/features/search/persentation/screens/search_screen.dart';

class RootNavigationScreen extends StatefulWidget {
  const RootNavigationScreen({super.key});

  @override
  State<RootNavigationScreen> createState() => _RootNavigationScreenState();
}

class _RootNavigationScreenState extends State<RootNavigationScreen> {
  List<Widget> screens = [
    const HomeScreen(),
    const SearchScreen(),
    const CartScreen(),
    const ProfileScreen()
  ];
  PageController? pageController;

  int currentScreen = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: currentScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: screens,

      ),
      bottomNavigationBar: NavigationBar(

        onDestinationSelected: (index) {
          setState(() {
            currentScreen = index;

          });
          pageController!.jumpToPage(currentScreen);

        },
        selectedIndex: currentScreen,
        destinations:  const [
          NavigationDestination(
            selectedIcon: Icon(IconlyBold.home),
              icon: Icon(IconlyLight.home),
              label: 'Home'),
          NavigationDestination(
              selectedIcon: Icon(IconlyBold.search),

              icon: Icon(IconlyLight.search), label: 'Search'),
          NavigationDestination(
              selectedIcon: Icon(IconlyBold.bag2),

              icon: Badge(
                  label: Center(child: Text('6' , style: TextStyle(
                    fontSize: 14 ,
                    color: Colors.grey
                  ),)),
                  child: Icon(IconlyLight.bag2)), label: 'Cart'),
          NavigationDestination(
              selectedIcon: Icon(IconlyBold.profile),

              icon: Icon(IconlyLight.profile), label: 'Profile'),
        ],
      ),
    );
  }
}
