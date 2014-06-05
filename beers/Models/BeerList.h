//
//  BeerList.h
//  beers
//
//  Created by Xavier Hernandez on 04/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Beer.h"

@interface BeerList : NSObject

@property (nonatomic, readonly) NSUInteger count;

- (void)addBeer:(Beer *)beer;
- (void)removeBeer:(Beer *)beer;
- (NSArray *)allBeers;

@end
