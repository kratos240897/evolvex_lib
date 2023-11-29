import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view_model.dart';

abstract class ViewModelWidget<T extends ViewModel> extends StatelessWidget {
  const ViewModelWidget({super.key});

  Widget buildWidget(BuildContext context, T viewModel);

  @override
  Widget build(BuildContext context) {
    return Consumer<T>(builder: (context, viewModel, child) {
      return buildWidget(context, viewModel);
    });
  }
}