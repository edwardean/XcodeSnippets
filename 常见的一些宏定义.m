// 常见的一些宏定义
// 常见的一些宏定义，用到预编译头文件中
//
// IDECodeSnippetCompletionPrefix: debug
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 20888CE5-13E0-4B11-9BE3-4EEEB93DB277
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
#ifdef DEBUG
#define debugLog(...) NSLog(__VA_ARGS__)
#define debugMethod() NSLog(@"%s", __func__)
#else
#define debugLog(...) do { } while (0)
#define debugMethod() do { } while (0)
#endif


/*单例*/
#undef	DECLARE_SINGLETON
#define DECLARE_SINGLETON( __class ) \
+ (__class *)sharedInstance __attribute__((const));

#undef	IMPLEMENT_SINGLETON
#define IMPLEMENT_SINGLETON( __class ) \
+ (__class *)sharedInstance \
{ \
static dispatch_once_t once; \
static __class * __singleton__; \
dispatch_once( &once, ^{ __singleton__ = [[__class alloc] init]; } ); \
return __singleton__; \
}


/*屏幕尺寸信息*/
#define IS_IP_5 (IS_IPHONE && IS_IPHONE5)
#define IS_IP_4_AND_BELOW (IS_IPHONE && !IS_IPHONE5)
#define isiPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
#define SCREEN_W [[UIScreen mainScreen] bounds].size.width
#define SCREEN_H [[UIScreen mainScreen] bounds].size.height
#define _isRetina ( [[[UIDevice currentDevice] systemVersion] intValue] >= 4 && [[UIScreen mainScreen] scale] == 2.0 )
#define SYSTEM_VERSION [[[UIDevice currentDevice] systemVersion] floatValue]

//====== 辅助工具 =====
#define RGBCOLOR(r,g,b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1]
#define RGBACOLOR(r,g,b,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]
#define isiPhone5 CGSizeEqualToSize([[UIScreen mainScreen] preferredMode].size,CGSizeMake(640, 1136))

//路径
#define PATH_OF_APP_HOME    NSHomeDirectory()
#define PATH_OF_TEMP        NSTemporaryDirectory()
#define PATH_OF_DOCUMENT    [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0]
/*
 *  System Versioning Preprocessor Macros
 */
#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)


//AutoLayout
#define VFL(superView,vs,VFString) [(superView) addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:(VFString) options:0 metrics:nil views:(vs)]]
#define VFL_O(superView,opt,vs,VFString) [(superView) addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:(VFString) options:(opt) metrics:nil views:(vs)]]
#define VFL_M(superView,metr,vs,VFString) [(superView) addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:(VFString) options:0 metrics:(metr) views:(vs)]]
#define VFL_OM(superView,opt,metr,vs,VFString) [(superView) addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:(VFString) options:(opt) metrics:(metr) views:(vs)]]

#define LC(vs,VFString) [NSLayoutConstraint constraintsWithVisualFormat:(VFString) options:0 metrics:nil views:(vs)]
#define LC_O(opt,vs,VFString) [NSLayoutConstraint constraintsWithVisualFormat:(VFString) options:(opt) metrics:nil views:(vs)]
#define LC_M(metr,vs,VFString) [NSLayoutConstraint constraintsWithVisualFormat:(VFString) options:0 metrics:(metr) views:(vs)]
#define LC_OM(opt,metr,vs,VFString) [NSLayoutConstraint constraintsWithVisualFormat:(VFString) options:(opt) metrics:(metr) views:(vs)]

#define VFL_REMOVE(view) [(view) removeConstraints:[(view) constraints]]


//nsstring
#define EQUAL_STRING(a, b) ([a isEqualToString:b])
static inline BOOL verifiedString(id strlike) {
    if (strlike && ![strlike isEqual:[NSNull null]] && [[strlike class] isSubclassOfClass:[NSString class]] && ((NSString*)strlike).length > 0) {
        return YES;
    }else{
        return NO;
    }
}

//nsnumber
static inline BOOL verifiedNSNumber(id numlike) {
    if (numlike && ![numlike isEqual:[NSNull null]] && [[numlike class] isSubclassOfClass:[NSNumber class]]) {
        return YES;
    }else{
        return NO;
    }
}

