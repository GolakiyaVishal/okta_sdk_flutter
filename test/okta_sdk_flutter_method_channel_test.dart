import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:okta_sdk_flutter/okta_sdk_flutter_method_channel.dart';

void main() {
  MethodChannelOktaSdkFlutter platform = MethodChannelOktaSdkFlutter();
  const MethodChannel channel = MethodChannel('okta_sdk_flutter');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
