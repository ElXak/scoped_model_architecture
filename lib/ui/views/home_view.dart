import 'package:flutter/material.dart';

import '../../enums/view_states.dart';
import '../../scoped_models/home_model.dart';
import '../widgets/busy_overlay.dart';
import 'base_view.dart';
import 'error_view.dart';
import 'success_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
      builder: (context, child, model) => BusyOverlay(
        show: model.state == ViewState.Busy,
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              bool result = await model.saveData();
              if (result) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SuccessView(
                              title: 'Duplicate this text',
                            )));
              } else {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ErrorView()));
              }
            },
          ),
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // _getBodyUi(model.state),
                Text(model.title),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _getBodyUi(ViewState viewState) {
    switch (viewState) {
      case ViewState.Busy:
        return CircularProgressIndicator();
      case ViewState.Retrieved:

      default:
        return Text('Done');
    }
  }
}
