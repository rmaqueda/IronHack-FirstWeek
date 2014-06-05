//
//  BeerHotel.h
//  beers
//
//  Created by Xavier Hernandez on 04/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface BeerHotel : NSObject

@property (nonatomic, readonly) NSMutableDictionary *rooms;
@property (nonatomic, readonly) NSUInteger count;

- (void)addPerson:(Person *)p toRoom:(NSString *)room;
- (Person *)whoSleepsAtRoom:(NSString *)room;
- (NSString *)numberOfOccupiedRooms;

@end
