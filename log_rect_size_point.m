// Log Rect size point
// NSLogRect(rect),NSLogSize(size),NSLogPoint(point)
//
// IDECodeSnippetCompletionPrefix: nslog
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 830553A6-734D-4BB3-8273-775683B8B967
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
#define NSLogRect(rect) NSLog(@"%s x:%.4f, y:%.4f, w:%.4f, h:%.4f", #rect, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height)
#define NSLogSize(size) NSLog(@"%s w:%.4f, h:%.4f", #size, size.width, size.height)
#define NSLogPoint(point) NSLog(@"%s x:%.4f, y:%.4f", #point, point.x, point.y)