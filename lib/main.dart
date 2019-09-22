import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:togo_list/providers/togos.dart';

import './screens/togo_list_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: ToGos(),
      child: MaterialApp(
        title: 'TOGO List',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          // accentColor: Colors.amber,
        ),
        home: ToGoListScreen(),
      ),
    );
  }
}
