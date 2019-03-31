//
//  HomeSearchBar.h
//  JZYIObject
//
//  Created by xiao fan on 2019/3/30.
//  Copyright © 2019 Giga. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class JZYIHomeSearchBar;

/**
 搜索风格

 - JZYISearchBarStyleHome: 首页
 - JZYISearchBarStylePage: 页面
 - JZYISearchBarStyleLocal: 本地
 */
typedef NS_ENUM(NSInteger, JZYISearchBarStyle) {
    
    JZYISearchBarStyleHome = 0,
    JZYISearchBarStylePage,
    JZYISearchBarStyleLocal
};

@protocol JZYIHomeSearchBarProtocol <NSObject>

/**
 点击搜索回调

 @param homeSearchBar 搜索
 */
- (void)jzyi_didTapHomeSearchBar:(JZYIHomeSearchBar *)homeSearchBar;

@end

@interface JZYIHomeSearchBar : UIView

@property (nonatomic, readwrite, strong) UITextField *textField; //!< 输入文本

@property (nonatomic, readwrite, assign) JZYISearchBarStyle style; //!< 搜索风格

@property (nonatomic, readwrite, weak) id<JZYIHomeSearchBarProtocol> delegate; //!< 搜索代理


/**
 初始化

 @param frame 布局
 @return 实例
 */
- (instancetype)initWithFrame:(CGRect)frame;

/**
 返回搜索结果

 @return 结果
 */
- (NSArray *)dataForSearch;

@end

NS_ASSUME_NONNULL_END
