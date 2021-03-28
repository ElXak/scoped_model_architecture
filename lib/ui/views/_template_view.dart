import 'package:flutter/material.dart';

import '../../scoped_models/home_model.dart';
import 'base_view.dart';

class TemplateView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
      builder: (context, child, model) => Scaffold(
        body: Center(
          child: Text(this.runtimeType.toString()),
        ),
      ),
    );
  }
}
