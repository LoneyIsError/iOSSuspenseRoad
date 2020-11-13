//
//  ViewController.m
//  suspenseRoad
//
//  Created by ycoce on 2020/11/13.
//  Copyright © 2020 ycoce. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import <objc/runtime.h>

@interface ViewController ()

@property (nonatomic, strong) Person *person;

@end

@implementation ViewController

static NSArray * ClassMethodNames(Class c) {
    NSMutableArray * array = [NSMutableArray array];
    unsigned int methodCount = 0;
    Method * methodList = class_copyMethodList(c, &methodCount);
    unsigned int i;
    for(i = 0; i < methodCount; i++) {
        [array addObject: NSStringFromSelector(method_getName(methodList[i]))];
    }
    
    free(methodList);
    return array;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.person = [[Person alloc] init];
    self.person.name = @"iOS成长指北";
    self.person.age = 1;
    
    NSLog(@"person->isa:%@", object_getClass(self.person));
    NSLog(@"person class:%@", [self.person class]);
    NSLog(@"person superclass:%@", class_getSuperclass(object_getClass(self.person)));
    NSLog(@"ClassMethodNames:%@", ClassMethodNames(object_getClass(self.person)));
    
    [self.person addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:@"12345"];
    [self.person addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:@"12345"];
    NSLog(@"person->isa:%@", object_getClass(self.person));
    NSLog(@"person class:%@", [self.person class]);
    NSLog(@"person superclass:%@", class_getSuperclass(object_getClass(self.person)));
    NSLog(@"ClassMethodNames:%@", ClassMethodNames(object_getClass(self.person)));
    
    // Do any additional setup after loading the view.
}

- (void)dealloc {
    [self.person removeObserver:self forKeyPath:@"name"];
    [self.person removeObserver:self forKeyPath:@"age"];
    
    //只存在一个页面,不需要移除从操作
    NSLog(@"person->isa:%@", object_getClass(self.person));
    NSLog(@"person class:%@", [self.person class]);
    NSLog(@"ClassMethodNames:%@", ClassMethodNames(object_getClass(self.person)));
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    if ([self.person.name isEqualToString:@"iOS成长指北"]) {
        self.person.name = @"iOS拾遗之路";
    }else {
        self.person.name = @"iOS成长指北";
    }
    if (self.person.age == 1) {
        self.person.age = 0;
    }else {
        self.person.age = 1;
    }
    
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
   
}

@end
