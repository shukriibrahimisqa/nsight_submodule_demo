import 'package:flutter_test/flutter_test.dart';
import 'package:ns_provider_demo/ns_provider_demo.dart';
import 'package:ns_provider_demo/ns_provider_demo_platform_interface.dart';
import 'package:ns_provider_demo/ns_provider_demo_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockNsProviderDemoPlatform
    with MockPlatformInterfaceMixin
    implements NsProviderDemoPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final NsProviderDemoPlatform initialPlatform = NsProviderDemoPlatform.instance;

  test('$MethodChannelNsProviderDemo is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelNsProviderDemo>());
  });

  test('getPlatformVersion', () async {
    NsProviderDemo nsProviderDemoPlugin = NsProviderDemo();
    MockNsProviderDemoPlatform fakePlatform = MockNsProviderDemoPlatform();
    NsProviderDemoPlatform.instance = fakePlatform;

    expect(await nsProviderDemoPlugin.getPlatformVersion(), '42');
  });
}
