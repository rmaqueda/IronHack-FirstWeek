//
//  beer.m
//  beers
//
//  Created by Xavier Hernandez on 02/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "Beer.h"

@implementation Beer

- (void)setCountry:(NSString *)country{
	self->_country = country;
	
}

// setter y getter

- (NSString *)name
{
	return self->name;
}

- (void)setName:(NSString *)newName
{
	self->name = newName;
}

- (NSString *)color
{
	return self->color;
}
- (void)setColor:(NSString *)newColor
{
	self->color = newColor;
}

- (NSUInteger)grade
{
	return self->grade;
}

- (void)setGrade:(NSUInteger)newGrade
{
	self->grade = newGrade;
}

- (void)printBeerInfo
{
	
	NSLog(@"Name: %@\n", name);
	NSLog(@"Color: %@\n", color);
	NSLog(@"Grade: %lu\n", (unsigned long)grade);
	
}

- (void)printBeerInfoWithHeader:(NSString *)header
{
	
	NSLog(@"%@\n",header);
	
	[self printBeerInfo];
	
}

- (void)printBeerInfoWithHeader:(NSString *)header andFooter:(NSString *)footer
{
	
}

- (void)printBeerInfoWithHeader:(NSString *)header
					  andFooter:(NSString *)footer
			  andNumberOfEmojis:(NSUInteger)numberOfEmojis
{
	
}

@end
