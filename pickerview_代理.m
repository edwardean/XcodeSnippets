// pickerView 代理
// 自定义视图 ->pickerView
//
// IDECodeSnippetCompletionPrefix: pickerview
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 8B8BED2A-026D-4E91-85DB-A10C9EBDD56A
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

#pragma mark - 
#pragma mark UIPickerViewDelegate  UIPickerViewDataSource
/*
 //设置所有字体
 self.fontArray=[UIFont familyNames];
 
 //设置字体大小数组
 self.sizeArray=[NSArray arrayWithObjects:@"12",@"16",@"20",@"24",@"30",@"35",@"40",nil];
 
 //设置颜色数组
 self.colorArray=[NSArray arrayWithObjects:[UIColor redColor],[UIColor blueColor],[UIColor clearColor],[UIColor yellowColor],[UIColor brownColor], [UIColor blackColor],[UIColor purpleColor],[UIColor orangeColor],[UIColor darkGrayColor],[UIColor magentaColor],[UIColor darkTextColor],[UIColor brownColor],[UIColor lightGrayColor],nil];
 
 
 */
//以下是适配器部分，即数据源

//返回有几列
-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    NSLog(@"调用%s ,%d",__FUNCTION__,__LINE__);
    
    //返回有几列
    return 3;
    
}


//返回指定列的行数
- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    NSLog(@"调用%s ,%d",__FUNCTION__,__LINE__);
    
    if (component==0) {
        return  [self.fontArray count];
    } else if(component==1){
        
        return  [self.colorArray count];
    }
    else if(component==2){
        return [self.sizeArray count];
        
    }
    
    return 0;
}



//以下是代理部分，可以自定义视图

//返回指定列，行的高度，就是自定义行的高度
- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component{
    
    NSLog(@"调用%s ,%d",__FUNCTION__,__LINE__);
    
    
    return  40;
}


//返回指定列的宽度
- (CGFloat) pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component{
    NSLog(@"调用%s ,%d",__FUNCTION__,__LINE__);
    if (component==0) {
        //第0列，宽为180
        return  180;
    } else if(component==1){
        //第1列，宽为80
        return  80;
    }
    else{
        //第三列宽为60
        return 60;
    }
    
}

// 自定义指定列的每行的视图，即指定列的每行的视图行为一致
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
    
    NSLog(@"调用%s ,%d",__FUNCTION__,__LINE__);
    
    
    //思想就是：先创建一个View以指定列的宽度，和所在列行的高度，为尺寸
    //再建立一个label,在这个view上显示字体，字体颜色，字体大小，然后，把这个label添加到view中
    //返回view，作为指定列的每行的视图
    
    
    
    //取得指定列的宽度
    CGFloat width=[self pickerView:pickerView widthForComponent:component];
    
    //取得指定列，行的高度
    CGFloat height=[self pickerView:pickerView rowHeightForComponent:component];
    
    //定义一个视图
    UIView *myView=[[UIView alloc] init];
    
    //指定视图frame
    myView.frame=CGRectMake(0, 0, width, height);
    
    UILabel *labelOnComponent=[[UILabel alloc] init];
    
    labelOnComponent.frame=myView.frame;
    labelOnComponent.tag=200;
    
    
    if (component==0) {
        //如果是第0列
        
        //以行为索引，取得字体
        UIFont *font=[self.fontArray objectAtIndex:row];
        //在label上显示改字体
        labelOnComponent.text=[NSString stringWithFormat:@"%@",font];
        
    }
    else if(component==1){
        //如果是第1列
        //以说选择行为索引，取得颜色数组中的颜色，并把label的背景色设为该颜色
        labelOnComponent.backgroundColor=[self.colorArray objectAtIndex:row];
        
    }
    else if(component==2){
        //如果是第2列
        //label 上显示的是相应字体
        
        labelOnComponent.text=[self.sizeArray objectAtIndex:row];
        
    }
    
    [myView addSubview:labelOnComponent];
    
    //内存管理，建立后释放 
    [labelOnComponent release];
    [myView autorelease];
    
    return myView;
    
}

- (void)pickerView:(UIPickerView *)pickerView
didSelectRow:(NSInteger)row
inComponent:(NSInteger)component
{
    //取得选择的是第0列的哪一行
    int rowOfFontComponent = [pickerView selectedRowInComponent:0];
    //取得选择的是第1列的哪一行
    int rowOfColorComponent = [pickerView selectedRowInComponent:1];
    //取得选择的是第2列的哪一行
    int rowOfSizeComponent = [pickerView selectedRowInComponent:2];
    
    //取得所选列所选行的视图
    UIView *ViewOfFontComponent = (UILabel *)[pickerView viewForRow:rowOfFontComponent forComponent:0];
    UIView *ViewOfColorComponent =(UILabel *) [pickerView viewForRow:rowOfColorComponent forComponent:1];
    UIView *ViewOfSizeComponent = (UILabel *)[pickerView viewForRow:rowOfSizeComponent forComponent:2];
    
    //取得取得所选行所选列上的视图的子视图
    UILabel *viewOnViewofFontComponent=(UILabel *)[ViewOfFontComponent viewWithTag:200];
    UILabel *viewOnViewOfColorComponent=(UILabel *)[ViewOfColorComponent viewWithTag:200];
    UILabel *viewOnViewOfSizeComponent=(UILabel *)[ViewOfSizeComponent viewWithTag:200];
    
    
    //最后将所选择的结果展现在label上，即字体样式，字体颜色，字体大小
    
    self.textLabel.font=[UIFont fontWithName:viewOnViewofFontComponent.text size:[viewOnViewOfSizeComponent.text floatValue]];
    
    self.textLabel.textColor=viewOnViewOfColorComponent.backgroundColor;
    
    
    
    
    
}
