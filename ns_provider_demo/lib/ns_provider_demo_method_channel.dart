import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'ns_provider_demo_platform_interface.dart';

/// An implementation of [NsProviderDemoPlatform] that uses method channels.
class MethodChannelNsProviderDemo extends NsProviderDemoPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('ns_provider_demo');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
