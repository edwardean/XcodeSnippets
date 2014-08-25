// #Documents
// 获取Documents路径
//
// IDECodeSnippetCompletionPrefix: document
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: F33FB3C1-7CD6-42AC-A91C-C25C140C6D64
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
NSURL *documentsDirectoryURL = [NSURL URLWithString:[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject]];
	
