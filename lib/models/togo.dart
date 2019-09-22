import 'package:flutter/foundation.dart';

class ToGoLocation {
  final double latitude;
  final double longitude;
  final String address;

  ToGoLocation({
    @required this.latitude,
    @required this.longitude,
    @required this.address,
  });
}

class ToGo {
  final String id;
  final String title;
  final ToGoLocation location;
  final String image; //TODO:画像関連の別クラスをつくる

  ToGo({
    @required this.id,
    @required this.title,
    @required this.location,
    @required this.image,
  });
}
