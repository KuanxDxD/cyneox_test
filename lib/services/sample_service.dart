import 'package:cyneox_test/app/app.locator.dart';
import 'package:cyneox_test/models/sample_model.dart';
import 'package:cyneox_test/repositories/sample_repository.dart';

class SampleService {
  final _sampleRepo = locator<SampleRepository>();

  Future<List<SampleModel>> getSampleModel() async {
    final result = await _sampleRepo.getSampleModel();
    return result.data ?? [];
  }
}
