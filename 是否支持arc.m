// 是否支持ARC
// hasfea
//
// IDECodeSnippetCompletionPrefix: arc
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 06DF43DC-22CA-46D2-924A-2B0D93AFE4FA
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

#if __has_feature(objc_arc)
#else

- (void) dealloc{
   
  NSLog(@"function %s line=%d",__FUNCTION__,__LINE__);
  [super dealloc];
     
}
#endif
