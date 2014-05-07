// CGContext翻转坐标系统
// //Flip he coordinate system
//
// IDECodeSnippetCompletionPrefix: CGContext
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 7A24B26C-BF9D-4527-A9A0-950EE3378886
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//CGContextRef context = UIGraphicsGetCurrentContext();
    
    //Flip he coordinate system
    CGContextSetTextMatrix(context, CGAffineTransformIdentity);
    CGContextTranslateCTM(context, 0, self.bounds.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);