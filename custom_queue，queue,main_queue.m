// Custom Queue，queue,main queue
// (dispatch)Custom Queue，queue,main queue
//
// IDECodeSnippetCompletionPrefix: dispatch
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 3CD72B66-75BB-4691-A602-8C603BCBA1BE
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
dispatch_queue_t myQueue = dispatch_queue_create("MyQueue", NULL);
	  dispatch_async(myQueue, ^{
	    
	    // Heavy task
	    
	    dispatch_async(dispatch_get_main_queue(), ^{
	      
	      // Update UI
	      
	    });
	  });
	dispatch_release(myQueue);
	