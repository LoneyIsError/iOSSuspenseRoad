//
//  SynchronizedTestViewController.m
//  suspenseRoad
//
//  Created by ycoce on 2021/4/7.
//  Copyright © 2021 ycoce. All rights reserved.
//

#import "SynchronizedTestViewController.h"
#import "Person.h"
@interface SynchronizedTestViewController ()

@end

@implementation SynchronizedTestViewController

static NSString *token = @"synchronized-token";
- (void)viewDidLoad {
    [super viewDidLoad];
    
    @synchronized (token) {
        // code
        NSLog(@"haha");
    }
}

@end
