import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'ns_provider_demo_method_channel.dart';

abstract class NsProviderDemoPlatform extends PlatformInterface {
  /// Constructs a NsProviderDemoPlatform.
  NsProviderDemoPlatform() : super(token: _token);

  static final Object _token = Object();

  static NsProviderDemoPlatform _instance = MethodChannelNsProviderDemo();

  /// The default instance of [NsProviderDemoPlatform] to use.
  ///
  /// Defaults to [MethodChannelNsProviderDemo].
  static NsProviderDemoPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [NsProviderDemoPlatform] when
  /// they register themselves.
  static set instance(NsProviderDemoPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
