import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'pages/welcome_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shortcuts(
        shortcuts: <LogicalKeySet, Intent>{
          LogicalKeySet(LogicalKeyboardKey.select): const ActivateIntent(),
        },
        child: MaterialApp(
          title: 'Better player demo',
          theme: ThemeData(
            primarySwatch: Colors.green,
          ),
          home: WelcomePage(),
        ));
  }
}
