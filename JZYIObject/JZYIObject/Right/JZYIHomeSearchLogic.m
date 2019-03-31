//
//  JZYIHomeSearchLogic.m
//  JZYIObject
//
//  Created by xiao fan on 2019/3/31.
//  Copyright © 2019 Giga. All rights reserved.
//

#import "JZYIHomeSearchLogic.h"

@interface JZYIHomeSearchLogic ()

@end

@implementation JZYIHomeSearchLogic

// MARK: - UITextFieldDelegate

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    // TODO: - 执行搜索
    if (self.delegate && [self.delegate respondsToSelector:@selector(jzyi_dataForSearch:)]) {
        
        [self.delegate jzyi_dataForSearch:@[ @"搜索首页结果" ]];
    }
    
    return true;
}

@end
