#import "MdnsPlugin.h"
#if __has_include(<mdns/mdns-Swift.h>)
#import <mdns/mdns-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "mdns-Swift.h"
#endif

@implementation MdnsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMdnsPlugin registerWithRegistrar:registrar];
}
@end
