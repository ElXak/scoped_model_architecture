import 'package:flutter/material.dart';
import 'package:scoped_model_architecture/enums/view_states.dart';
import 'package:scoped_model_architecture/ui/widgets/busy_overlay.dart';

import '../../scoped_models/success_model.dart';
import 'base_view.dart';

class SuccessView extends StatelessWidget {
  final String title;

  SuccessView({this.title});

  @override
  Widget build(BuildContext context) {
    return BaseView<SuccessModel>(
      onModelReady: (model) => model.fetchDuplicateText(title),
      builder: (context, child, model) => BusyOverlay(
        show: model.state == ViewState.Busy,
        child: Scaffold(
          body: Center(
            // child: Text(this.runtimeType.toString()),
            child: Text(model.title),
          ),
        ),
      ),
    );
  }
}
