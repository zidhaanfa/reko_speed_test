// import 'package:flutter_test/flutter_test.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';
// import 'package:reko_speed_test/reko_speed_test.dart';
// import 'package:reko_speed_test/reko_speed_test_method_channel.dart';
// import 'package:reko_speed_test/reko_speed_test_platform_interface.dart';

// class MockRekoSpeedTestPlatform with MockPlatformInterfaceMixin implements RekoSpeedTestPlatform {
//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }

// void main() {
//   final RekoSpeedTestPlatform initialPlatform = RekoSpeedTestPlatform.instance;

//   test('$MethodChannelRekoSpeedTest is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelRekoSpeedTest>());
//   });

//   test('getPlatformVersion', () async {
//     RekoSpeedTest RekoSpeedTestPlugin = RekoSpeedTest();
//     MockRekoSpeedTestPlatform fakePlatform = MockRekoSpeedTestPlatform();
//     RekoSpeedTestPlatform.instance = fakePlatform;

//     // expect(await RekoSpeedTestPlugin.getPlatformVersion(), '42');
//   });
// }
