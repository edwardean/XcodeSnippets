// 汉字转拼音
// 汉字转拼音
//
// IDECodeSnippetCompletionPrefix: nsstring_transform
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: C38C9806-F9C1-4678-9EC4-E4B1B5F6A1C7
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
    CFMutableStringRef str = CFStringCreateMutableCopy(NULL, 0, CFSTR("中国"));
    CFStringTransform(str, NULL, kCFStringTransformToLatin, NO);
    CFStringTransform(str, NULL, kCFStringTransformStripDiacritics, NO);
    NSLog(@"%@",str);