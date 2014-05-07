// UIView移动动画
// 改变center的方法来移动视图->move
//
// IDECodeSnippetCompletionPrefix: move
// IDECodeSnippetCompletionScopes: [CodeExpression]
// IDECodeSnippetIdentifier: 917EC8F4-C980-4D1C-9184-94F770E5CEB0
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//视图移动动画

//设置开始动画
[UIView beginAnimations:nil context:nil];
//设置动画持续时间
[UIView setAnimationDuration:2];
//设置动画的代理
[UIView setAnimationDelegate:self];

//设置动画完成后，需要调用的方法

//这是系统推荐的方法，当然可以自己定义
//[UIView setAnimationDidStopSelector:@selector(animationDidStop:finished: context:)];

//view的frame和center属性都可以改变来移动
<#someView#>.center=CGPointMake(<#CGFloat x#>, <#CGFloat y#>);

//或是frame
<#someView#>.frame=CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>);

//提交动画
[UIView commitAnimations];
