// Custom dispatch,没有queue
// GCD for myself （queue）
//
// IDECodeSnippetCompletionPrefix: dispatch
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 40246F80-667B-4628-B7E6-8DADC1C43CC8
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
  dispatch_queue_t workingQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
	  dispatch_async(workingQueue, ^{
	    
	    // Heavy task
	    
	    dispatch_async(dispatch_get_main_queue(), ^{
	      
	      // Update UI
	      
	    });
	  });
