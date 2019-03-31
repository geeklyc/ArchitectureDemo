//
//  ViewController.m
//  JZYIObject
//
//  Created by xiao fan on 2019/3/30.
//  Copyright © 2019 Giga. All rights reserved.
//

#import "ViewController.h"

#import "JZYIHomeWrongVC.h"
#import "JZYIPageWrongVC.h"
#import "JZYILocalWrongVC.h"

#import "JZYIHomeRightVC.h"
#import "JZYIPageRightVC.h"
#import "JZYILocalRightVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)wrongHome:(id)sender {
    
    JZYIHomeWrongVC *vc = [[JZYIHomeWrongVC alloc] init];
    [self.navigationController pushViewController:vc animated:true];
}

- (IBAction)wrongPage:(id)sender {
    
    JZYIPageWrongVC *vc = [[JZYIPageWrongVC alloc] init];
    [self.navigationController pushViewController:vc animated:true];
}

- (IBAction)wrongLocal:(id)sender {
    
    JZYILocalWrongVC *vc = [[JZYILocalWrongVC alloc] init];
    [self.navigationController pushViewController:vc animated:true];
}


- (IBAction)rightHome:(id)sender {
    
    
    JZYIHomeRightVC *vc = [[JZYIHomeRightVC alloc] init];
    [self.navigationController pushViewController:vc animated:true];
}

- (IBAction)rightPage:(id)sender {
    
    JZYIPageRightVC *vc = [[JZYIPageRightVC alloc] init];
    [self.navigationController pushViewController:vc animated:true];
}

- (IBAction)rightLocal:(id)sender {
    
    JZYILocalRightVC *vc = [[JZYILocalRightVC alloc] init];
    [self.navigationController pushViewController:vc animated:true];
}

@end
