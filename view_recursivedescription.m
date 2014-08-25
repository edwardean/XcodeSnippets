// view recursiveDescription
// recursiveDescription
//
// IDECodeSnippetCompletionPrefix: debug
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 1658E30A-2A8F-4F33-A2DD-6863DB5582ED
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
#ifdef DEBUG
        NSLog(@"Cell recursive description:\n\n%@\n\n", [cell performSelector:@selector(recursiveDescription)]);
#endif