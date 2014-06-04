//
//  person.h
//  beers
//
//  Created by Xavier Hernandez on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic) NSUInteger age;
@property (nonatomic, strong) NSString *address;
@property (nonatomic, getter = isMarried) BOOL married;

- (id)init;
- (id)initWithName:(NSString *)name;
- (id)initWithName:(NSString *)name andAddress:(NSString *)address andAge:(NSUInteger)age;
// designated init
- (id)initWithName:(NSString *)name andAddress:(NSString *)address andAge:(NSUInteger)age andMarried:(BOOL)married;

+ (id)personWithName:(NSString *)name;
+ (id)personWithName:(NSString *)name andAddress:(NSString *)address;

@end
