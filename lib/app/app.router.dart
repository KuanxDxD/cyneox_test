// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cyneox_test/models/sample_model.dart' as _i7;
import 'package:cyneox_test/uis/pages/home/detail_page.dart' as _i5;
import 'package:cyneox_test/uis/pages/home/home_page.dart' as _i4;
import 'package:cyneox_test/uis/pages/login/login_page.dart' as _i3;
import 'package:cyneox_test/uis/pages/onboarding/onboarding_page.dart' as _i2;
import 'package:flutter/material.dart' as _i6;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i8;

class Routes {
  static const onboardingPage = '/onboarding-page';

  static const loginPage = '/login-page';

  static const homePage = '/home-page';

  static const detailPage = '/detail-page';

  static const all = <String>{
    onboardingPage,
    loginPage,
    homePage,
    detailPage,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.onboardingPage,
      page: _i2.OnboardingPage,
    ),
    _i1.RouteDef(
      Routes.loginPage,
      page: _i3.LoginPage,
    ),
    _i1.RouteDef(
      Routes.homePage,
      page: _i4.HomePage,
    ),
    _i1.RouteDef(
      Routes.detailPage,
      page: _i5.DetailPage,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.OnboardingPage: (data) {
      return _i6.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.OnboardingPage(),
        settings: data,
      );
    },
    _i3.LoginPage: (data) {
      return _i6.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.LoginPage(),
        settings: data,
      );
    },
    _i4.HomePage: (data) {
      return _i6.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.HomePage(),
        settings: data,
      );
    },
    _i5.DetailPage: (data) {
      final args = data.getArgs<DetailPageArguments>(nullOk: false);
      return _i6.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i5.DetailPage(key: args.key, appInfo: args.appInfo),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class DetailPageArguments {
  const DetailPageArguments({
    this.key,
    required this.appInfo,
  });

  final _i6.Key? key;

  final _i7.SampleModel appInfo;

  @override
  String toString() {
    return '{"key": "$key", "appInfo": "$appInfo"}';
  }

  @override
  bool operator ==(covariant DetailPageArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.appInfo == appInfo;
  }

  @override
  int get hashCode {
    return key.hashCode ^ appInfo.hashCode;
  }
}

extension NavigatorStateExtension on _i8.NavigationService {
  Future<dynamic> navigateToOnboardingPage([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.onboardingPage,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginPage([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginPage,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToHomePage([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homePage,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToDetailPage({
    _i6.Key? key,
    required _i7.SampleModel appInfo,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.detailPage,
        arguments: DetailPageArguments(key: key, appInfo: appInfo),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOnboardingPage([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.onboardingPage,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginPage([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginPage,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomePage([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homePage,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithDetailPage({
    _i6.Key? key,
    required _i7.SampleModel appInfo,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.detailPage,
        arguments: DetailPageArguments(key: key, appInfo: appInfo),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
