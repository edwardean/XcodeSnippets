// tq_timer
// tq_timer
//
// IDECodeSnippetCompletionPrefix: tq_timer
// IDECodeSnippetCompletionScopes: [CodeExpression]
// IDECodeSnippetIdentifier: C2DF7BF7-EF10-4F82-A9D3-D0E9C0991E9E
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
self.<#var#> = [NSTimer scheduledTimerWithTimeInterval:1.5
                                                            target:self
                                              selector:@selector(<#timerMethod#>)
                                                          userInfo:nil
                                                           repeats:YES];
// 取消
[self.<#var#> invalidate];

