// 动画 CALayer 拉伸
// 可以放大和缩小->expend
//
// IDECodeSnippetCompletionPrefix: expend
// IDECodeSnippetCompletionScopes: [CodeExpression]
// IDECodeSnippetIdentifier: 0A0072E6-84DA-43C6-993B-5505C63FB388
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
CABasicAnimation *animation=[CABasicAnimation animationWithKeyPath:@"bounds.size"];

[animation setFromValue:[NSValue valueWithCGSize:CGSizeMake(0.1, 0.5)]];
[animation setToValue:[NSValue valueWithCGSize:<#someView#>.bounds.size]];
[animation setDelegate:self];
[animation setDuration:2.0];
[animation setRepeatCount:3]; //重复次数
[animation setAutoreverses:YES]; 
[<#someView#>.layer addAnimation:animation forKey:@"拉伸动画"];

