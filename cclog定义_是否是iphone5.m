// CCLog定义 是否是iphone5
// 预处理 一些实用宏定义-->>>cclog
//
// IDECodeSnippetCompletionPrefix: cclog
// IDECodeSnippetCompletionScopes: [Preprocessor]
// IDECodeSnippetIdentifier: 26D1684A-73EA-4F56-950C-42FA622907E9
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)


//当前系统版本
#define CURRENT_SYSTEM_VERSION [[UIDevice currentDevice].systemVersion integerValue]


#ifdef DEBUG

#define CCLog(format,...) NSLog(format,##__VA_ARGS__)
#define MMRelease(object) [object release]

#else

#define CCLog(format,...)
#define MMRelease(object) [object release],object=nil
