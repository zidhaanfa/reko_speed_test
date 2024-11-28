#import "RekoSpeedTestPlugin.h"
#if __has_include(<reko_speed_test/reko_speed_test-Swift.h>)
#import <reko_speed_test/reko_speed_test-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "reko_speed_test-Swift.h"
#endif

@implementation RekoSpeedTestPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftRekoSpeedTestPlugin registerWithRegistrar:registrar];
}
@end
