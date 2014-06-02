//
//  beer.h
//  beers
//
//  Created by Xavier Hernandez on 02/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface beer : NSObject

{

	// iVArs
	NSString *name;
	NSString *color;
	NSUInteger alcohol;
	
}

- (void)printBeerInfo;

- (void)printBeerInfoWithHeader:(NSString *)header;

- (void)printBeerInfoWithHeader:(NSString *)header andFooter:(NSString *)footer;

- (void)printBeerInfoWithHeader:(NSString *)header
					  andFooter:(NSString *)footer
			  andNumberOfEmojis:(NSUInteger *)numberOfEmojis;

@end
