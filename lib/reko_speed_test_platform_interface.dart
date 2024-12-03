import 'package:flutter/foundation.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:reko_speed_test/src/models/server_selection_response.dart';
import 'package:tuple_dart/tuple.dart';

import 'reko_speed_test_method_channel.dart';
import 'src/callbacks_enum.dart';

typedef CancelListening = void Function();
typedef DoneCallback = void Function(double transferRate, SpeedUnit unit);
typedef ProgressCallback = void Function(
  double percent,
  double transferRate,
  SpeedUnit unit,
);
typedef ErrorCallback = void Function(String errorMessage, String speedTestError);
typedef CancelCallback = void Function();

abstract class RekoSpeedTestPlatform extends PlatformInterface {
  /// Constructs a RekoSpeedTestPlatform.
  RekoSpeedTestPlatform() : super(token: _token);

  static final Object _token = Object();

  static RekoSpeedTestPlatform _instance = MethodChannelRekoSpeedTest();

  /// The default instance of [RekoSpeedTestPlatform] to use.
  ///
  /// Defaults to [MethodChannelRekoSpeedTest].
  static RekoSpeedTestPlatform get instance => _instance;

  Map<int, Tuple4<ErrorCallback, ProgressCallback, DoneCallback, CancelCallback>> callbacksById =
      {};
  int downloadRate = 0;
  int uploadRate = 0;
  int downloadSteps = 0;
  int uploadSteps = 0;

  bool logEnabled = false;

  get isLogEnabled => logEnabled && kDebugMode;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [RekoSpeedTestPlatform] when
  /// they register themselves.
  static set instance(RekoSpeedTestPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<CancelListening> startDownloadTesting(
      {required DoneCallback onDone,
      required ProgressCallback onProgress,
      required ErrorCallback onError,
      required CancelCallback onCancel,
      required int fileSize,
      required String testServer}) {
    throw UnimplementedError('startDownloadTesting() has not been implemented.');
  }

  Future<CancelListening> startUploadTesting({
    required DoneCallback onDone,
    required ProgressCallback onProgress,
    required ErrorCallback onError,
    required CancelCallback onCancel,
    required int fileSize,
    required String testServer,
  }) {
    throw UnimplementedError('startUploadTesting() has not been implemented.');
  }

  Future<void> toggleLog({
    required bool value,
  }) {
    throw UnimplementedError('toggleLog() has not been implemented.');
  }

  Future<ServerSelectionResponse?> getDefaultServer() {
    throw UnimplementedError('getDefaultServer() has not been implemented.');
  }

  Future<bool> cancelTest() {
    throw UnimplementedError('cancelTest() has not been implemented.');
  }
}
