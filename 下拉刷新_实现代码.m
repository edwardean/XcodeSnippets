// 下拉刷新 实现代码
// 快捷键--->>refresh
//
// IDECodeSnippetCompletionPrefix: refresh
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 310C7BE1-03C2-4FBA-951F-9A81B45EAF87
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 
 //EGOHeader 头视图
 EGORefreshTableHeaderView *_refreshHeaderView;
 //EGOFoot 尾视图
 EGORefreshTableFooterView *_refreshFooterView;
 //
 BOOL _reloading; //是否刷新的标记
 @property(nonatomic,strong)EGORefreshTableHeaderView *refreshHeaderView;
 
 */


#pragma mark -
#pragma mark 下拉刷新 

-(void)createHeaderView{
    
    
    if (_refreshHeaderView == nil) {
		
		EGORefreshTableHeaderView *view = [[EGORefreshTableHeaderView alloc] initWithFrame:CGRectMake(0.0f, 0.0f - thisTableView.bounds.size.height, self.view.frame.size.width, thisTableView.bounds.size.height)];
		view.delegate = self;
        self.refreshHeaderView = view;
		[thisTableView addSubview:view];
        
	}
	
	//  update the last update date
	[_refreshHeaderView refreshLastUpdatedDate];
    
}
#pragma mark -
#pragma mark Data Source Loading / Reloading Methods

- (void)reloadTableViewDataSource{
	
	//  should be calling your tableviews data source model to reload
	//  put here just for demo
    
    _reloading = YES;
    
    
//    [DJYSuggestAreaHelper getRecommendProductWithComplectiedBlock:^(NSMutableArray *result) {
//        
//        [self performSelector:@selector(doneLoadingTableViewData) withObject:nil afterDelay:0.0];
//        dataArray = result;
//        [thisTableView reloadData];
//        
//    } failedCallback:^(id errorMessage) {
//        
//        //刷新数据失败时 也要 回收视图
//        [self performSelector:@selector(doneLoadingTableViewData) withObject:nil afterDelay:1];
//        
//    }];
    
    
}

- (void)doneLoadingTableViewData{
	
	//  model should call this when its done loading
	_reloading = NO;
	[_refreshHeaderView egoRefreshScrollViewDataSourceDidFinishedLoading:thisTableView];
	
}



#pragma mark -
#pragma mark UIScrollViewDelegate Methods

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    
    
    
   	
	[_refreshHeaderView egoRefreshScrollViewDidScroll:scrollView];
    
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
	
	[_refreshHeaderView egoRefreshScrollViewDidEndDragging:scrollView];
	
}


#pragma mark -
#pragma mark EGORefreshTableDelegate Methods

- (void)egoRefreshTableDidTriggerRefresh:(EGORefreshPos)aRefreshPos{
	
	[self reloadTableViewDataSource];
    
  	
}

- (BOOL)egoRefreshTableDataSourceIsLoading:(UIView*)view{
	
	return _reloading; // should return if data source model is reloading
	
}


// if we don't realize this method, it won't display the refresh timestamp
- (NSDate*)egoRefreshTableDataSourceLastUpdated:(UIView*)view{
	
	return [NSDate date]; // should return date data source was last changed
	
}
