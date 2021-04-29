//
//  KVOViewController.m
//  suspenseRoad
//
//  Created by ycoce on 2021/4/8.
//  Copyright © 2021 ycoce. All rights reserved.
//

#import "KVOViewController.h"
#import "Person.h"

@interface KVOViewController ()

@property (nonatomic, strong) Person *person;

@end

@implementation KVOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.person = [[Person alloc] init];
    [self.person addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
    [self.person addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
    
    [self.person removeObserver:self forKeyPath:@"age"];
    
    [self.person removeObserver:self forKeyPath:@"name"];
    
    
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
