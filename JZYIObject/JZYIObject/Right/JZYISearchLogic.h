//
//  JZYISearchLogic.h
//  JZYIObject
//
//  Created by xiao fan on 2019/3/30.
//  Copyright © 2019 Giga. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol JZYISearchLogicProtocol <NSObject>

/**
 数据搜索处理结果

 @param result 结果
 */
- (void)jzyi_dataForSearch:(NSArray *)result;

@end

@interface JZYISearchLogic : NSObject
<UITextFieldDelegate>

@property (nonatomic, readwrite, weak) id<JZYISearchLogicProtocol> delegate ; //!< 代理

@end

NS_ASSUME_NONNULL_END
