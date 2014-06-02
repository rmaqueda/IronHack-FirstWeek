//
//  beer.m
//  beers
//
//  Created by Xavier Hernandez on 02/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "beer.h"

@implementation beer

- (void)printBeerInfo
{
	
	NSLog(@"Name: %@\n", name);
	NSLog(@"Color: %@\n", color);
	NSLog(@"Grade: %@\n", grade);
	
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
