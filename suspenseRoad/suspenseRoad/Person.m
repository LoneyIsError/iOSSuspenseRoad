//
//  Person.m
//  suspenseRoad
//
//  Created by ycoce on 2020/11/13.
//  Copyright © 2020 ycoce. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)init {
    if (self = [super init]) {
        NSLog(@"%@", [self class]);
        NSLog(@"%@", [super class]);
    }
    return self;
}

+ (void)crow {
    int double_free_guard = 0xBADDC0DEDEADBEADULL & (unsigned long long)self;
}

//+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
// 
//    NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
// 
//    if ([key isEqualToString:@"fullName"]) {
//        NSArray *affectingKeys = @[@"lastName", @"firstName"];
//        keyPaths = [keyPaths setByAddingObjectsFromArray:affectingKeys];
//    }
//    return keyPaths;
//}

//- (void)setAge:(NSInteger)age{
//    _age = age;
//    NSLog(@"调用set方法");
//}

//- (void)willChangeValueForKey:(NSString *)key{
//    [super willChangeValueForKey:key];
//    NSLog(@"willChangeValueForKey");
//}
//
//- (void)didChangeValueForKey:(NSString *)key{
//    NSLog(@"didChangeValueForKey - begin");
//    [super didChangeValueForKey:key];
//    NSLog(@"didChangeValueForKey - end");
//}

- (NSString *)fullName {
    return [NSString stringWithFormat:@"%@ %@",self.firstName, self.lastName];
}


+ (NSSet *)keyPathsForValuesAffectingFullName {
    return [NSSet setWithObjects:@"lastName", @"firstName", nil];
}

@end
