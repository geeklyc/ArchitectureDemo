//
//  JZYIHomeRightVC.m
//  JZYIObject
//
//  Created by xiao fan on 2019/3/30.
//  Copyright © 2019 Giga. All rights reserved.
//

#import "JZYIHomeRightVC.h"

#import "JZYISearchBar.h"
#import "JZYIHomeSearchLogic.h"

@interface JZYIHomeRightVC ()
<JZYISearchBarProtocol>

@property (nonatomic, readwrite, strong) JZYISearchBar *bar ; //!< 搜索bar

@end

@implementation JZYIHomeRightVC

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
    
    NSLog(@"代理搜索 %@", dataArray);
}

// MARK: - view layout 子视图的布局


// MARK: - getters and setters 构造器

- (JZYISearchBar *)bar {
    
    if (_bar == nil) {
        
        JZYIHomeSearchLogic * logic = [[JZYIHomeSearchLogic alloc] init];
        
        _bar = [[JZYISearchBar alloc] initWithFrame:CGRectMake(0, 100, 180, 80)];
        _bar.delegate = self;
        _bar.logic = logic;
    }
    return _bar;
}

@end