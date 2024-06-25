import 'package:cyneox_test/providers/detail_page_provider.dart';
import 'package:cyneox_test/providers/home_page_provider.dart';
import 'package:cyneox_test/providers/login_page_provider.dart';
import 'package:cyneox_test/providers/onboarding_page_provider.dart';
import 'package:cyneox_test/repositories/sample_repository.dart';
import 'package:cyneox_test/services/navigation_service.dart';
import 'package:cyneox_test/services/sample_service.dart';
import 'package:cyneox_test/uis/pages/home/detail_page.dart';
import 'package:cyneox_test/uis/pages/home/home_page.dart';
import 'package:cyneox_test/uis/pages/login/login_page.dart';
import 'package:cyneox_test/uis/pages/onboarding/onboarding_page.dart';
import 'package:stacked/stacked_annotations.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: OnboardingPage),
    MaterialRoute(page: LoginPage),
    MaterialRoute(page: HomePage),
    MaterialRoute(page: DetailPage),
  ],
  dependencies: [
    // service
    LazySingleton(classType: SampleService),
    LazySingleton(classType: NavigationService),

    // repository
    LazySingleton(classType: SampleRepository),

    // provider
    Factory(classType: OnboardingPageProvider),
    Factory(classType: LoginPageProvider),
    Factory(classType: HomePageProvider),
    Factory(classType: DetailPageProvider),
  ],
)
class App {}
