import 'package:cyneox_test/app/app.locator.dart';
import 'package:cyneox_test/app/app.router.dart';
import 'package:cyneox_test/models/sample_model.dart';
import 'package:cyneox_test/services/navigation_service.dart';
import 'package:cyneox_test/services/sample_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class HomePageProvider extends ChangeNotifier {
  final _sampleService = locator<SampleService>();
  final _navService = locator<NavigationService>();

  void initStateHome() {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      getSampleModel();
    });
  }

  List<SampleModel> sample = [];
  bool isLoading = false;
  Future<void> getSampleModel() async {
    isLoading = true;
    notifyListeners();

    sample = await _sampleService.getSampleModel();
    await Future.delayed(const Duration(seconds: 2));

    isLoading = false;
    notifyListeners();
  }

  void goToDetailPage({
    required SampleModel appInfo,
  }) =>
      _navService.pushNamed(
        Routes.detailPage,
        arguments: DetailPageArguments(appInfo: appInfo),
      );
}
