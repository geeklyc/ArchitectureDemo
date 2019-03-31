//
//  JZYILocalWrongVC.m
//  JZYIObject
//
//  Created by xiao fan on 2019/3/30.
//  Copyright © 2019 Giga. All rights reserved.
//

#import "JZYILocalWrongVC.h"

#import "JZYILocalSearchBar.h"

@interface JZYILocalWrongVC ()
<JZYIHomeSearchBarProtocol>

@property (nonatomic, readwrite, strong) JZYILocalSearchBar *searchBar ; //!< 搜索bar

@end

@implementation JZYILocalWrongVC

// MARK: - test 存放测试信息


// MARK: - push or pop 控制器


// MARK: - request 请求信息


// MARK: - public method 公共方法


// MARK: - private method 业务无关的尽量弄成category，方便别人调用


// MARK: - life cycle 生命周期

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.searchBar];
}


// MARK: - event response 事件响应包括手势和按钮等


// MARK: - delegate 具体到某个delegate，比如UITableViewDelegate

// MARK: - JZYIHomeSearchBarProtocol

- (void)jzyi_didTapHomeSearchBar:(JZYIHomeSearchBar *)homeSearchBar {
    
    NSArray * arr = [_searchBar dataForSearch];
    NSLog(@"搜索结果=>%@", arr);
}


// MARK: - view layout 子视图的布局


// MARK: - getters and setters 构造器

- (JZYILocalSearchBar *)searchBar {
    
    if (!_searchBar) {
        
        _searchBar = [[JZYILocalSearchBar alloc] initWithFrame:CGRectMake(0, 150, 320, 80)];
        _searchBar.delegate = self;
    }
    return _searchBar;
}

@end

