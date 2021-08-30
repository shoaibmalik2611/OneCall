import 'package:flutter/material.dart';
import 'package:one_call/utils/constants.dart';
import 'package:one_call/utils/routeGenerator.dart';
import 'package:one_call/utils/sizeConfig.dart';
import 'package:one_call/utils/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(LayoutBuilder(builder: (context, constraints) {
    return OrientationBuilder(builder: (context, orientation) {
      SizeConfig().init(constraints, orientation);
      return MyApp();
    });
  }));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'One Call',
      initialRoute: rHome,
      theme: AppTheme.lightTheme,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
