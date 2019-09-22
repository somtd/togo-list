import 'package:flutter/foundation.dart';

import '../models/togo.dart';

class ToGos with ChangeNotifier {
  List<ToGo> _items = [];

  List<ToGo> get items {
    return [..._items];
  }
}
