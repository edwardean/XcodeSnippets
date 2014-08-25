// debug
// 屏蔽调试信息 快捷输出
//
// IDECodeSnippetCompletionPrefix: debug
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 3F8A924B-F017-4290-AF0F-072090F8A2F8
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
#ifdef DEBUG
#define CCLog(format,...) NSLog(format,##__VA_ARGS__)
#else
#define CCLog(format,...)
#endif
