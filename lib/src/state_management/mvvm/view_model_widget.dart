import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

import 'view_model.dart';

abstract class ViewModelWidget<T extends ViewModel> extends HookWidget {
  const ViewModelWidget({super.key});

  Widget buildWidget(BuildContext context, T viewModel);

  Future<void> init(T viewModel);

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      init(Provider.of<T>(context));
      return null;
    }, []);
    return Consumer<T>(builder: (context, viewModel, child) {
      return buildWidget(context, viewModel);
    });
  }
}
