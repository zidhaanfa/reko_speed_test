/*class MockRekoSpeedTestPlatform
    with MockPlatformInterfaceMixin
    implements RekoSpeedTestPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final RekoSpeedTestPlatform initialPlatform = RekoSpeedTestPlatform.instance;

  test('$MethodChannelRekoSpeedTest is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelRekoSpeedTest>());
  });

  test('getPlatformVersion', () async {
    RekoSpeedTest RekoSpeedTestPlugin = RekoSpeedTest();
    MockRekoSpeedTestPlatform fakePlatform = MockRekoSpeedTestPlatform();
    RekoSpeedTestPlatform.instance = fakePlatform;
  
    expect(await RekoSpeedTestPlugin.getPlatformVersion(), '42');
  });
}*/
