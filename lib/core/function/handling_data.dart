import 'package:quran/core/constant/enum/state_app.dart';

handlingData(response) {
  if (response is StatusApp) {
    return response;
  } else {
    return StatusApp.success;
  }
}
