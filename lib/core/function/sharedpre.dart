import 'package:quran/core/class/services.dart';

addSharedpreint(key, val) {
  Services.sharedPreferences.setInt(key, val);
}

searchsharedpreint(val) {
  return Services.sharedPreferences.getInt(val);
}

addSharedprestring(key, val) {
  Services.sharedPreferences.setString(key, val);
}

searchsharedprestring(val) {
  return Services.sharedPreferences.getString(val);
}
