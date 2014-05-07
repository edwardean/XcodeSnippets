// hide keyboard
// [self.view endEditing:YES];  in touchsBegin:withEvent:
//
// IDECodeSnippetCompletionPrefix: endEditing
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: A807145A-F6BD-412C-AA06-DC931E43F730
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    [self.view endEditing:YES];
}
