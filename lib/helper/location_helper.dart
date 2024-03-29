import 'package:flutter_dotenv/flutter_dotenv.dart';

class LocationHelper {
  static String apiKey = DotEnv().env['GOOGLE_MAP_API_KEY'];
  static String generateLocationPreviewImage(
      {double latitude, double longitude}) {
    print(apiKey);
    return 'https://maps.googleapis.com/maps/api/staticmap?center=&$latitude,$longitude&zoom=8&size=600x300&maptype=roadmap&markers=color:blue%7Clabel:S%7C$latitude,$longitude&markers=color:green%7Clabel:G%$latitude,$longitude&markers=color:red%7Clabel:A%7C$latitude,$longitude&key=$apiKey';
  }
}
