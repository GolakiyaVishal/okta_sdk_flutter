import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'okta_sdk_flutter_method_channel.dart';

abstract class OktaSdkFlutterPlatform extends PlatformInterface {
  /// Constructs a OktaSdkFlutterPlatform.
  OktaSdkFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static OktaSdkFlutterPlatform _instance = MethodChannelOktaSdkFlutter();

  /// The default instance of [OktaSdkFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelOktaSdkFlutter].
  static OktaSdkFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [OktaSdkFlutterPlatform] when
  /// they register themselves.
  static set instance(OktaSdkFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
