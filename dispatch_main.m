// dispatch_main
// dispatch_main  dispatch_global
//
// IDECodeSnippetCompletionPrefix: dispatch
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 7DE11CB8-5941-433E-80E4-AC75AF27AD51
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
	
	        dispatch_async(dispatch_get_main_queue(), ^{
	
	        });
	    });
