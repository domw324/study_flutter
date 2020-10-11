import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cup_app.dart';
import 'model/cup_app_state_model.dart';

void main() {
  return runApp(
    ChangeNotifierProvider<AppStateModel>(
      create: (_) => AppStateModel()..loadProducts(),
      child: CupertinoStoreApp(),
    )
  );
}