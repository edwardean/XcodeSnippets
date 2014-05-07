// UIView动画 回转操作
// 利用转置矩阵 ->invert
//
// IDECodeSnippetCompletionPrefix: invert
// IDECodeSnippetCompletionScopes: [CodeExpression]
// IDECodeSnippetIdentifier: 7BD86690-22D4-4695-BB2A-1B3A496C45D8
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
CGAffineTransform  transform;

//表示返回两个矩阵的乘积
transform=CGAffineTransformConcat(<#someView#>.transform, <#someView#>.transform);

//表示一个元矩阵
transform=CGAffineTransformIdentity;
//无参照
//transform=CGAffineTransformInvert(<#someView#>.transform);

[UIView beginAnimations:nil context:nil];
//动画持续时间
[UIView setAnimationDuration:1.2];
<#someView#>.transform=transform;
//提交动画
[UIView commitAnimations];
