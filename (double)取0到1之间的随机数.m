// (double)取0到1之间的随机数
// 取0到1之间的随机数
//
// IDECodeSnippetCompletionPrefix: random
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 3B07096F-BA31-4BEA-973C-A633B08C2234
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
    time_t timep;
	    srand48(time(&timep));
	    double r = drand48();
