import 'package:flutter_test/flutter_test.dart';
import 'package:okta_sdk_flutter/okta_sdk_flutter.dart';
import 'package:okta_sdk_flutter/okta_sdk_flutter_platform_interface.dart';
import 'package:okta_sdk_flutter/okta_sdk_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockOktaSdkFlutterPlatform
    with MockPlatformInterfaceMixin
    implements OktaSdkFlutterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final OktaSdkFlutterPlatform initialPlatform = OktaSdkFlutterPlatform.instance;

  test('$MethodChannelOktaSdkFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelOktaSdkFlutter>());
  });

  test('getPlatformVersion', () async {
    OktaSDK oktaSdkFlutterPlugin = OktaSDK();
    MockOktaSdkFlutterPlatform fakePlatform = MockOktaSdkFlutterPlatform();
    OktaSdkFlutterPlatform.instance = fakePlatform;

    // expect(await oktaSdkFlutterPlugin.getPlatformVersion(), '42');
  });
}
