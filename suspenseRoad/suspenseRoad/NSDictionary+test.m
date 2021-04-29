//
//  NSDictionary+test.m
//  suspenseRoad
//
//  Created by ycoce on 2021/3/30.
//  Copyright © 2021 ycoce. All rights reserved.
//

#import "NSDictionary+test.h"
#import <objc/runtime.h>

@implementation NSDictionary (test)
//+ (void)load {
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
////        Class class = objc_getClass("__NSPlaceholderDictionary");
//        // When swizzling a class method, use the following:
//        Class class = object_getClass((id)self);
//        
//        SEL originalSelector = @selector(dictionaryWithObjects:forKeys:count:);
//        SEL swizzledSelector = @selector(xxx_dictionaryWithObjects:forKeys:count:);
//        Method originalMethod = class_getClassMethod(class, originalSelector);
//        Method swizzledMethod = class_getClassMethod(class, swizzledSelector);
//        BOOL didAddMethod = class_addMethod(class,
//                originalSelector,
//                method_getImplementation(swizzledMethod),
//                method_getTypeEncoding(swizzledMethod));
//        if (didAddMethod) {
//            class_replaceMethod(class,
//                swizzledSelector,
//                method_getImplementation(originalMethod),
//                method_getTypeEncoding(originalMethod));
//        } else {
//            method_exchangeImplementations(originalMethod, swizzledMethod);
//        }
//    });
//}

#pragma mark - Method Swizzling


//+ (id)xxx_dictionaryWithObjects:(const id [])objects forKeys:(const id <NSCopying> [])keys count:(NSUInteger)cnt{
//    NSLog(@"\n\n\n\n\n");
//    for (NSUInteger i = 0; i < cnt; i++) {
//        id key = keys[i];
//        id obj = objects[i];
//        NSLog(@"key = %@", key);
//        NSLog(@"obj = %@", obj);
//    }
//    return [[NSDictionary class] xxx_dictionaryWithObjects:objects forKeys:keys count:cnt];
//}



@end

