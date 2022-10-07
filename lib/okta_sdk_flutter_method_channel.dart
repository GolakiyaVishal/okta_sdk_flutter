import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'okta_sdk_flutter_platform_interface.dart';

/// An implementation of [OktaSdkFlutterPlatform] that uses method channels.
class MethodChannelOktaSdkFlutter extends OktaSdkFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('okta_sdk_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
