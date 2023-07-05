
import 'ns_provider_demo_platform_interface.dart';

class NsProviderDemo {
  Future<String?> getPlatformVersion() {
    return NsProviderDemoPlatform.instance.getPlatformVersion();
  }
}
