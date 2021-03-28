import 'package:get_it/get_it.dart';

import 'scoped_models/error_model.dart';
import 'scoped_models/home_model.dart';
import 'scoped_models/success_model.dart';
import 'services/storage_service.dart';

GetIt getIt = GetIt.instance;

void setup() {
  // Register services
  getIt.registerLazySingleton<StorageService>(() => StorageService());
  // Register models
  getIt.registerFactory<HomeModel>(() => HomeModel());
  getIt.registerFactory<SuccessModel>(() => SuccessModel());
  getIt.registerFactory<ErrorModel>(() => ErrorModel());
}
