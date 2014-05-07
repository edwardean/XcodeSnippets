// try catch
// try
//
// IDECodeSnippetCompletionPrefix: try
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 981E5F78-3FE2-41D3-8B91-1FC90F660D48
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
NSError *error = nil;
  @try{
    // 试图执行下列语句
    //[self getValue:&value error:&error];
    
    // 如果有异常或者被显式抛出...
    if (error) {
      @throw exception;
    }
  } @catch(NSException *e) {
    // …在这里处理异常
  }  @finally {
    // 总是在@try或@catch block的尾部执行这个
    // TODO :
  }
