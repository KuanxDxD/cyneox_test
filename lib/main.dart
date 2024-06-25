import 'package:cyneox_test/app/app.locator.dart';
import 'package:cyneox_test/app/app.router.dart';
import 'package:cyneox_test/helpers/constants/constants.dart';
import 'package:cyneox_test/providers/detail_page_provider.dart';
import 'package:cyneox_test/providers/home_page_provider.dart';
import 'package:cyneox_test/providers/login_page_provider.dart';
import 'package:cyneox_test/providers/onboarding_page_provider.dart';
import 'package:cyneox_test/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<OnboardingPageProvider>(
          create: (context) => locator<OnboardingPageProvider>(),
        ),
        ChangeNotifierProvider<LoginPageProvider>(
          create: (context) => locator<LoginPageProvider>(),
        ),
        ChangeNotifierProvider<HomePageProvider>(
          create: (context) => locator<HomePageProvider>(),
        ),
        ChangeNotifierProvider<DetailPageProvider>(
          create: (context) => locator<DetailPageProvider>(),
        ),
      ],
      child: MaterialApp(
        title: 'Cyneox Test',
        navigatorKey: locator<NavigationService>().navigatorKey,
        onGenerateRoute: StackedRouter().onGenerateRoute,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
          scaffoldBackgroundColor: scaffoldBackgroundColor,
        ),
        initialRoute: Routes.onboardingPage,
      ),
    );
  }
}
