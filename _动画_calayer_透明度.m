// 动画 CALayer 透明度
// 改变透明度->toumdu
//
// IDECodeSnippetCompletionPrefix: toumdu
// IDECodeSnippetCompletionScopes: [CodeExpression]
// IDECodeSnippetIdentifier: 1B6EE940-B397-4E87-AC8D-CA16F4289419
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
 //层的基本动画,keypath为固定值，不能变
    
    CABasicAnimation  *animation=[CABasicAnimation animationWithKeyPath:@"opacity"];
    //设置开始值和结束值
    [animation setFromValue:[NSNumber numberWithFloat:1.0]];
    [animation setToValue:[NSNumber numberWithFloat:0.0]];
    //设置动画持续时间
    [animation setDuration:4.0];
    //设置重复次数
    [animation setRepeatCount:3];
    //设置代理
    [animation setDelegate:self];
    //默认的是NO,即动画完成后立马恢复原样，YES是延迟恢复
    [animation setAutoreverses:YES];
    
    //直接在一个UIVIew的layer上添加动画
[<#someView#>.layer addAnimation:animation forKey:@"透明度动画"];
    
