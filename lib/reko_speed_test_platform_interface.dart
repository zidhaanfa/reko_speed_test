import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'reko_speed_test_method_channel.dart';

abstract class RekoSpeedTestPlatform extends PlatformInterface {
  /// Constructs a RekoSpeedTestPlatform.
  RekoSpeedTestPlatform() : super(token: _token);

  static final Object _token = Object();

  static RekoSpeedTestPlatform _instance = MethodChannelRekoSpeedTest();

  /// The default instance of [RekoSpeedTestPlatform] to use.
  ///
  /// Defaults to [MethodChannelRekoSpeedTest].
  static RekoSpeedTestPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [RekoSpeedTestPlatform] when
  /// they register themselves.
  static set instance(RekoSpeedTestPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
