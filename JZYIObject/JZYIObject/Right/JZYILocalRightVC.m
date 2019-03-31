//
//  JZYILocalRightVC.m
//  JZYIObject
//
//  Created by xiao fan on 2019/3/30.
//  Copyright © 2019 Giga. All rights reserved.
//

#import "JZYILocalRightVC.h"

#import "JZYISearchBar.h"

@interface JZYILocalRightVC ()
<JZYISearchBarProtocol>

@property (nonatomic, readwrite, strong) JZYISearchBar *bar ; //!< 搜索bar

@end

@implementation JZYILocalRightVC

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.bar];
}

// MARK: - test 存放测试信息


// MARK: - push or pop 控制器


// MARK: - request 请求信息


// MARK: - public method 公共方法


// MARK: - private method 业务无关的尽量弄成category，方便别人调用


// MARK: - life cycle 生命周期

// MARK: - event response 事件响应包括手势和按钮等


// MARK: - delegate 具体到某个delegate，比如UITableViewDelegate

// MARK: - JZYISearchBarProtocol

- (void)jzyi_didTapSearchBarButton:(JZYISearchBar *)searchBar dataArray:(NSArray *)dataArray {
    
    NSLog(@"代理搜索结果%@", dataArray[0]);
}

// MARK: - view layout 子视图的布局


// MARK: - getters and setters 构造器

- (JZYISearchBar *)bar {
    
    if (_bar == nil) {
        
    }
    return _bar;
}

@end
