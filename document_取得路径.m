// document 取得路径
// document
//
// IDECodeSnippetCompletionPrefix: document
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: C7DF12A0-D18C-42AA-A4D2-071D50DB3EFA
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
- (NSString *)filePath
{
    NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0];
    NSString *path = [docPath stringByAppendingPathComponent:@"<#fileName#>"];
    return path;
}
