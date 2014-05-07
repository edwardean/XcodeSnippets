// 画图-线段 矩形
// 基本画图步骤->draw
//
// IDECodeSnippetCompletionPrefix: draw
// IDECodeSnippetCompletionScopes: [CodeExpression]
// IDECodeSnippetIdentifier: 32112FDA-82E1-44C7-BAA1-E5FCD72CDD7B
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

    //获得当前上下文
    CGContextRef context=UIGraphicsGetCurrentContext();
    //设置画笔颜色
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    //设置画笔粗细
    CGContextSetLineWidth(context, 2.0);
    
    //画矩形
    CGContextAddRect(context, myRect);
    //画直线
         
    /*******
     
     //移动到一个点
     CGContextMoveToPoint(context, point1.x, point1.y);
     
     //在第二个点和第一个点之间添加一条直线
     
     CGContextAddLineToPoint(context, point2.x, point2.y);

     
     ********/
    //开始绘图
    CGContextStrokePath(context);
