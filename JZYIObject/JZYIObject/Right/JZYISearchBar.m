//
//  JZYISearchBar.m
//  JZYIObject
//
//  Created by xiao fan on 2019/3/30.
//  Copyright © 2019 Giga. All rights reserved.
//

#import "JZYISearchBar.h"

static CGFloat kLocationTextFieldRelativeSelfLeft = 15.f;

@interface JZYISearchBar ()
<JZYISearchLogicProtocol>

@property (nonatomic, readwrite, strong) UIButton *sureButton ; //!< 确认按钮
@property (nonatomic, readwrite, strong) NSArray *resultArray ; //!< 搜索结果

@end

@implementation JZYISearchBar

// MARK: - test 存放测试信息


// MARK: - push or pop 控制器


// MARK: - request 请求信息


// MARK: - public method 公共方法


// MARK: - private method 业务无关的尽量弄成category，方便别人调用


// MARK: - life cycle 生命周期

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        self.userInteractionEnabled = YES;
        
        [self addSubview:self.textField];
        [self addSubview:self.sureButton];
        
        self.textField.placeholder = @"";
    }
    return self;
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    CGFloat buttonWidth = CGRectGetHeight(self.frame);
    
    self.textField.frame = CGRectMake(kLocationTextFieldRelativeSelfLeft, 0, CGRectGetWidth(self.frame) - buttonWidth - kLocationTextFieldRelativeSelfLeft, buttonWidth);
    self.sureButton.frame = CGRectMake(CGRectGetWidth(self.textField.frame), 0, buttonWidth, buttonWidth);
}


// MARK: - event response 事件响应包括手势和按钮等

- (void)btnAction {
    NSArray * arr = self.resultArray;
    if (_delegate && [_delegate respondsToSelector:@selector(jzyi_didTapSearchBarButton:dataArray:)]) {
        
        [_delegate jzyi_didTapSearchBarButton:self dataArray:arr];
    }
}


// MARK: - delegate 具体到某个delegate，比如UITableViewDelegate

// MARK: - JZYISearchLogicProtocol

- (void)jzyi_dataForSearch:(NSArray *)result {
    
    self.resultArray = result;
}

// MARK: - view layout 子视图的布局


// MARK: - getters and setters 构造器

- (UITextField *)textField {
    
    if (!_textField) {
        
        _textField = [[UITextField alloc] init];
    }
    return _textField;
}

- (UIButton *)sureButton {
    
    if (!_sureButton) {
        
        _sureButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_sureButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_sureButton setTitle:@"自带搜索" forState:UIControlStateNormal];
        [_sureButton addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _sureButton;
}

- (void)setLogic:(JZYISearchLogic *)logic {
    
    _logic = logic;
    _logic.delegate = self;
    _textField.delegate = _logic;
}

@end
