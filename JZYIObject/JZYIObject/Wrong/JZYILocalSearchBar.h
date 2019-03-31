//
//  LocalSearchBar.h
//  JZYIObject
//
//  Created by xiao fan on 2019/3/30.
//  Copyright © 2019 Giga. All rights reserved.
//

#import "JZYIHomeSearchBar.h"

NS_ASSUME_NONNULL_BEGIN

@interface JZYILocalSearchBar : JZYIHomeSearchBar

// 重载初始化方法
- (instancetype)initWithFrame:(CGRect)frame;

// 重载返回搜索结果方法
- (NSArray *)dataForSearch;

@end

NS_ASSUME_NONNULL_END
