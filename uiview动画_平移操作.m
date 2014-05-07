// UIView动画 平移操作
// 改变transform->translate
//
// IDECodeSnippetCompletionPrefix: translate
// IDECodeSnippetCompletionScopes: [CodeExpression]
// IDECodeSnippetIdentifier: E3996C95-D0B7-4CD3-8213-F710F5826BF5
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//取得仿射变换矩阵
CGAffineTransform transform;

//参照来做平移操作
transform=CGAffineTransformTranslate(<#someView#>.transform, 10, 10);


//直接平移操作
//transform=CGAffineTransformMakeTranslation(10, 10);
//}

[UIView beginAnimations:nil context: nil];
//设置动画持续时间
[UIView setAnimationDuration:1.4];

<#someView#>.transform=transform;
//提交动画
[UIView commitAnimations];