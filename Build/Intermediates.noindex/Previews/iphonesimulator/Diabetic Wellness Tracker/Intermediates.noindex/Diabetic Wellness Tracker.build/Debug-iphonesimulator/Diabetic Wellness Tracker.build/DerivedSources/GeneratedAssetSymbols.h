#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The resource bundle ID.
static NSString * const ACBundleID AC_SWIFT_PRIVATE = @"Jacob-Croket.Diabetic-Wellness-Tracker";

/// The "AccentColor" asset catalog color resource.
static NSString * const ACColorNameAccentColor AC_SWIFT_PRIVATE = @"AccentColor";

/// The "Primary 1" asset catalog color resource.
static NSString * const ACColorNamePrimary1 AC_SWIFT_PRIVATE = @"Primary 1";

/// The "Secondary 1" asset catalog color resource.
static NSString * const ACColorNameSecondary1 AC_SWIFT_PRIVATE = @"Secondary 1";

/// The "GratefullyDiabeticLogo" asset catalog image resource.
static NSString * const ACImageNameGratefullyDiabeticLogo AC_SWIFT_PRIVATE = @"GratefullyDiabeticLogo";

#undef AC_SWIFT_PRIVATE
