// 打印block代码执行时间
// （blocktime）
//
// IDECodeSnippetCompletionPrefix: blocktime
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: D7169CA9-E24E-488E-9589-69ACDFD41F22
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
@interface NSObject (BlockTimer)
	
	- (void)logTimeTakenToRunBlock:(void (^)(void))block withPrefix:(NSString *)prefixString;
	
	@end
	
	@implementation NSObject (BlockTimer)
	
	-(void) logTimeTakenToRunBlock:(void (^)(void)) block withPrefix:(NSString*) prefixString {
		
		double a = CFAbsoluteTimeGetCurrent();
		block();
		double b = CFAbsoluteTimeGetCurrent();
		
		unsigned int m = ((b-a) * 1000.0f); // convert from seconds to milliseconds
		
		NSLog(@"%@: %d ms", prefixString ? prefixString : @"Time taken", m);
	}
	
	@end
	