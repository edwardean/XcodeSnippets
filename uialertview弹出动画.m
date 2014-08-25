// UIAlertView弹出动画
// 
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 4036BF70-7605-419F-8B87-53E51BC600A5
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
 CAKeyframeAnimation *popAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
	  popAnimation.duration = 0.4;
	  popAnimation.values = @[[NSValue valueWithCATransform3D:CATransform3DMakeScale(0.01f, 0.01f, 1.0f)],
	                          [NSValue valueWithCATransform3D:CATransform3DMakeScale(1.1f, 1.1f, 1.0f)],
	                          [NSValue valueWithCATransform3D:CATransform3DMakeScale(0.9f, 0.9f, 1.0f)],
	                          [NSValue valueWithCATransform3D:CATransform3DIdentity]];
	  popAnimation.keyTimes = @[@0.0f, @0.5f, @0.75f, @1.0f];
	  popAnimation.timingFunctions = @[[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
	                                   [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
	                                   [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
	  [anAlertAnimationView.layer addAnimation:popAnimation forKey:nil];
