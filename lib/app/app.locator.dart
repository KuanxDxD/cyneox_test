// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, implementation_imports, depend_on_referenced_packages

import 'package:stacked_shared/stacked_shared.dart';

import '../providers/detail_page_provider.dart';
import '../providers/home_page_provider.dart';
import '../providers/login_page_provider.dart';
import '../providers/onboarding_page_provider.dart';
import '../repositories/sample_repository.dart';
import '../services/navigation_service.dart';
import '../services/sample_service.dart';

final locator = StackedLocator.instance;

Future<void> setupLocator({
  String? environment,
  EnvironmentFilter? environmentFilter,
}) async {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerLazySingleton(() => SampleService());
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => SampleRepository());
  locator.registerFactory(() => OnboardingPageProvider());
  locator.registerFactory(() => LoginPageProvider());
  locator.registerFactory(() => HomePageProvider());
  locator.registerFactory(() => DetailPageProvider());
}
