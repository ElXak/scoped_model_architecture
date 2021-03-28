import 'base_model.dart';

class SuccessModel extends BaseModel {
  String _title = 'No text yet';

  String get title => _title;

  Future fetchDuplicateText(String text) async {
    setState(ViewState.Busy);
    await Future.delayed(Duration(seconds: 2));
    _title = '$text $text';
    setState(ViewState.Retrieved);
  }
}
