import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:togo_list/providers/togos.dart';

import './screens/togo_list_screen.dart';
import './screens/add_togo_screen.dart';

Future main() async {
  await DotEnv().load('.env');
  runApp(MyApp());
}

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
        routes: {
          AddToGoScreen.routeName: (context) => AddToGoScreen(),
        },
      ),
    );
  }
}
