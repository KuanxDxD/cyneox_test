import 'package:cyneox_test/helpers/constants/constants.dart';
import 'package:cyneox_test/providers/home_page_provider.dart';
import 'package:cyneox_test/uis/pages/home/screens/discover_screen.dart';
import 'package:cyneox_test/uis/pages/home/screens/home_screen.dart';
import 'package:cyneox_test/uis/pages/home/screens/website_screen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Provider.of<HomePageProvider>(context, listen: false).initStateHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        backgroundColor: scaffoldBackgroundColor,
        controller: PersistentTabController(initialIndex: 0),
        tabs: [
          PersistentTabConfig(
            screen: const HomeScreen(),
            item: ItemConfig(
              icon: const Icon(Icons.home),
              title: 'Home',
              activeForegroundColor: primaryColor,
              inactiveForegroundColor: whiteColor,
            ),
          ),
          PersistentTabConfig(
            screen: const WebsiteScreen(),
            item: ItemConfig(
              icon: const Icon(Icons.public),
              title: 'Web',
              activeForegroundColor: primaryColor,
              inactiveForegroundColor: whiteColor,
            ),
          ),
          PersistentTabConfig(
            screen: const DiscoverScreen(),
            item: ItemConfig(
              icon: const Icon(Icons.explore),
              title: 'Discover',
              activeForegroundColor: primaryColor,
              inactiveForegroundColor: whiteColor,
            ),
          ),
          PersistentTabConfig(
            screen: Container(),
            item: ItemConfig(
              icon: const Icon(Icons.account_circle_outlined),
              title: 'Profile',
              activeForegroundColor: primaryColor,
              inactiveForegroundColor: whiteColor,
            ),
          ),
        ],
        navBarBuilder: (navBarConfig) => Style6BottomNavBar(
          navBarConfig: navBarConfig,
          navBarDecoration: const NavBarDecoration(color: blackColor),
        ),
      ),
    );
  }
}
