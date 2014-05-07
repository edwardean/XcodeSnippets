// 处理网络 asiHttp
// 处理网络请求模板--->network
//
// IDECodeSnippetCompletionPrefix: asinetwork
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 8BD4929C-5F9B-4C68-A1A0-46562BE2186A
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
NSString *publicParm = PUBLIC_Parameter;
NSString *urlString = [NSString stringWithFormat:@"?mobile=%@&type=%@&%@",mobileNumber,KEY_GETCode_ForRegist,publicParm];

__block NSMutableDictionary *messageDic = [[NSMutableDictionary alloc] init];

__block NSString *message = nil;

__block ASIFormDataRequest *formRequst = [ASIFormDataRequest requestWithURL:[NSURL URLWithString:urlString]];


[formRequst setCompletionBlock:^{
    
    NSString *data = [formRequst responseString];
    
    //        CCLog(@"网络返回的数据为：%@",data);
    
    NSError *error = nil;
    
    
    NSDictionary *dic = [data objectFromJSONStringWithParseOptions:JKParseOptionLooseUnicode error:&error];
    
    if (!error) {
        
        CCLog(@"json解析格式正确");
        
        message = [[dic objectForKey:KEY_result] objectForKey:KEY_message];
        NSLog(@"服务器返回的信息为：%@",message);
        
        if ([message length]==0) {
            
            //  NSLog(@"成功登陆后返回的数据：%@",data);
            
            
            
            if (delegate&&[delegate respondsToSelector:@selector(requestDidFinishedWithRightMessage:)]) {
                
                [delegate requestDidFinishedWithRightMessage:messageDic];
                
            }
            
        } else{
            
            
            if (delegate&&[delegate respondsToSelector:@selector(requestDidFinishedWithFalseMessage:)]){
                //message 长度不为0 有错误信息
                [messageDic setObject:message forKey:KEY_message];
                
                
                [delegate requestDidFinishedWithFalseMessage:messageDic];
                
            }
            
            
        }
        
    } else{
        NSLog(@"解析有错误");
        
        if (delegate&&[delegate respondsToSelector:@selector(requestDidFinishedWithFalseMessage:)]) {
            
            [messageDic setObject:WRONG_Message_NetWork forKey:KEY_message];
            [delegate requestDidFinishedWithFalseMessage:messageDic];
            
            
        }
        
        
        return ;
        
    }
    
    
    
}];

[formRequst setFailedBlock:^{
    
    [messageDic setObject:WRONG_Message_NetWork forKey:KEY_message];
    
    if (delegate&&[delegate respondsToSelector:@selector(requestDidFailed:)]) {
        [delegate requestDidFailed:messageDic];
    }
    
}];

[formRequst startAsynchronous];
