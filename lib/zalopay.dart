import 'dart:async';

import 'package:flutter/services.dart';

class Zalopay {
  static const MethodChannel _channel =
      const MethodChannel('zalopay');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
