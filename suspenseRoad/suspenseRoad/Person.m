//
//  Person.m
//  suspenseRoad
//
//  Created by ycoce on 2020/11/13.
//  Copyright © 2020 ycoce. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)setAge:(NSInteger)age{
    _age = age;
    NSLog(@"调用set方法");
}


- (void)willChangeValueForKey:(NSString *)key{
    [super willChangeValueForKey:key];
    NSLog(@"willChangeValueForKey");
}

- (void)didChangeValueForKey:(NSString *)key{
    NSLog(@"didChangeValueForKey - begin");
    [super didChangeValueForKey:key];
    NSLog(@"didChangeValueForKey - end");
}



@end
