// 图表
// 
//
// IDECodeSnippetCompletionPrefix: chart
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 3B2D5163-8C57-4603-BD01-49FCD4C03B90
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
  int height = [self.view bounds].size.width/3*2.; // 220;
    int width = [self.view bounds].size.width; //320;
    
    PCPieChart *pieChart = [[PCPieChart alloc] initWithFrame:CGRectMake(([self.view bounds].size.width-width)/2,([self.view bounds].size.height-height)/2,width,height)];
    [pieChart setAutoresizingMask:UIViewAutoresizingFlexibleLeftMargin|UIViewAutoresizingFlexibleRightMargin|UIViewAutoresizingFlexibleTopMargin|UIViewAutoresizingFlexibleBottomMargin];
    
    [pieChart setDiameter:width/2];
    [pieChart setSameColorLabel:YES];
    
    [self.view addSubview:pieChart];
    [pieChart release];
    
    if ([[UIDevice currentDevice] userInterfaceIdiom]==UIUserInterfaceIdiomPad)
    {
        pieChart.titleFont = [UIFont fontWithName:@"HelveticaNeue-Bold" size:30];
        pieChart.percentageFont = [UIFont fontWithName:@"HelveticaNeue-Bold" size:50];
    }
    
    NSString *sampleFile = [[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:@"sample_piechart_data.plist"];
    NSDictionary *sampleInfo = [NSDictionary dictionaryWithContentsOfFile:sampleFile];
    NSMutableArray *components = [NSMutableArray array];
    for (int i=0; i<5; i++)
    {
        NSDictionary *item = [[sampleInfo objectForKey:@"data"] objectAtIndex:i];
        
        PCPieComponent *component = [PCPieComponent pieComponentWithTitle:[salaryLevelKeyArray objectAtIndex:i ] value:[[salaryInfoArray objectAtIndex:i] floatValue]];
        
        NSLog(@"薪水 %@",[salaryInfoArray objectAtIndex:i]);
        
        [components addObject:component];
        
        if (i==0)
        {
            [component setColour:PCColorYellow];
        }
        else if (i==1)
        {
            [component setColour:PCColorGreen];
        }
        else if (i==2)
        {
            [component setColour:PCColorOrange];
        }
        else if (i==3)
        {
            [component setColour:PCColorRed];
        }
        else if (i==4)
        {
            [component setColour:PCColorBlue];
        }
    }
    [pieChart setComponents:components];
    

    
