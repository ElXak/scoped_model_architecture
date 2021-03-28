import 'package:scoped_model/scoped_model.dart';

import '../enums/view_states.dart';

export '../enums/view_states.dart';

class BaseModel extends Model {
  ViewState _state;
  ViewState get state => _state;

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }
}
