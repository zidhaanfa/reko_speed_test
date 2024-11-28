import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'reko_speed_test_platform_interface.dart';

/// An implementation of [RekoSpeedTestPlatform] that uses method channels.
class MethodChannelRekoSpeedTest extends RekoSpeedTestPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('reko_speed_test');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
