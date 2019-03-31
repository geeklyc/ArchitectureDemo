//
//  JZYISearchBar.h
//  JZYIObject
//
//  Created by xiao fan on 2019/3/30.
//  Copyright © 2019 Giga. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "JZYISearchLogic.h"

NS_ASSUME_NONNULL_BEGIN

@class JZYISearchBar;
@protocol JZYISearchBarProtocol <NSObject>

- (void)jzyi_didTapSearchBarButton:(JZYISearchBar *)searchBar dataArray:(NSArray *)dataArray;

@end

@interface JZYISearchBar : UIView

@property (nonatomic, readwrite, strong) UITextField *textField; //!< 输入文本

@property (nonatomic, readwrite, strong) JZYISearchLogic *logic; //!< 搜索逻辑

@property (nonatomic, readwrite, weak) id<JZYISearchBarProtocol> delegate; //!< 搜索代理

@end

NS_ASSUME_NONNULL_END