//nsarray
static inline BOOL verifiedNSArray(id arraylike) {
    if (arraylike && ![arraylike isEqual:[NSNull null]] && [[arraylike class] isSubclassOfClass:[NSArray class]] && [arraylike count] > 0) {
        return YES;
    }else{
        return NO;
    }
}

//nsdictionary
static inline BOOL verifiedNSDictionary(id dictlike) {
    if (dictlike && ![dictlike isEqual:[NSNull null]] && [[dictlike class] isSubclassOfClass:[NSDictionary class]]) {
        return YES;
    }else{
        return NO;
    }
}


#pragma mark -
#pragma mark - version related
static inline NSString* releaseVersion(void){
    NSBundle *bundle = [NSBundle mainBundle];
    return [bundle objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
}

static inline NSString* developmentVersion(){
    NSBundle *bundle = [NSBundle mainBundle];
    return [bundle objectForInfoDictionaryKey:@"CFBundleVersion"];
}

//生成md5
static inline NSString* md5String(NSString* s) {
    const char *str = [s UTF8String];
    unsigned char r[CC_MD5_DIGEST_LENGTH];
    CC_MD5(str, (CC_LONG)strlen(str), r);
    return [NSString stringWithFormat:@"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            r[0], r[1], r[2], r[3], r[4], r[5], r[6], r[7], r[8], r[9], r[10], r[11], r[12], r[13], r[14], r[15]];
}


//动态替换类库方法
#import <objc/runtime.h>
static void MethodSwizzle(Class c, SEL origSEL, SEL overrideSEL)
{
    Method origMethod = class_getInstanceMethod(c, origSEL);
    Method overrideMethod = class_getInstanceMethod(c, overrideSEL);
    if (class_addMethod(c, origSEL, method_getImplementation(overrideMethod), method_getTypeEncoding(overrideMethod))) {
        class_replaceMethod(c, overrideSEL, method_getImplementation(origMethod), method_getTypeEncoding(origMethod));
    } else {
        method_exchangeImplementations(origMethod, overrideMethod);
    }
}

/*!
 @method getDeviceModel
 @abstract Gets the device model string.
 @return a platform string identifying the device
 */
NSString *getDeviceModel(void){
    size_t size;
    sysctlbyname("hw.machine", NULL, &size, NULL, 0);
    char *machine = malloc(size);
    sysctlbyname("hw.machine", machine, &size, NULL, 0);
    NSString *platform = [NSString stringWithCString:machine encoding:NSUTF8StringEncoding];
    free(machine);
    if (!platform) {
        platform = @"未知";
    }
    return platform;
}

static inline NSString *getMACAddress(void){
    static NSString *macAddress = nil;
    if (macAddress == nil)
    {
        //set up managment information base
        NSInteger mib[] =
        {
            CTL_NET,
            AF_ROUTE,
            0,
            AF_LINK,
            NET_RT_IFLIST,
            if_nametoindex("en0")
        };
        
        //get message size
        size_t length = 0;
        if (mib[5] == 0 || sysctl(mib, 6, NULL, &length, NULL, 0) < 0 || length == 0)
        {
            return nil;
        }
        
        //get message
        NSMutableData *data = [NSMutableData dataWithLength:length];
        if (sysctl(mib, 6, [data mutableBytes], &length, NULL, 0) < 0)
        {
            return nil;
        }
        
        //get socket address
        struct sockaddr_dl *socketAddress = ([data mutableBytes] + sizeof(struct if_msghdr));
        unsigned char *coreAddress = (unsigned char *)LLADDR(socketAddress);
        macAddress = [[NSString alloc] initWithFormat:@"%02X%02X%02X%02X%02X%02X",
                      coreAddress[0], coreAddress[1], coreAddress[2],
                      coreAddress[3], coreAddress[4], coreAddress[5]];
    }
    return macAddress;
    
}
NSString *getDeviceUUID(){
    CFUUIDRef uuid = CFUUIDCreate(kCFAllocatorDefault);
    CFStringRef cfstring = CFUUIDCreateString(kCFAllocatorDefault, uuid);
    NSString *uuidString = (__bridge_transfer NSString *)cfstring;
    CFRelease(uuid);
    
    return uuidString;
}

