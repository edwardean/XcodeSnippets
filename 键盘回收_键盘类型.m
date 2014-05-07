// 键盘回收 键盘类型
// keyboard
//
// IDECodeSnippetCompletionPrefix: keyboard
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: AA634E2B-ADAF-4AE0-AD8E-A431ABB0AC96
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
 UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(keyBoardReturn)];
    NSArray *items = [[NSArray alloc] initWithObjects:item,backItem, nil];
    [item release];
    [backItem release];
    
    UIToolbar *toolBar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    toolBar.barStyle = UIBarStyleBlack;
    toolBar.translucent = YES;
    [toolBar setItems:items];
    [items release];
    
    introductionView.inputAccessoryView = toolBar;
    [toolBar release];
