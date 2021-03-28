import '../get_it.dart';
import '../services/storage_service.dart';
import 'base_model.dart';

class HomeModel extends BaseModel {
  StorageService storageService = getIt<StorageService>();

  String _title = 'HomeModel';
  String get title => _title;

  Future<bool> saveData() async {
    setState(ViewState.Busy);
    _title = 'Saving Data';
    await storageService.saveData();
    _title = 'Data Saved';
    setState(ViewState.Retrieved);

    return true;
  }
}
