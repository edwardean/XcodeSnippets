// 动画 UIView 过渡效果
// view的过渡效果 如翻页 ->guodu
//
// IDECodeSnippetCompletionPrefix: guodu
// IDECodeSnippetCompletionScopes: [CodeExpression]
// IDECodeSnippetIdentifier: E78843C7-7FA0-46EB-A752-8D3F064377CB
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
 [UIView beginAnimations:nil context:nil];

  [UIView setAnimationDuration:1.5];
  //指定动画枚举类型，线性变化是默认的
  //动画加速和减速方式，为淡入淡出
  [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
  /* 过渡效果可选参数
   
   UIViewAnimationTransitionCurlUp  //从下往上
   UIViewAnimationTransitionCurlDown //从上到下
   UIViewAnimationTransitionFlipFromLeft //从左到右
   UIViewAnimationTransitionFlipFromRight  //从右到左
   
   */
  
  
  //动画从下往上开始，类似翻页效果
  [UIView setAnimationTransition:UIViewAnimationTransitionCurlDown
                         forView:<#someView#> cache:YES];
//提交动画
  [UIView commitAnimations];

