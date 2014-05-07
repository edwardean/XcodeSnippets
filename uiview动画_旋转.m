// UIView动画 旋转
// 改变transform来改变动画效果->retate
//
// IDECodeSnippetCompletionPrefix: retate
// IDECodeSnippetCompletionScopes: [CodeExpression]
// IDECodeSnippetIdentifier: 66AA3083-175C-44C3-9144-898A2E4A12C4
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//取得仿射变换矩阵
CGAffineTransform transform;

//参照来做仿射
transform=CGAffineTransformRotate(bigImageView.transform, M_PI/6.0);

//直接仿射一定角度
//transform=CGAffineTransformMakeRotation(M_PI/6.0);

[UIView beginAnimations:nil context: nil];
//设置动画持续时间
[UIView setAnimationDuration:1.4];

<#someView#>.transform=transform;
//提交动画
[UIView commitAnimations];