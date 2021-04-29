//
//  Person.h
//  suspenseRoad
//
//  Created by ycoce on 2020/11/13.
//  Copyright © 2020 ycoce. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *address;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic, copy) NSString *fullName;

+ (void)crow;

@end

NS_ASSUME_NONNULL_END
