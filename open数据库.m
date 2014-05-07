// open数据库
// 数据库快捷open
//
// IDECodeSnippetCompletionPrefix: open
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 26501AA1-1D86-4D37-B932-863DB4DC9482
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
-(FMDatabase *) openDatabase
{
    //寻找路径
    NSString *doc_path=[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0];
    //数据库路径
    NSString *sqlPath=[doc_path stringByAppendingPathComponent:@"ad.sqlite"];
    NSLog(@"%@",sqlPath);
    
    //原始路径
    NSString *orignFilePath = [[NSBundle mainBundle] pathForResource:@"ad" ofType:@"sqlite"];
    
    
    
    
    NSLog(@"原始地址:%@",orignFilePath);
    
    NSFileManager *fm = [NSFileManager defaultManager];
    if([fm fileExistsAtPath:sqlPath] == NO)//如果doc下没有数据库，从bundle里面拷贝过来
    {
        
        
        NSError *err = nil;
        if([fm copyItemAtPath:orignFilePath toPath:sqlPath error:&err] == NO)//如果拷贝失败
        {
            NSLog(@"open database error %@",[err localizedDescription]);
            return nil;
        }
        
        NSLog(@"document 下没有数据库文件，执行拷贝工作");
    }
    
    //初始化数据库
    FMDatabase *db=[FMDatabase databaseWithPath:sqlPath];
    
    //这个方法一定要执行
    if (![db open]) {
        NSLog(@"数据库打开失败！");
        return db;
    }
    
    
    NSLog(@"打开成功");
    NSLog(@"db=%@",db);
    return  db;
}
