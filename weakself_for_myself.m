// weakSelf for myself
// __weak typeof(self)weakSelf = self;
//
// IDECodeSnippetCompletionPrefix: weakself
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: F7678833-1EC3-4D89-B3F9-FD4B1FEBCC10
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
__weak typeof(self) weakSelf = self;
__strong typeof(weakSelf)strongSelf = weakSelf;
