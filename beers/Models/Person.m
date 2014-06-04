//
//  person.m
//  beers
//
//  Created by Xavier Hernandez on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "Person.h"

@implementation Person

#pragma mark - init

- (id)init{
	return self = [self initWithName:nil andAddress:nil andAge:0 andMarried:nil];
}

- (id)initWithName:(NSString *)name
{
	return self = [self initWithName:name andAddress:nil andAge:0 andMarried:nil];
}

- (id)initWithName:(NSString *)name andAddress:(NSString *)address
{
	return self = [self initWithName:name andAddress:address andAge:0 andMarried:nil];
}

- (id)initWithName:(NSString *)name andAddress:(NSString *)address andAge:(NSUInteger)age
{
	return self = [self initWithName:name andAddress:address andAge:age andMarried:nil];
}

// DESIGNATED INITIALIZER

- (id)initWithName:(NSString *)name andAddress:(NSString *)address andAge:(NSUInteger)age andMarried:(BOOL)married
{
	self = [super init];
	
	if(self){
		_name = name;
		_address = address;
		_age = age;
		_married = married;
	}
	
	return self;
}

#pragma mark - init

+ (id)personWithName:(NSString *)name
{
	return [[Person alloc] initWithName:name];
}

+ (id)personWithName:(NSString *)name andAddress:(NSString *)address
{
	return [[Person alloc] initWithName:name andAddress:address];
}

@end
