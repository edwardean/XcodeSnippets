// UIView动画 缩放效果
// 缩放->scale
//
// IDECodeSnippetCompletionPrefix: scale
// IDECodeSnippetCompletionScopes: [CodeExpression]
// IDECodeSnippetIdentifier: 2915A0A2-B344-422C-BC17-2DCC7CDB702B
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
CGAffineTransform  transform;

//有参照
transform=CGAffineTransformScale(<#someView#>.transform, 1.2, 1.2);

//无参照
//transform=CGAffineTransformMakeScale(1.2, 1.2);
//}
[UIView beginAnimations:nil context:nil];
[UIView setAnimationDuration:1.5];
<#someView#>.transform=transform;
//提交动画
[UIView commitAnimations];

